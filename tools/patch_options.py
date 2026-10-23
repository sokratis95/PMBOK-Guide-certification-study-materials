#!/usr/bin/env python3
"""Apply option patches to question source files.

Patch format (one or more entries):
### <file relative to source/> :: <stem prefix>
A) ...
B) ...
= A        (optional; replaces the answer line)
"""
import re, sys, os
SRC = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'source')
OPT = re.compile(r'^[A-H]\) ')

def apply(patch_path):
    entries = []
    cur = None
    for line in open(patch_path, encoding='utf-8').read().split('\n'):
        if line.startswith('### '):
            f, prefix = line[4:].split(' :: ', 1)
            cur = {'file': f.strip(), 'prefix': prefix.strip(), 'opts': [], 'ans': None}
            entries.append(cur)
        elif cur is not None and OPT.match(line):
            cur['opts'].append(line.rstrip())
        elif cur is not None and line.startswith('= '):
            cur['ans'] = line.rstrip()
    by_file = {}
    for e in entries:
        by_file.setdefault(e['file'], []).append(e)
    bad = 0
    for f, es in by_file.items():
        path = os.path.join(SRC, f)
        lines = open(path, encoding='utf-8').read().split('\n')
        for e in es:
            # locate question whose first stem line starts with prefix
            idx = None
            for i, ln in enumerate(lines):
                if ln.startswith('@@') and i + 1 < len(lines) and lines[i + 1].strip().startswith(e['prefix']):
                    idx = i
                    break
            if idx is None:
                print('NOT FOUND:', f, '::', e['prefix']); bad += 1; continue
            # find option block and answer line
            j = idx + 1
            while j < len(lines) and not OPT.match(lines[j]):
                j += 1
            k = j
            while k < len(lines) and OPT.match(lines[k]):
                k += 1
            if j >= len(lines) or k == j:
                print('NO OPTIONS:', f, '::', e['prefix']); bad += 1; continue
            if len(e['opts']) < k - j:
                # partial patch: replace only the given letters
                given = {o[0]: o for o in e['opts']}
                for idx in range(j, k):
                    if lines[idx][0] in given:
                        lines[idx] = given[lines[idx][0]]
                e['opts'] = lines[j:k]
            else:
                if len(e['opts']) != k - j:
                    print('WARN option count changed %d -> %d: %s' % (k - j, len(e['opts']), e['prefix']))
                lines[j:k] = e['opts']
            if e['ans']:
                a = j + len(e['opts'])
                if lines[a].startswith('='):
                    lines[a] = e['ans']
        open(path, 'w', encoding='utf-8').write('\n'.join(lines))
    print('applied %d entries, %d problems' % (len(entries) - bad, bad))

if __name__ == '__main__':
    apply(sys.argv[1])
