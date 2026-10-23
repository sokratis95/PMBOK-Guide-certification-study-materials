#!/usr/bin/env python3
"""List single-answer questions whose correct option is the shortest, with the correct text."""
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import build
for p in sys.argv[1:]:
    for k, q in build.parse_text(open(p).read(), p):
        if k != 'q' or q['type'] != 'single': continue
        a = q['answer'][0]
        lens = {L: len(t) for L, t in q['options'].items()}
        if lens[a] <= min(lens.values()) and max(lens.values()) > 30:
            others = sorted(v for L, v in lens.items() if L != a)
            print('%-48s | %3d %s | %s' % (q['stem'].split('\n')[0][:48], lens[a], others, q['options'][a]))
