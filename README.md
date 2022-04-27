# Résumé
[![build](https://img.shields.io/github/workflow/status/simbleau/resume/latex-build/main)](https://github.com/simbleau/resume/actions/workflows/latex.yml)
[![last release](https://img.shields.io/github/release-date/simbleau/resume?label=last%20release)](https://github.com/simbleau/resume/releases)
[![last update](https://img.shields.io/github/last-commit/simbleau/resume/main?label=last%20commit)](#) \
A repository containing the TeX source of Spencer Imbleau's résumé.

# Dependencies
Linux: `sudo apt install texlive-xetex texlive-fonts-extra` \
Windows: Not supported, up to the user. \
MacOS: Not supported, up to the user.

## Building the PDF
This command ignores errors and will attempt to produce a PDF artifact from the resume.tex. \
Command: `make pdf`

## Clean
This command removes ALL artifacts, including the PDF artifact. \
Command: `make clean`

