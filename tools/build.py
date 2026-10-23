#!/usr/bin/env python3
"""Build the PMBOK 8 / PMP exam-prep deliverables from structured sources.

Usage: python3 tools/build.py {guide|bank|exams [N ...]|json|stats|check|all}

Reads source/ and writes the Markdown deliverables to the repository root, plus
build/exams.json for the exam simulator (see BUILDING.md).
"""
import glob
import hashlib
import json
import os
import random
import re
import subprocess
import sys
from collections import Counter, OrderedDict

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(REPO, 'source')
BUILD = os.path.join(REPO, 'build')
OUT = REPO
EXAM_DIR = os.path.join(OUT, '03_Demo_Exams')

LETTERS = 'ABCDEFGH'
DOMAIN_OF_PREFIX = {'PE': 'People', 'PR': 'Process', 'BE': 'Business Environment'}
TASK_NAMES = OrderedDict([
    ('PE1', 'Develop a common vision'),
    ('PE2', 'Manage conflicts'),
    ('PE3', 'Lead the project team'),
    ('PE4', 'Engage stakeholders'),
    ('PE5', 'Align stakeholder expectations'),
    ('PE6', 'Manage stakeholder expectations'),
    ('PE7', 'Help ensure knowledge transfer'),
    ('PE8', 'Plan and manage communication'),
    ('PR1', 'Develop an integrated project management plan and plan delivery'),
    ('PR2', 'Develop and manage project scope'),
    ('PR3', 'Help ensure value-based delivery'),
    ('PR4', 'Plan and manage resources'),
    ('PR5', 'Plan and manage procurement'),
    ('PR6', 'Plan and manage finance'),
    ('PR7', 'Plan and optimize quality of products/deliverables'),
    ('PR8', 'Plan and manage schedule'),
    ('PR9', 'Evaluate project status'),
    ('PR10', 'Manage project closure'),
    ('BE1', 'Define and establish project governance'),
    ('BE2', 'Plan and manage project compliance'),
    ('BE3', 'Manage and control changes'),
    ('BE4', 'Remove impediments and manage issues'),
    ('BE5', 'Plan and manage risk'),
    ('BE6', 'Continuous improvement'),
    ('BE7', 'Support organizational change'),
    ('BE8', 'Evaluate external business environment changes'),
])
TASK_TARGETS = {'PE1': 7, 'PE2': 8, 'PE3': 9, 'PE4': 8, 'PE5': 7, 'PE6': 7, 'PE7': 6, 'PE8': 7,
                'PR1': 8, 'PR2': 8, 'PR3': 8, 'PR4': 7, 'PR5': 7, 'PR6': 8, 'PR7': 7, 'PR8': 8,
                'PR9': 7, 'PR10': 6,
                'BE1': 6, 'BE2': 6, 'BE3': 6, 'BE4': 6, 'BE5': 7, 'BE6': 5, 'BE7': 6, 'BE8': 5}
DOMAIN_TARGETS = {'People': 59, 'Process': 74, 'Business Environment': 47}
TYPES = {'single', 'multi', 'match', 'fill'}
APPROACHES = {'predictive': 'Predictive', 'agile': 'Agile', 'hybrid': 'Hybrid'}
WORDNUM = {2: 'two', 3: 'three', 4: 'four', 5: 'five'}

OPT_RE = re.compile(r'^([A-H])\)\s+(.*\S)\s*$')
ITEM_RE = re.compile(r'^(\d{1,2})\)\s+(.*\S)\s*$')
LETTER_REF_RE = re.compile(r'\b(?:[Oo]ption|[Cc]hoice|[Aa]nswer)s?\s+(?:[A-H]\b)|\(([A-H])\)')


class ParseError(Exception):
    pass


# --------------------------------------------------------------------------- parsing

def parse_tags(tagline):
    q = {'type': 'single', 'task': None, 'domain': None, 'approach': None, 'flags': set(), 'topic': None}
    for raw in tagline.split('|'):
        t = raw.strip()
        if not t:
            continue
        low = t.lower()
        if low in TYPES:
            q['type'] = low
        elif low in APPROACHES:
            q['approach'] = APPROACHES[low]
        elif low == 'noshuffle':
            q['flags'].add('noshuffle')
        elif re.fullmatch(r'(PE|PR|BE)\d{1,2}', t):
            if t not in TASK_NAMES:
                raise ParseError('unknown task code %s' % t)
            q['task'] = t
            q['domain'] = DOMAIN_OF_PREFIX[t[:2]]
        else:
            q['topic'] = t
    return q


