<div align="center">

<img src="https://raw.githubusercontent.com/neu-data/.github/main/assets/banner.svg" alt="Neudata Consulting Ltd" width="100%" />

# mypackage <img src="man/figures/logo.png" align="right" height="96" alt="" />

*One-sentence description of what the package does.*

[![R-CMD-check](https://github.com/neu-data/mypackage/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/neu-data/mypackage/actions/workflows/R-CMD-check.yaml)
[![pkgdown](https://img.shields.io/badge/docs-pkgdown-055F56?style=flat)](https://neu-data.github.io/mypackage/)
![Neudata](https://img.shields.io/badge/Neudata-R%20package-04242F?style=flat)

</div>

---

> **Using this template?** Click **Use this template**, then follow the
> [setup checklist](#setting-up-a-new-package-from-this-template) at the bottom and delete this note.

## Installation

```r
# install.packages("remotes")
remotes::install_github("neu-data/mypackage")
```

## Example

```r
library(mypackage)

summarise_by_group(ToothGrowth, "len", "supp")

library(ggplot2)
ggplot(ToothGrowth, aes(factor(dose), len, fill = supp)) +
  geom_boxplot() +
  scale_fill_neudata() +
  theme_neudata()
```

## What's included

| Path | Purpose |
|---|---|
| `R/` | Functions documented with roxygen2 (example: `summarise_by_group()`) |
| `R/palette.R` | `neudata_palette()`, `theme_neudata()`, `scale_colour_neudata()`, `scale_fill_neudata()` |
| `tests/testthat/` | Unit tests (testthat 3rd edition) |
| `vignettes/` | Getting-started article |
| `_pkgdown.yml`, `pkgdown/extra.scss` | Documentation website in Neudata colours |
| `.github/workflows/` | R CMD check on Windows, macOS and Linux; pkgdown deploy to GitHub Pages; label sync |

## Setting up a new package from this template

1. **Rename the package** — replace `mypackage` everywhere (DESCRIPTION, `R/mypackage-package.R`, `tests/testthat.R`, vignette, `_pkgdown.yml`, this README), and rename `R/mypackage-package.R` and `vignettes/mypackage.Rmd`.
2. **Edit `DESCRIPTION`** — title, description, authors and URLs.
3. **Choose a licence** — the template uses MIT with Neudata Consulting Ltd as copyright holder. For client-owned or confidential packages, replace it with `License: file LICENSE` and a proprietary notice.
4. **Replace the example function** in `R/summarise_by_group.R` and its tests.
5. **Document and check**:
   ```r
   devtools::document()
   devtools::test()
   devtools::check()
   pkgdown::build_site()
   ```
6. **Turn on GitHub Pages** — Settings → Pages → Source: **GitHub Actions**. The pkgdown workflow publishes the site on every push to `main`.

---

<div align="center">

**Neudata Consulting Ltd** · *Insight. Impact. Innovation.*
[www.neu-data.com](https://www.neu-data.com) · [contact@neu-data.com](mailto:contact@neu-data.com)

</div>
