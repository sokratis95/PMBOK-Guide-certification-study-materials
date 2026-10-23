#!/bin/bash
# Convert the Markdown deliverables to PDF: pandoc (gfm -> standalone HTML with embedded CSS) -> Chromium print.
# Needs pandoc, Node.js with the playwright package and its Chromium, and the Inter and JetBrains Mono fonts.
set -e
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TOOLS="$REPO/tools"
OUT="$REPO"
TMP="$REPO/build/pdf"
mkdir -p "$TMP" "$OUT/PDF"
export NODE_PATH="${NODE_PATH:-$(npm root -g 2>/dev/null)}"
conv () {   # $1 = markdown path, $2 = pdf name, $3 = footer title
  local md="$1" name="$2" title="$3"
  local html="$TMP/${name%.pdf}.html"
  pandoc -f gfm -t html5 -s --embed-resources --css "$TOOLS/pdf.css" \
         --metadata pagetitle="$title" -o "$html" "$md"
  node "$TOOLS/print_pdf.js" "$html" "$OUT/PDF/$name" "$title"
  echo "ok  $name  $(du -h "$OUT/PDF/$name" | cut -f1)"
}
conv "$OUT/01_PMBOK8_Study_Guide.md" "01_PMBOK8_Study_Guide.pdf" "PMBOK® Guide 8 & PMP® — Study Guide"
conv "$OUT/02_PMBOK8_Comprehensive_Question_Bank.md" "02_PMBOK8_Comprehensive_Question_Bank.pdf" "PMBOK® Guide 8 — Comprehensive Question Bank"
for n in 01 02 03 04 05 06 07 08 09 10; do
  conv "$OUT/03_Demo_Exams/PMP_Demo_Exam_$n.md" "PMP_Demo_Exam_$n.pdf" "PMP® Demo Exam $n"
done
