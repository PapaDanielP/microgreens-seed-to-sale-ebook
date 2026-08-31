#!/usr/bin/env sh
set -eu

command -v pandoc >/dev/null 2>&1 || {
  echo "pandoc is required; see https://pandoc.org/installing.html" >&2
  exit 1
}
command -v xelatex >/dev/null 2>&1 || {
  echo "xelatex is required; install a TeX distribution such as TeX Live." >&2
  exit 1
}

mkdir -p ebook/dist
pandoc ebook/microgreens-seed-to-sale.md \
  --from gfm \
  --pdf-engine=xelatex \
  --toc \
  --number-sections \
  --resource-path=ebook \
  --template=ebook/template.tex \
  --output=ebook/dist/Microgreens-From-Seed-to-Sale.pdf
