# Microgreens From Seed to Sale

**Learn to Master the Art of Cultivation — Take Seeds From Soil to Income**

This repository contains the complete, practical ebook for growers who want to
raise microgreens safely and build a small, repeatable local business. Read the
source online at
[ebook/microgreens-seed-to-sale.md](ebook/microgreens-seed-to-sale.md), or
download the PDF from the workflow run's **Artifacts** section after the build
workflow completes.

## Build the PDF locally

Install [Pandoc](https://pandoc.org/installing.html) and a LaTeX engine that
includes `xelatex` (for example TeX Live or MacTeX), then run:

```sh
make pdf
```

The finished file is written to
`ebook/dist/Microgreens-From-Seed-to-Sale.pdf`. Alternatively, run
`./build.sh`. The GitHub Actions workflow builds the same PDF whenever the
ebook source or its build assets change on `main` and preserves it as a
downloadable artifact.
