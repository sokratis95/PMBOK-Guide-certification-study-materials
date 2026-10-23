#!/usr/bin/env python3
"""Replace whole question blocks in .q source files.
Patch format (one or more entries):
### exams/e05_be.q :: <prefix of the old stem>
@@ BE3 | Predictive
<new stem>
A) ...
= A
? ...
The old block runs from its '@@' line up to (not including) the next '@@' or '%%' line, or EOF.
Paths are relative to source/.
Usage: replace_q.py PATCHFILE"""
import sys, os, re
SRC = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'source')
entries = []
cur = None
for line in open(sys.argv[1]).read().split('\n'):
    m = re.match(r'^### (\S+) :: (.+)$', line)
    if m:
        cur = [m.group(1), m.group(2).strip(), []]
        entries.append(cur)
    elif cur is not None:
        cur[2].append(line)
problems = 0
files = {}
for rel, prefix, body in entries:
    path = os.path.join(SRC, rel)
    lines = files.setdefault(path, open(path).read().split('\n'))
    idx = None
    for i, l in enumerate(lines):
        if l.startswith('@@') and i + 1 < len(lines) and lines[i + 1].startswith(prefix):
            idx = i; break
    if idx is None:
        print('NOT FOUND:', rel, '::', prefix); problems += 1; continue
    end = idx + 1
    while end < len(lines) and not (lines[end].startswith('@@') or lines[end].startswith('%%')):
        end += 1
    while body and body[-1].strip() == '':
        body.pop()
    if not body or not body[0].startswith('@@'):
        print('BAD BODY:', rel, '::', prefix); problems += 1; continue
    new = body + ([''] if end < len(lines) and lines[end].startswith('@@') else [])
    lines[idx:end] = new
for path, lines in files.items():
    open(path, 'w').write('\n'.join(lines))
print('replaced %d blocks, %d problems' % (len(entries) - problems, problems))