def parse_text(text, source):
    """Return a list of items: ('section', title) | ('q', qdict). Case info is stored on questions."""
    items = []
    lines = text.split('\n')
    cur = None          # question being built
    mode = None         # 'stem' | 'opts' | 'expl'
    case = None         # current case dict
    case_collect = False
    counter = 0

    def finish():
        nonlocal cur
        if cur is not None:
            validate(cur)
            items.append(('q', cur))
        cur = None

    for ln_no, line in enumerate(lines, 1):
        where = '%s:%d' % (source, ln_no)
        if line.startswith('%% SECTION '):
            finish()
            items.append(('section', line[len('%% SECTION '):].strip()))
            mode = None
            continue
        if line.startswith('%% CASE '):
            finish()
            counter += 1
            case = {'id': '%s#case%d' % (os.path.basename(source), counter),
                    'title': line[len('%% CASE '):].strip(), 'text': []}
            case_collect = True
            mode = None
            continue
        if line.strip() == '%% END CASE':
            finish()
            case = None
            case_collect = False
            mode = None
            continue
        if line.startswith('@@'):
            finish()
            if case is not None and case_collect:
                case['text'] = '\n'.join(case['text']).strip()
                case_collect = False
            try:
                cur = parse_tags(line[2:])
            except ParseError as e:
                raise ParseError('%s: %s' % (where, e))
            cur.update({'stem': [], 'options': OrderedDict(), 'items': OrderedDict(), 'answer_raw': None,
                        'expl': [], 'source': where, 'case': case})
            mode = 'stem'
            continue
        if case_collect:
            case['text'].append(line)
            continue
        if cur is None:
            if line.strip():
                # free text outside questions is ignored but reported
                if not line.lstrip().startswith('<!--'):
                    print('WARN %s: text outside question ignored: %s' % (where, line[:60]))
            continue
        if mode == 'expl':
            cur['expl'].append(line)
            continue
        m = OPT_RE.match(line)
        if m and mode in ('stem', 'opts'):
            cur['options'][m.group(1)] = m.group(2)
            mode = 'opts'
            continue
        m = ITEM_RE.match(line)
        if m and cur['type'] == 'match' and mode in ('stem', 'opts') and not cur['options']:
            cur['items'][m.group(1)] = m.group(2)
            continue
        if line.startswith('='):
            cur['answer_raw'] = line[1:].strip()
            mode = 'ans'
            continue
        if line.startswith('?'):
            cur['expl'].append(line[1:].strip())
            mode = 'expl'
            continue
        if mode == 'stem':
            cur['stem'].append(line)
            continue
        if line.strip():
            raise ParseError('%s: unexpected line in question: %r' % (where, line[:80]))
    finish()
    return items


def validate(q):
    where = q['source']
    q['stem'] = '\n'.join(q['stem']).strip()
    q['expl'] = '\n'.join(q['expl']).strip()
    if not q['stem']:
        raise ParseError('%s: empty stem' % where)
    if not q['expl']:
        raise ParseError('%s: missing explanation' % where)
    ans = q['answer_raw']
    if ans is None:
        raise ParseError('%s: missing answer line' % where)
    t = q['type']
    if t == 'single':
        if len(q['options']) < 3:
            raise ParseError('%s: single needs >=3 options' % where)
        if ans not in q['options']:
            raise ParseError('%s: answer %r not among options' % (where, ans))
        q['answer'] = [ans]
    elif t == 'multi':
        letters = [a.strip() for a in ans.split(',') if a.strip()]
        if len(letters) < 2 or any(a not in q['options'] for a in letters):
            raise ParseError('%s: bad multi answer %r' % (where, ans))
        q['answer'] = sorted(letters)
    elif t == 'match':
        pairs = OrderedDict()
        for part in ans.split(','):
            part = part.strip()
            m = re.fullmatch(r'(\d{1,2})\s*-\s*([A-H])', part)
            if not m:
                raise ParseError('%s: bad match pair %r' % (where, part))
            pairs[m.group(1)] = m.group(2)
        if set(pairs) != set(q['items']):
            raise ParseError('%s: match answer items %s != items %s' % (where, list(pairs), list(q['items'])))
        if any(v not in q['options'] for v in pairs.values()):
            raise ParseError('%s: match answer refers to missing option' % where)
        q['answer'] = pairs
    elif t == 'fill':
        if q['options']:
            raise ParseError('%s: fill question must not have options' % where)
        q['answer'] = ans
    if LETTER_REF_RE.search(q['expl']) and t != 'match':
        print('WARN %s: explanation may reference option letters: %s' % (where, LETTER_REF_RE.search(q['expl']).group(0)))


