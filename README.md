# Résumé
A repository containing the TeX source of Spencer Imbleau's résumé.

# Dependencies
Linux: `sudo apt install texlive-xetex texlive-fonts-extra` \
Windows: http://www.texts.io/support/0002/ \
MacOs: Not recommended, attempt at your leisure.


## Building the PDF
This command ignores errors and will attempt to produce a PDF artifact from the resume.tex. \
Command: `make pdf`

## Testing
This command halts on errors and will attempt to produce a PDF artifact from the resume.tex. \
Command: `make test`

## Linting artifacts
This command lints all artifacts (logs, outputs, aux, etc.) produced when building except for the PDF. \
Command: `make lint`

## Clean
This command removes ALL artifacts, including the PDF artifact. \
Command: `make clean`

