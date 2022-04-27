<div align="center">

# 📋 Résumé
[![sponsor me](https://img.shields.io/badge/sponsor-30363D?style=for-the-badge&logo=GitHub-Sponsors&logoColor=#white)](https://github.com/sponsors/simbleau)
[![buy me a coffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/simbleau)
[![build](https://img.shields.io/github/workflow/status/simbleau/resume/latex-build/main?style=for-the-badge&logo=github)](https://github.com/simbleau/resume/actions/workflows/latex.yml)
[![last release](https://img.shields.io/github/release-date/simbleau/resume?style=for-the-badge&logo=github&label=last%20release)](https://github.com/simbleau/resume/releases)

A repository containing the TeX source of Spencer Imbleau's résumé and curriculum vitae.\
_Managed with GitHub Actions_ 🤖

</div>

---

# Deployment
Deployment is automated by GitHub Actions.
- Changes to `main` trigger a new release of the [latest résumé](https://github.com/simbleau/resume/releases/tag/latest).
- New [tagged releases](https://github.com/simbleau/resume/tags) also trigger artifact upload.

---

# Local Builds
## Dependencies
- [TeXLive, full](https://www.tug.org/texlive/)
- [Make](https://www.gnu.org/software/make/)
## Building
- Build (résumé): `make pdf`
- Clean: `make clean`

---

## 🔏 License
This project is [MIT](./LICENSE) licensed.