# --------------------------------------------------------------------------- shuffling

NUM_RE = re.compile(r'^\s*(-)?\s*(?:US)?[$€£]?\s*(-)?\s*(\d[\d,]*(?:\.\d+)?|\.\d+)\s*([%A-Za-z][A-Za-z %.]*)?\s*$')


def numeric_value(opt):
    m = NUM_RE.match(opt)
    if not m:
        return None
    try:
        v = float(m.group(3).replace(',', ''))
    except ValueError:
        return None
    if m.group(1) or m.group(2):
        v = -v
    unit = (m.group(4) or '').strip().lower()
    return v, unit


def seed_for(q):
    h = hashlib.md5((q['stem'] + '|' + q['expl'][:40]).encode('utf-8')).hexdigest()
    return int(h[:12], 16)


def shuffle_question(q):
    t = q['type']
    if 'noshuffle' in q['flags'] or t == 'fill':
        q['_fixed'] = True
        return q
    rng = random.Random(seed_for(q))
    if t in ('single', 'multi'):
        old = list(q['options'].items())
        idx = list(range(len(old)))
        nums = [numeric_value(text) for _, text in old]
        if all(n is not None for n in nums) and len({n[1] for n in nums}) == 1:
            idx.sort(key=lambda k: nums[k][0])
            q['_fixed'] = True
        else:
            rng.shuffle(idx)
        correct = {k for k, (L, _) in enumerate(old) if L in q['answer']}
        new_opts = OrderedDict()
        new_ans = []
        for pos, k in enumerate(idx):
            L = LETTERS[pos]
            new_opts[L] = old[k][1]
            if k in correct:
                new_ans.append(L)
        q['options'] = new_opts
        q['answer'] = sorted(new_ans)
    elif t == 'match':
        old = list(q['options'].items())
        idx = list(range(len(old)))
        rng.shuffle(idx)
        remap = {}
        new_opts = OrderedDict()
        for pos, k in enumerate(idx):
            remap[old[k][0]] = LETTERS[pos]
            new_opts[LETTERS[pos]] = old[k][1]
        q['options'] = new_opts
        q['answer'] = OrderedDict((i, remap[L]) for i, L in q['answer'].items())
    return q


# --------------------------------------------------------------------------- markdown rendering

def answer_text(q):
    t = q['type']
    if t == 'single':
        return q['answer'][0]
    if t == 'multi':
        return ', '.join(q['answer'])
    if t == 'match':
        return ', '.join('%s→%s' % (i, L) for i, L in q['answer'].items())
    return str(q['answer'])


def type_hint(q):
    t = q['type']
    if t == 'multi':
        n = len(q['answer'])
        if not re.search(r'\b(choose|select)\b', q['stem'], re.I):
            return '*(Choose %s.)*' % WORDNUM.get(n, str(n))
        return ''
    if t == 'match':
        return '*(Matching: pair every numbered item with one lettered option.)*'
    if t == 'fill':
        return '*(Fill in the blank.)*'
    return ''


