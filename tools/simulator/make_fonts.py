"""Subset Inter (OFL) for the in-page PDF generator and convert CFF -> glyf TTF (jsPDF needs TrueType).

Writes tools/simulator/pdf_fonts.json (committed, so this only needs to run when the
character set changes). Needs fontTools and the Inter OTF files; set INTER_DIR if they
are not in /usr/share/fonts/opentype/inter/.
"""
import base64, io, json, os
from fontTools.ttLib import TTFont, newTable
from fontTools import subset
from fontTools.pens.cu2quPen import Cu2QuPen
from fontTools.pens.ttGlyphPen import TTGlyphPen

SRC = os.environ.get('INTER_DIR', '/usr/share/fonts/opentype/inter/')
HERE = os.path.dirname(os.path.abspath(__file__))
DEBUG_DIR = os.path.join(os.path.dirname(os.path.dirname(HERE)), 'build', 'fonts')
STYLES = {'regular': 'Inter-Regular.otf', 'bold': 'Inter-SemiBold.otf', 'italic': 'Inter-Italic.otf'}
WANT = set(range(0x20, 0x7F)) | set(range(0xA0, 0x100)) | set(range(0x2010, 0x2028)) | {
    0x2030, 0x2032, 0x2033, 0x2039, 0x203A, 0x20AC, 0x2122, 0x2190, 0x2191, 0x2192, 0x2193,
    0x2212, 0x2248, 0x2260, 0x2264, 0x2265, 0x221A, 0x221E, 0x2211, 0x0394, 0x03A3, 0x03C3, 0x03BC,
    0x2713, 0x2714, 0x2715, 0x2717, 0x2718, 0x25CF, 0x25CB, 0x25A0, 0x25B2, 0x25BC, 0x2022}

def to_ttf(font):
    gs = font.getGlyphSet()
    order = font.getGlyphOrder()
    glyphs = {}
    for name in order:
        pen = TTGlyphPen(gs)
        gs[name].draw(Cu2QuPen(pen, 1.0, reverse_direction=True))
        glyphs[name] = pen.glyph()
    font['loca'] = newTable('loca')
    font['glyf'] = glyf = newTable('glyf')
    glyf.glyphOrder = order
    glyf.glyphs = glyphs
    del font['CFF ']
    if 'VORG' in font:
        del font['VORG']
    glyf.compile(font)
    hmtx = font['hmtx']
    for name, g in glyf.glyphs.items():
        if hasattr(g, 'xMin'):
            hmtx[name] = (hmtx[name][0], g.xMin)
    maxp = newTable('maxp')
    maxp.tableVersion = 0x00010000
    for f in ('maxZones',): setattr(maxp, f, 1)
    for f in ('maxTwilightPoints', 'maxStorage', 'maxFunctionDefs', 'maxInstructionDefs',
              'maxStackElements', 'maxSizeOfInstructions'):
        setattr(maxp, f, 0)
    maxp.maxComponentElements = max([len(getattr(g, 'components', []) or []) for g in glyf.glyphs.values()] + [0])
    font['maxp'] = maxp
    post = font['post']
    post.formatType = 3.0
    post.extraNames = []
    post.mapping = {}
    font.sfntVersion = '\x00\x01\x00\x00'

out = {}
common = None
for key, fn in STYLES.items():
    font = TTFont(os.path.join(SRC, fn))
    cmap = font.getBestCmap()
    have = {cp for cp in WANT if cp in cmap}
    missing = sorted(WANT - have)
    opts = subset.Options()
    opts.layout_features = []
    opts.drop_tables += ['GSUB', 'GPOS', 'GDEF', 'STAT', 'BASE', 'JSTF', 'MATH', 'kern', 'DSIG', 'meta', 'vhea', 'vmtx']
    opts.name_IDs = [0, 1, 2, 3, 4, 5, 6, 13, 14]
    opts.notdef_outline = True
    opts.glyph_names = False
    opts.hinting = False
    opts.desubroutinize = True
    sub = subset.Subsetter(opts)
    sub.populate(unicodes=sorted(have))
    sub.subset(font)
    to_ttf(font)
    buf = io.BytesIO()
    font.save(buf)
    data = buf.getvalue()
    out[key] = base64.b64encode(data).decode('ascii')
    common = have if common is None else common & have
    print(key, len(data), 'bytes; missing:', ' '.join('%04X' % c for c in missing))
    os.makedirs(DEBUG_DIR, exist_ok=True)
    open(os.path.join(DEBUG_DIR, 'Inter-%s-subset.ttf' % key), 'wb').write(data)
out['chars'] = ''.join(chr(c) for c in sorted(common))
json.dump(out, open(os.path.join(HERE, 'pdf_fonts.json'), 'w'))
print('chars', len(out['chars']))
