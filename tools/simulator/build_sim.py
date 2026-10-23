"""Inject the exam data into the simulator template.

Writes the standalone offline page (04_PMP_Exam_Simulator.html at the repository
root) and, in build/, the claude.ai Artifact version without a document skeleton.
Run `python3 tools/build.py json` (or `all`) first to produce build/exams.json.
Usage: python3 tools/simulator/build_sim.py [--no-offline]
"""
import json, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(os.path.dirname(HERE))
OUT = os.path.join(REPO, '04_PMP_Exam_Simulator.html')
DATA = os.path.join(REPO, 'build', 'exams.json')
if not os.path.exists(DATA):
    sys.exit('build/exams.json not found: run `python3 tools/build.py json` first')

data = json.load(open(DATA, encoding='utf-8'))
js = json.dumps(data, ensure_ascii=False, separators=(',', ':'))
# '<' only occurs inside JSON strings, so a \u escape is safe and keeps the
# parser from ever seeing '</script' or '<!--' inside the data block.
js = js.replace('<', '\\u003c').replace('\u2028', '\\u2028').replace('\u2029', '\\u2029')

tpl = open(os.path.join(HERE, 'template.html'), encoding='utf-8').read()
for ph in ('__PMP_DATA__', '__PDF_FONTS__', '__JSPDF__', '<!--BODY-->'):
    assert tpl.count(ph) == 1, ph
# jsPDF 3.0.3 (MIT, licence header kept) and the Inter subsets made by make_fonts.py
jspdf = open(os.path.join(HERE, 'vendor', 'jspdf.umd.min.js'), encoding='utf-8').read()
jspdf = '\n'.join(l for l in jspdf.splitlines() if not l.startswith('//# sourceMappingURL'))
assert '</script' not in jspdf.lower() and '<!--' not in jspdf
fonts = open(os.path.join(HERE, 'pdf_fonts.json'), encoding='utf-8').read()
fonts = fonts.replace('<', '\\u003c')
page = tpl.replace('__JSPDF__', jspdf).replace('__PDF_FONTS__', fonts).replace('__PMP_DATA__', js)

art = os.path.join(REPO, 'build', 'pmp_exam_simulator_artifact.html')
open(art, 'w', encoding='utf-8').write(page.replace('<!--BODY-->\n', ''))

head, body = page.split('<!--BODY-->')
offline = ('<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
           '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
           + head.strip() + '\n</head>\n<body>\n' + body.strip() + '\n</body>\n</html>\n')
if '--no-offline' not in sys.argv:
    open(OUT, 'w', encoding='utf-8').write(offline)
print('artifact', os.path.getsize(art), 'offline', len(offline.encode('utf-8')))