def render_question_md(q, label):
    out = []
    stem = q['stem']
    hint = type_hint(q)
    first = stem.lstrip()[:1]
    if first in '|-*>#' or re.match(r'^\d+\.', stem.lstrip()):
        out.append('**%s**%s' % (label, (' ' + hint) if hint else ''))
        out.append('')
        out.append(stem)
    else:
        out.append('**%s** %s%s' % (label, stem, ('\n\n' + hint) if hint else ''))
    out.append('')
    if q['type'] in ('single', 'multi'):
        for L, text in q['options'].items():
            out.append('- **%s.** %s' % (L, text))
    elif q['type'] == 'match':
        items = list(q['items'].items())
        opts = list(q['options'].items())
        out.append('| Item | Option |')
        out.append('|---|---|')
        for r in range(max(len(items), len(opts))):
            left = '**%s.** %s' % items[r] if r < len(items) else ''
            right = '**%s.** %s' % opts[r] if r < len(opts) else ''
            out.append('| %s | %s |' % (left.replace('|', '\\|'), right.replace('|', '\\|')))
    elif q['type'] == 'fill':
        out.append('Answer: \\_\\_\\_\\_\\_\\_\\_\\_\\_\\_')
    out.append('')
    return '\n'.join(out)


def render_answer_md(q, label, meta=True):
    tags = []
    if meta:
        if q.get('domain'):
            tags.append(q['domain'])
        if q.get('task'):
            tags.append('%s %s' % (q['task'], TASK_NAMES[q['task']]))
        if q.get('approach'):
            tags.append(q['approach'])
    tagstr = (' · *%s*' % ' · '.join(tags)) if tags else ''
    lines = ['**%s — Answer: %s**%s' % (label, answer_text(q), tagstr), '']
    if q['type'] in ('single', 'multi'):
        correct = [('%s. %s' % (L, q['options'][L])) for L in q['answer']]
        lines.append('*Correct:* ' + ' / '.join(correct))
        lines.append('')
    elif q['type'] == 'match':
        pairs = ['%s. %s → %s' % (i, q['items'][i], q['options'][L]) for i, L in q['answer'].items()]
        lines.append('*Correct pairs:* ' + '; '.join(pairs))
        lines.append('')
    lines.append(q['expl'])
    lines.append('')
    return '\n'.join(lines)


def case_md(case, first, last):
    body = '\n'.join('> ' + ln if ln.strip() else '>' for ln in case['text'].split('\n'))
    return ('> #### Case Study — %s\n>\n%s\n>\n> *Questions %d–%d refer to this case.*\n' %
            (case['title'], body, first, last))


PAGEBREAK = '<div style="page-break-before: always;"></div>\n'


# --------------------------------------------------------------------------- loaders

def load_questions(path):
    with open(path, encoding='utf-8') as f:
        text = f.read()
    return parse_text(text, os.path.relpath(path, SRC))


# --------------------------------------------------------------------------- GUIDE

