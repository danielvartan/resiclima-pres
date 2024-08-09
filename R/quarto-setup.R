## Based on <https://github.com/hadley/r4ds/blob/main/_common.R>.

# Load libraries

library(downlit, quietly = FALSE, verbose = FALSE)
# library(here, quietly = FALSE, verbose = FALSE)
# library(knitr, quietly = FALSE, verbose = FALSE)
library(magrittr, quietly = FALSE, verbose = FALSE)
library(ggplot2, quietly = FALSE, verbose = FALSE)
# library(rutils, quietly = FALSE, verbose = FALSE)
library(xml2, quietly = FALSE, verbose = FALSE)

# Set variables -----

set.seed(2024)

# Set knitr -----

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  root.dir = here::here()
)

# Set general options -----

options(
  dplyr.print_min = 6,
  dplyr.print_max = 6,
  pillar.max_footer_lines = 2,
  pillar.min_chars = 15,
  stringr.view_n = 6,
  pillar.bold = TRUE,
  width = 77 # 80 - 3 for #> comment
)

# Set `ggplot2` -----

ggplot2::theme_set(
  ggplot2::theme_gray()
)

# Run `rbbt` -----

# (2024-06-05)
# This function only works with BetterBibTeX (BBT) for Zotero version v6.7.140
# or lower.

rutils:::bbt_write_quarto_bib(
  bib_file = here::here("references.bib"),
  dir = "",
  pattern = "\\.qmd$",
  wd = here::here()
)
