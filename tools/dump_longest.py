#!/usr/bin/env python3
"""Dump questions whose correct (source) option is the longest, with option lengths. Args: files (relative to source/)."""
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import build
SRC = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'source')
for rel in sys.argv[1:]:
    txt = open(os.path.join(SRC, rel)).read()
    if '%%QUESTIONS%%' in txt: txt = txt.split('%%QUESTIONS%%', 1)[1]
    for k, q in build.parse_text(txt, rel):
        if k != 'q' or q['type'] != 'single': continue
        a = q['answer'][0]; c = q['options'][a]
        others = [t for L, t in q['options'].items() if L != a]
        if len(c) < max(len(t) for t in others): continue
        if os.environ.get("STRICT") and (len(c) == max(len(t) for t in others) or len(c) <= 30): continue
        print('### %s :: %s' % (rel, q['stem'][:60]))
        for L, t in q['options'].items():
            print('  %s%s) [%d] %s' % ('*' if L == a else ' ', L, len(t), t))