def build_guide():
    files = sorted(glob.glob(os.path.join(SRC, 'guide', '*.md')))
    if not files:
        print('no guide sources')
        return
    body = []
    answers = []
    total_q = 0
    toc = []
    for path in files:
        with open(path, encoding='utf-8') as f:
            text = f.read()
        if '%%QUESTIONS%%' in text:
            prose, qtext = text.split('%%QUESTIONS%%', 1)
        else:
            prose, qtext = text, ''
        m = re.search(r'^# (.+)$', prose, re.M)
        title = m.group(1).strip() if m else os.path.basename(path)
        cm = re.match(r'(Chapter|Appendix) (\w+)', title)
        chap = cm.group(2) if cm else None
        anchor = 'ch-%s' % chap.lower() if chap else re.sub(r'\W+', '-', title.lower())
        toc.append((title, anchor))
        body.append(PAGEBREAK)
        body.append('<a id="%s"></a>\n' % anchor)
        body.append(prose.rstrip() + '\n')
        if qtext.strip():
            items = parse_text(qtext, os.path.relpath(path, SRC))
            qs = [shuffle_question(it[1]) for it in items if it[0] == 'q']
            balance_letters(qs, 'guide-letters-%s' % chap)
            total_q += len(qs)
            body.append('\n## Chapter %s Review Questions\n' % chap)
            body.append('*Answer all questions first, then check the [answer key for Chapter %s](#ans-%s) in Appendix B.*\n'
                        % (chap, chap.lower()))
            ans_block = ['<a id="ans-%s"></a>\n' % chap.lower(), '### Chapter %s — %s\n' % (chap, title.split('—', 1)[-1].strip())]
            for i, q in enumerate(qs, 1):
                label = '%s.%d' % (chap, i)
                body.append(render_question_md(q, label))
                ans_block.append(render_answer_md(q, label, meta=False))
            answers.append('\n'.join(ans_block))
    head_path = os.path.join(SRC, 'guide_header.md')
    head = open(head_path, encoding='utf-8').read() if os.path.exists(head_path) else '# Study Guide\n'
    toc_md = ['## Contents', '']
    for title, anchor in toc:
        toc_md.append('- [%s](#%s)' % (title, anchor))
    toc_md.append('- [Appendix B — Answer Keys for the Chapter Review Questions](#appendix-b)')
    doc = [head.rstrip() + '\n', '\n'.join(toc_md) + '\n']
    doc.extend(body)
    doc.append(PAGEBREAK)
    doc.append('<a id="appendix-b"></a>\n')
    doc.append('# Appendix B — Answer Keys for the Chapter Review Questions\n')
    doc.append('Each answer includes a short explanation. If you missed a question, re-read the related section before moving on.\n')
    doc.extend(a + '\n' for a in answers)
    os.makedirs(OUT, exist_ok=True)
    out = os.path.join(OUT, '01_PMBOK8_Study_Guide.md')
    with open(out, 'w', encoding='utf-8') as f:
        f.write('\n'.join(doc))
    words = len(re.findall(r'\w+', '\n'.join(doc)))
    print('guide: %d chapters, %d review questions, ~%d words -> %s' % (len(files), total_q, words, out))


# --------------------------------------------------------------------------- BANK

def build_bank():
    files = sorted(glob.glob(os.path.join(SRC, 'bank', '*.q')))
    if not files:
        print('no bank sources')
        return
    sections = []   # (title, [q])
    for path in files:
        for kind, val in load_questions(path):
            if kind == 'section':
                sections.append((val, []))
            else:
                if not sections:
                    sections.append(('Questions', []))
                sections[-1][1].append(shuffle_question(val))
    balance_letters([q for _, qs in sections for q in qs], 'bank-letters')
    head_path = os.path.join(SRC, 'bank_header.md')
    head = open(head_path, encoding='utf-8').read() if os.path.exists(head_path) else '# Question Bank\n'
    doc = [head.rstrip() + '\n']
    toc = ['## Contents', '']
    n = 0
    ranges = []
    for title, qs in sections:
        ranges.append((title, n + 1, n + len(qs)))
        n += len(qs)
    for i, (title, a, b) in enumerate(ranges, 1):
        toc.append('- [Part %d — %s (Q%d–Q%d)](#part-%d) · [answers](#part-%d-answers)' % (i, title, a, b, i, i))
    doc.append('\n'.join(toc) + '\n')
    n = 0
    for i, (title, qs) in enumerate(sections, 1):
        doc.append(PAGEBREAK)
        doc.append('<a id="part-%d"></a>\n\n## Part %d — %s\n' % (i, i, title))
        start = n
        for q in qs:
            n += 1
            doc.append(render_question_md(q, 'Q%d.' % n if False else '%d.' % n))
        doc.append('\n<a id="part-%d-answers"></a>\n\n### Answers — Part %d (%s)\n' % (i, i, title))
        m = start
        for q in qs:
            m += 1
            doc.append(render_answer_md(q, 'Q%d' % m, meta=False))
    out = os.path.join(OUT, '02_PMBOK8_Comprehensive_Question_Bank.md')
    with open(out, 'w', encoding='utf-8') as f:
        f.write('\n'.join(doc))
    tc = Counter(q['type'] for _, qs in sections for q in qs)
    ac = Counter(a for _, qs in sections for q in qs if q['type'] == 'single' for a in q['answer'])
    print('bank: %d questions in %d parts, types=%s, single-answer letters=%s -> %s'
          % (n, len(sections), dict(tc), dict(sorted(ac.items())), out))


# --------------------------------------------------------------------------- EXAMS

