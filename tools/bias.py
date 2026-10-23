#!/usr/bin/env python3
"""Blueprint and answer-length bias report for question files. Usage: bias.py FILE.q [...]"""
import sys, glob, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import build
from collections import Counter
paths = sys.argv[1:]
rows = []
appr = Counter(); dom = Counter(); task = Counter(); typ = Counter()
for p in paths:
    for k, q in build.parse_text(open(p).read(), p):
        if k != 'q': continue
        appr[q['approach']] += 1; dom[q['domain']] += 1; task[q['task']] += 1; typ[q['type']] += 1
        if q['type'] != 'single': continue
        c = q['options'][q['answer'][0]]
        others = [t for L, t in q['options'].items() if L != q['answer'][0]]
        rows.append((len(c) / max(len(t) for t in others), len(c) >= max(len(t) for t in others), q['stem'][:50], len(c) <= min(len(t) for t in others), len(c) / min(len(t) for t in others)))
n = len(rows)
print('questions:', sum(dom.values()), dict(dom), dict(appr), dict(typ))
print('tasks:', dict(sorted(task.items(), key=lambda x: (str(x[0])[:2], int(str(x[0])[2:]) if x[0] else 0))))
if n:
    print('single: %d | longest-is-correct %d (%.0f%%) | shortest-is-correct %d (%.0f%%) | ratio>1.3: %d | short-ratio<0.75: %d' % (
        n, sum(r[1] for r in rows), 100 * sum(r[1] for r in rows) / n,
        sum(r[3] for r in rows), 100 * sum(r[3] for r in rows) / n,
        sum(1 for r in rows if r[0] > 1.3), sum(1 for r in rows if r[4] < 0.75)))
    for r in rows:
        if r[0] > 1.3: print('   %.2f  %s' % (r[0], r[2]))
