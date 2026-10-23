#!/usr/bin/env python3
"""Answer-length bias for the study guide's end-of-chapter questions (text after %%QUESTIONS%%)."""
import sys, os, glob
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import build
SRC = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'source', 'guide')
tot = lon = sho = 0
verbose = '-v' in sys.argv
for path in sorted(glob.glob(os.path.join(SRC, '*.md'))):
    txt = open(path).read()
    if '%%QUESTIONS%%' not in txt: continue
    qtxt = txt.split('%%QUESTIONS%%', 1)[1]
    n = l = s = 0
    for k, q in build.parse_text(qtxt, path):
        if k != 'q' or q['type'] != 'single': continue
        c = q['options'][q['answer'][0]]
        others = [t for L, t in q['options'].items() if L != q['answer'][0]]
        n += 1
        isl = len(c) >= max(len(t) for t in others); iss = len(c) <= min(len(t) for t in others)
        l += isl; s += iss
        if verbose and isl:
            print('   L %s | %3d %s | %s' % (os.path.basename(path)[:12], len(c), sorted(len(t) for t in others), q['stem'][:60]))
    tot += n; lon += l; sho += s
    print('%-28s single %3d  longest %3d (%3.0f%%)  shortest %3d (%3.0f%%)' % (os.path.basename(path), n, l, 100*l/max(n,1), s, 100*s/max(n,1)))
print('TOTAL single %d longest %d (%.0f%%) shortest %d (%.0f%%)' % (tot, lon, 100*lon/tot, sho, 100*sho/tot))