def exam_units(n):
    files = sorted(glob.glob(os.path.join(SRC, 'exams', 'e%02d_*.q' % n)))
    qs = []
    for path in files:
        for kind, val in load_questions(path):
            if kind == 'q':
                qs.append(shuffle_question(val))
    units = []
    case_units = {}
    for q in qs:
        if q['case'] is not None:
            cid = q['case']['id']
            if cid not in case_units:
                case_units[cid] = []
                units.append(case_units[cid])
            case_units[cid].append(q)
        else:
            units.append([q])
    rng = random.Random('pmp-demo-exam-%d' % n)
    rng.shuffle(units)
    flat = [q for u in units for q in u]
    balance_letters(flat, 'pmp-demo-letters-%d' % n)
    for i, q in enumerate(flat, 1):
        q['num'] = i
    return flat


def balance_letters(qs, seed):
    """Swap the correct option of freely shuffled single-answer questions into a target position
    so that the answer letters A-D are (almost) equally frequent across the exam."""
    rng = random.Random(seed)
    singles = [q for q in qs if q['type'] == 'single' and len(q['options']) == 4]
    fixed = Counter(q['answer'][0] for q in singles if q.get('_fixed'))
    free = [q for q in singles if not q.get('_fixed')]
    base, extra = divmod(len(singles), 4)
    order = list(LETTERS[:4])
    rng.shuffle(order)
    target = {L: base + (1 if i < extra else 0) for i, L in enumerate(order)}
    pool = []
    for L in LETTERS[:4]:
        pool += [L] * max(0, target[L] - fixed[L])
    while len(pool) < len(free):
        pool.append(rng.choice(LETTERS[:4]))
    rng.shuffle(pool)
    for q, L in zip(free, pool):
        cur = q['answer'][0]
        if cur == L:
            continue
        opts = q['options']
        opts[cur], opts[L] = opts[L], opts[cur]
        q['answer'] = [L]


def exam_stats(n, qs, verbose=True):
    dom = Counter(q['domain'] for q in qs)
    task = Counter(q['task'] for q in qs)
    appr = Counter(q['approach'] for q in qs)
    typ = Counter(q['type'] for q in qs)
    letters = Counter(a for q in qs if q['type'] == 'single' for a in q['answer'])
    cases = len({q['case']['id'] for q in qs if q['case']})
    if verbose:
        print('exam %02d: %d questions | domains %s | approach %s | types %s | cases %d | letters %s'
              % (n, len(qs), dict(dom), dict(appr), dict(typ), cases, dict(sorted(letters.items()))))
        diffs = []
        for t, target in TASK_TARGETS.items():
            if task.get(t, 0) != target:
                diffs.append('%s:%d/%d' % (t, task.get(t, 0), target))
        if diffs:
            print('   task deviations (have/target): ' + ' '.join(diffs))
        missing = [q['source'] for q in qs if not q['task'] or not q['approach']]
        if missing:
            print('   untagged questions: %s' % missing[:10])
    return dom, task


