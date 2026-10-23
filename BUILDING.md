# Building the study package

All the documents at the top of this repository are generated. To change them, edit the files in [`source/`](source/README.md) and rebuild. The build is deterministic: unchanged sources produce byte-identical Markdown and simulator files.

## What you need

- **Python 3**, standard library only, for the Markdown files and the simulator.
- For the PDFs:
  - **pandoc 3**;
  - **Node.js 18 or later** with the **playwright** package and its Chromium (`npm install -g playwright`, then `npx playwright install chromium`);
  - the **Inter** and **JetBrains Mono** fonts.
- Optionally, **fontTools** (`pip install fonttools`) and the Inter OTF files, to regenerate the fonts the simulator embeds in its PDF reports (`tools/simulator/make_fonts.py`).

## Build

```
python3 tools/build.py check            # parse and validate every source file
python3 tools/build.py all              # Markdown files + build/exams.json
python3 tools/simulator/build_sim.py    # 04_PMP_Exam_Simulator.html
tools/make_pdfs.sh                      # everything in PDF/
```

To build only one part, use `guide`, `bank` or `json` in place of `all`. `python3 tools/build.py exams 3 7` rebuilds only demo exams 03 and 07. `python3 tools/build.py stats` checks each exam against the blueprint: questions per domain, approach and type, case studies and answer letters.

`build_sim.py` also writes `build/pmp_exam_simulator_artifact.html`. This is the version published on claude.ai, which has no `<html>` or `<head>` wrapper.

PDFs record their creation time, so rebuilt PDFs differ byte for byte even when their content is unchanged. Commit them only when the Markdown has changed.

## Tests

The browser tests run the offline simulator in headless Chromium. They need the playwright package; if it is installed globally, set `NODE_PATH=$(npm root -g)` first.

```
node tools/tests/test_simulator.js        # timed exam with breaks and time-out, practice, quiz, review, dark mode, phone layout
node tools/tests/test_shortcuts.js        # keyboard shortcuts, calculator, multiple-response limits, numeric answers
node tools/tests/test_corrections_pdf.js  # corrections PDF download and mixed-exam composition
```

Screenshots and downloaded PDFs go to `tools/tests/out/`.

## Layout

| Path | Contents |
|---|---|
| `source/` | Chapter and question sources (format in [source/README.md](source/README.md)) |
| `tools/build.py` | Parser, validator, option shuffler and Markdown/JSON writer |
| `tools/bias.py`, `bias_guide.py`, `longest.py`, `shortest.py`, `dump_longest.py` | Blueprint and answer-length checks |
| `tools/simcheck.py` | Near-duplicate question finder |
| `tools/patch_options.py`, `tools/replace_q.py` | Bulk editing of questions |
| `tools/make_pdfs.sh`, `pdf.css`, `print_pdf.js` | PDF build |
| `tools/simulator/` | Simulator page template, build script and font subsetter |
| `tools/tests/` | Browser tests |
| `build/` | Intermediate files (not committed) |

## Third-party components

- `tools/simulator/vendor/jspdf.umd.min.js` is jsPDF 3.0.3, used for the corrections PDF. MIT licence: `tools/simulator/vendor/LICENSE-jsPDF.txt`.
- `tools/simulator/pdf_fonts.json` holds subsets of the Inter typeface. SIL Open Font License 1.1: `tools/simulator/vendor/OFL-Inter.txt`.
