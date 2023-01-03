# 📋 Résumé + CV
A repository containing the LaTeX source of Spencer Imbleau's résumé and curriculum vitae, tested and deployed with GitHub Actions.

---
[![résumé last release](https://img.shields.io/github/release-date/simbleau/resume?logo=github&label=Last%20Release)](https://github.com/simbleau/resume/releases)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/simbleau/resume/ci.yml?logo=github&label=CI)](https://github.com/simbleau/resume/actions/workflows/ci.yml)

# 🤖 Deployment
Deployment is automated by [GitHub Actions](https://github.com/simbleau/resume/actions).
- Pushes to `main` trigger a new release of the [latest résumé and cv](https://github.com/simbleau/resume/releases/tag/latest), in several formats.
  | Artifact         | Link                                                                     | Mirror                                         |
  | ---------------- | ------------------------------------------------------------------------ | ---------------------------------------------- |
  | Résumé           | <https://simbleau.github.io/resume/resume.html>                          | <https://simbleau.github.io/resume/>           |
  | Résumé, Embedded | <https://simbleau.github.io/resume/embed-resume.html>                    | <https://simbleau.github.io/resume/embed.html> |
  | Résumé, Download | <https://github.com/simbleau/resume/releases/download/latest/resume.pdf> |                                                |
  | CV               | <https://simbleau.github.io/resume/cv.html>                              |                                                |
  | CV, Embedded     | <https://simbleau.github.io/resume/embed-cv.html>                        |                                                |
  | CV, Download     | <https://github.com/simbleau/resume/releases/download/latest/cv.pdf>     |                                                |
- Manually pushed [releases](https://github.com/simbleau/resume/releases) also trigger workflows to upload artifacts.
  - Only tagged releases upload a coverletter artifact.

# 🔧 Building
## Dependencies
- [TeXLive, full](https://www.tug.org/texlive/)
- [Make](https://www.gnu.org/software/make/)
## All
Build the résumé, cirriculum vitae, and coverletter in one command:
```bash
make all
```
## Résumé
Build the résumé:
```bash
make clean
```
## CV
Build the cirriculum vitae:
```bash
make cv
```
## Coverletter
Build the coverletter:
```bash
make coverletter
```
## Clean
Purge all auxillary artifacts:
```bash
make clean
```

# 🔏 License
This project is [MIT](./LICENSE) licensed. You are within your rights to fork my résumé and use it as your own, although you should probably change my name to yours!