def render_exam_md(n, qs):
    total = len(qs)
    doc = []
    doc.append('# PMP® Demo Exam %02d\n' % n)
    doc.append('### Based on the *PMBOK® Guide – Eighth Edition* and the PMP® Examination Content Outline (July 2026)\n')
    doc.append('| Item | Real exam | This demo exam |\n|---|---|---|\n'
               '| Questions | 180 (170 scored + 10 unscored pretest) | %d (all scored) |\n'
               '| Time | 240 minutes | 240 minutes |\n'
               '| Breaks | Two optional 10-minute breaks | After Q60 and after Q120 |\n'
               '| Domains | People 33%% · Process 41%% · Business Environment 26%% | Same weighting |\n'
               '| Approaches | ~40%% predictive, ~60%% agile/hybrid | Same mix |\n' % total)
    doc.append('**How to take this exam:** set a timer for 240 minutes, sit somewhere quiet, and answer every '
               'question without notes. Write your answers on paper (question number + letter). There is no '
               'penalty for guessing, so never leave a question blank. Pace yourself at about **80 seconds per '
               'question** — you should be near Q60 at 80 minutes and Q120 at 160 minutes. Only after finishing, '
               'check the [Answer Key](#answer-key) and read the [explanations](#explanations), then complete the '
               '[score analysis](#score-analysis).\n')
    doc.append('*Question types:* most questions have one best answer. Multiple-response questions say how many '
               'options to choose. Matching questions ask you to pair items with options. Fill-in-the-blank '
               'questions need a number. Case-study sets share one scenario across several questions.\n')
    doc.append('*On screen:* the same exam runs in the PMP Exam Simulator (`04_PMP_Exam_Simulator.html`), which times '
               'it, scores it by domain and task, and then gives you a PDF with the correct answer and the explanation '
               'for every question you missed.\n')
    sec_bounds = [(1, 60), (61, 120), (121, total)]
    shown_cases = set()
    for s, (a, b) in enumerate(sec_bounds, 1):
        doc.append(PAGEBREAK)
        doc.append('## Section %d — Questions %d to %d\n' % (s, a, b))
        for q in qs:
            if not (a <= q['num'] <= b):
                continue
            if q['case'] and q['case']['id'] not in shown_cases:
                shown_cases.add(q['case']['id'])
                nums = [x['num'] for x in qs if x['case'] and x['case']['id'] == q['case']['id']]
                doc.append(case_md(q['case'], min(nums), max(nums)))
            label = 'Question %d.' % q['num']
            if q['case']:
                label = 'Question %d.' % q['num']
                q_md = render_question_md(q, label)
                q_md = q_md.replace('**%s**' % label, '**%s** *(Case study: %s)*' % (label, q['case']['title']), 1)
                doc.append(q_md)
            else:
                doc.append(render_question_md(q, label))
        if s < 3:
            doc.append('\n> ☕ **Optional 10-minute break.** In the real exam, once you start a break you cannot '
                       'return to the questions of the previous section, so review flagged questions before you go.\n')
    doc.append(PAGEBREAK)
    doc.append('<a id="answer-key"></a>\n\n## Answer Key\n')
    doc.append('| Q | Answer | Domain | Task | Approach | Q | Answer | Domain | Task | Approach |')
    doc.append('|---|---|---|---|---|---|---|---|---|---|')
    half = (total + 1) // 2
    abbrev = {'People': 'People', 'Process': 'Process', 'Business Environment': 'Bus. Env.'}
    for r in range(half):
        cells = []
        for q in (qs[r], qs[r + half] if r + half < total else None):
            if q is None:
                cells.extend([''] * 5)
            else:
                cells.extend([str(q['num']), '**%s**' % answer_text(q), abbrev.get(q['domain'], ''),
                              q['task'] or '', q['approach'] or ''])
        doc.append('| ' + ' | '.join(cells) + ' |')
    doc.append('')
    doc.append(PAGEBREAK)
    doc.append('<a id="explanations"></a>\n\n## Detailed Explanations\n')
    for q in qs:
        doc.append(render_answer_md(q, 'Q%d' % q['num']))
    doc.append(PAGEBREAK)
    doc.append('<a id="score-analysis"></a>\n\n## Score Analysis\n')
    doc.append('Count your correct answers in each domain and task, then compute the percentage. A multiple-response '
               'or matching question counts as correct only if **every** part is right (as on the real exam).\n')
    dom = Counter(q['domain'] for q in qs)
    doc.append('| Domain | Questions | Your correct | % |\n|---|---|---|---|')
    for d in ('People', 'Process', 'Business Environment'):
        doc.append('| %s | %d | | |' % (d, dom.get(d, 0)))
    doc.append('| **Total** | **%d** | | |\n' % total)
    doc.append('| Task | Questions (numbers) |\n|---|---|')
    for t, name in TASK_NAMES.items():
        nums = [str(q['num']) for q in qs if q['task'] == t]
        doc.append('| %s — %s | %d (%s) |' % (t, name, len(nums), ', '.join(nums)))
    doc.append('')
    doc.append('**How to read your result** (self-assessment guide — PMI does not publish a fixed pass mark; the '
               'real exam reports *Above Target / Target / Below Target / Needs Improvement* per domain):\n')
    doc.append('| Your % | Indicative rating | What to do |\n|---|---|---|\n'
               '| 80% or more | Above Target | You are ready. Keep practising timing. |\n'
               '| 70–79% | Target | Likely pass. Review every missed question and its domain. |\n'
               '| 60–69% | Below Target | Re-study the weak domains in the Study Guide before the next exam. |\n'
               '| under 60% | Needs Improvement | Go back to the Study Guide chapters and the Question Bank first. |\n')
    return '\n'.join(doc)


