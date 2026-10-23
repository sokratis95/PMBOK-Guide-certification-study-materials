# Source files

`tools/build.py` generates every document in the study package from the files in this folder (see [BUILDING.md](../BUILDING.md)). To change something, edit these files and rebuild. Never edit the generated Markdown at the repository root.

| Source | Generated file |
|---|---|
| `guide_header.md` and `guide/NN_*.md` | `01_PMBOK8_Study_Guide.md`. Each chapter file holds the chapter text, then a line `%%QUESTIONS%%`, then the chapter's review questions. The answers are collected into Appendix B. |
| `bank_header.md` and `bank/NN_*.q` | `02_PMBOK8_Comprehensive_Question_Bank.md`. One file per part; its first line, `%% SECTION <title>`, names the part. |
| `exams/eNN_people.q`, `eNN_process.q`, `eNN_be.q` | `03_Demo_Exams/PMP_Demo_Exam_NN.md` and the exam data in `04_PMP_Exam_Simulator.html`. The build merges the three files into one exam in a shuffled order that is the same on every build, keeping case-study sets together. |

## Question format

```
@@ PR6 | Hybrid
The stem: one or more lines of Markdown.
A) The correct option, always written first
B) A distractor
C) A distractor
D) A distractor
= A
? The explanation.
```

- **Tags** on the `@@` line are separated by `|`:
  - the task code from the Exam Content Outline (`PE1`–`PE8`, `PR1`–`PR10`, `BE1`–`BE8`), which also sets the domain;
  - the approach (`Predictive`, `Agile` or `Hybrid`);
  - the type (`single` by default, `multi`, `match` or `fill`);
  - `noshuffle`, to keep the options in source order.

  Review questions in the guide can use a bare `@@`.
- **Option order:** the build shuffles options, seeded from the question text, so every build gives the same result. Numeric options are sorted in ascending order instead. Write the correct option first, and never refer to options by letter in the explanation.
- **Multiple response:** five options, with an answer line such as `= A, B`. The stem says how many to choose.
- **Matching:** numbered items `1)`–`4)` after the stem, options `A)`–`D)`, and `= 1-A, 2-B, 3-C, 4-D`.
- **Fill-in:** no options. The answer line holds the value, for example `= $3,000,000`. The simulator accepts any equivalent number, including currency signs, thousands separators and `k` or `m` suffixes.
- **Case studies:** `%% CASE <title>`, the scenario in Markdown, its questions, then `%% END CASE`.

## Exam blueprint

Each demo exam has 180 questions that follow the PMP Examination Content Outline (July 2026):

| Domain | Questions | Questions per task |
|---|---|---|
| People | 59 | PE1 7 · PE2 8 · PE3 9 · PE4 8 · PE5 7 · PE6 7 · PE7 6 · PE8 7 |
| Process | 74 | PR1 8 · PR2 8 · PR3 8 · PR4 7 · PR5 7 · PR6 8 · PR7 7 · PR8 8 · PR9 7 · PR10 6 |
| Business Environment | 47 | BE1 6 · BE2 6 · BE3 6 · BE4 6 · BE5 7 · BE6 5 · BE7 6 · BE8 5 |

About 40% of the questions use a predictive approach and 60% an agile or hybrid one. Every exam has two case-study sets of four questions each. It also has about ten multiple-response questions and three or four each of matching and fill-in questions. `python3 tools/build.py stats` checks these numbers.

## Writing good options

Test-takers learn to spot the longest or most qualified option, so keep all four options at a similar length (about 70–95 characters for scenario answers). Give each distractor a plausible rationale ("…, since …", "… so that …"). In each file, the correct option should be the longest no more than 40% of the time, and the shortest no more than 40% of the time. Check with:

```
python3 tools/bias.py source/exams/e01_*.q          # blueprint and answer-length report
python3 tools/bias_guide.py                          # the same for the guide's review questions
python3 tools/longest.py source/exams/e01_people.q   # questions whose correct option is the longest
python3 tools/shortest.py source/exams/e01_people.q  # ... or the shortest
```

After shuffling, the build also balances the correct answers across the letters A–D within each exam.

## Bulk edits

Two patch tools apply edits listed in a text file. Paths in the patch files are relative to `source/`.

`python3 tools/patch_options.py PATCHFILE` replaces some of a question's options:

```
### exams/e01_people.q :: <start of the stem>
B) New text for option B
= A          (optional: a new answer line)
```

`python3 tools/replace_q.py PATCHFILE` replaces whole questions:

```
### exams/e05_be.q :: <start of the old stem>
@@ BE3 | Predictive
<new stem>
A) ...
= A
? ...
```

To find near-duplicate questions between exams:

```
python3 tools/simcheck.py --min 0.40 source/exams/e05_*.q -- source/exams/e0[1-4]_*.q
```
