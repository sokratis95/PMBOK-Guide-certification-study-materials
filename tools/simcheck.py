#!/usr/bin/env python3
"""Flag near-duplicate questions between exam source files.
Usage: simcheck.py [--min 0.30] TARGET.q [...] -- REFERENCE.q [...]
Compares every question in the targets against all questions in the references
(and against each other) using TF-IDF cosine similarity on stem + correct answer."""
import sys, os, re, math, glob
from collections import Counter
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import build

STOP = set('''a an the of to in on for and or is are be by with as at that this what which who how should
it its from not than then their they them was were will would can could do does did has have had
project team manager most best first next following two choose following'''.split())

def toks(s):
    return [w for w in re.findall(r"[a-z][a-z\-']+", s.lower()) if w not in STOP and len(w) > 2]

def load(paths):
    out = []
    for p in paths:
        for k, q in build.parse_text(open(p).read(), p):
            if k != 'q':
                continue
            corr = ''
            if q['type'] in ('single', 'multi'):
                corr = ' '.join(q['options'][L] for L in q['answer'])
            out.append((os.path.basename(p), q['task'], q['stem'], toks(q['stem']) + toks(corr)))
    return out

args = sys.argv[1:]
thr = 0.30
if args and args[0] == '--min':
    thr = float(args[1]); args = args[2:]
sep = args.index('--') if '--' in args else len(args)
targets, refs = args[:sep], args[sep + 1:]
T = load(targets); R = load(refs)
docs = T + R
df = Counter()
for d in docs:
    df.update(set(d[3]))
N = len(docs)
def vec(t):
    c = Counter(t)
    v = {w: (1 + math.log(n)) * math.log(N / df[w]) for w, n in c.items()}
    norm = math.sqrt(sum(x * x for x in v.values())) or 1
    return {w: x / norm for w, x in v.items()}
TV = [vec(d[3]) for d in T]; RV = [vec(d[3]) for d in R]
def cos(a, b):
    if len(a) > len(b): a, b = b, a
    return sum(x * b.get(w, 0) for w, x in a.items())
hits = []
for i, (d, v) in enumerate(zip(T, TV)):
    for j, (e, u) in enumerate(zip(R, RV)):
        s = cos(v, u)
        if s >= thr: hits.append((s, d, e))
    for j in range(i + 1, len(T)):
        s = cos(v, TV[j])
        if s >= thr: hits.append((s, d, T[j]))
hits.sort(key=lambda h: -h[0])
for s, d, e in hits:
    print('%.2f  %s %s | %s' % (s, d[0], d[1], d[2][:110]))
    print('      %s %s | %s' % (e[0], e[1], e[2][:110]))
print(len(hits), 'pairs >=', thr)