def build_exams(which=None):
    os.makedirs(EXAM_DIR, exist_ok=True)
    nums = which or sorted({int(re.search(r'e(\d\d)_', os.path.basename(p)).group(1))
                            for p in glob.glob(os.path.join(SRC, 'exams', 'e*_*.q'))})
    all_data = {}
    for n in nums:
        qs = exam_units(n)
        if not qs:
            continue
        exam_stats(n, qs)
        md = render_exam_md(n, qs)
        out = os.path.join(EXAM_DIR, 'PMP_Demo_Exam_%02d.md' % n)
        with open(out, 'w', encoding='utf-8') as f:
            f.write(md)
        all_data[n] = qs
    return all_data


# --------------------------------------------------------------------------- JSON for simulator

def q_to_json(q):
    d = {'n': q.get('num'), 'type': q['type'], 'stem': q['stem'], 'expl': q['expl'],
         'domain': q.get('domain'), 'task': q.get('task'), 'approach': q.get('approach')}
    if q['type'] in ('single', 'multi'):
        d['options'] = list(q['options'].values())
        d['answer'] = [LETTERS.index(a) for a in q['answer']]
    elif q['type'] == 'match':
        d['items'] = list(q['items'].values())
        d['options'] = list(q['options'].values())
        d['answer'] = [LETTERS.index(q['answer'][k]) for k in q['items']]
    else:
        d['answer'] = q['answer']
    if q['case']:
        d['case'] = q['case']['id']
    return d


def export_json():
    data = {'exams': [], 'cases': {}, 'tasks': TASK_NAMES}
    nums = sorted({int(re.search(r'e(\d\d)_', os.path.basename(p)).group(1))
                   for p in glob.glob(os.path.join(SRC, 'exams', 'e*_*.q'))})
    for n in nums:
        qs = exam_units(n)
        for q in qs:
            if q['case']:
                data['cases'][q['case']['id']] = {'title': q['case']['title'], 'text': q['case']['text']}
        data['exams'].append({'id': n, 'title': 'Demo Exam %02d' % n, 'questions': [q_to_json(q) for q in qs]})
    return data


# --------------------------------------------------------------------------- main

def cmd_check():
    """Parse every source and report problems without writing outputs."""
    ok = True
    for path in sorted(glob.glob(os.path.join(SRC, '**', '*.*'), recursive=True)):
        if not (path.endswith('.q') or path.endswith('.md')):
            continue
        try:
            text = open(path, encoding='utf-8').read()
            if path.endswith('.md'):
                if '%%QUESTIONS%%' not in text:
                    continue
                text = text.split('%%QUESTIONS%%', 1)[1]
            items = parse_text(text, os.path.relpath(path, SRC))
            print('%-40s %3d questions' % (os.path.relpath(path, SRC), sum(1 for k, _ in items if k == 'q')))
        except ParseError as e:
            ok = False
            print('ERROR', e)
    return ok


if __name__ == '__main__':
    cmd = sys.argv[1] if len(sys.argv) > 1 else 'all'
    if cmd == 'check':
        sys.exit(0 if cmd_check() else 1)
    if cmd in ('guide', 'all'):
        build_guide()
    if cmd in ('bank', 'all'):
        build_bank()
    if cmd in ('exams', 'all'):
        which = [int(x) for x in sys.argv[2:]] or None
        build_exams(which)
    if cmd in ('json', 'all'):
        data = export_json()
        os.makedirs(BUILD, exist_ok=True)
        with open(os.path.join(BUILD, 'exams.json'), 'w', encoding='utf-8') as f:
            json.dump(data, f, ensure_ascii=False)
        print('json: %d exams' % len(data['exams']))
    if cmd == 'stats':
        for n in range(1, 11):
            qs = exam_units(n)
            if qs:
                exam_stats(n, qs)
