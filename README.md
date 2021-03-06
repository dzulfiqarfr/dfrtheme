
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dfrtheme

<!-- badges: start -->

[![R-CMD-check](https://github.com/dzulfiqarfr/dfrtheme/workflows/R-CMD-check/badge.svg)](https://github.com/dzulfiqarfr/dfrtheme/actions)
<!-- badges: end -->

This is an R package to apply my custom theme on
<a href="https://ggplot2.tidyverse.org/index.html" target="_blank"><strong>ggplot2</strong></a>
charts.

There are two functions:

-   `dfr_theme()` to modify the theme components; and

-   `dfr_convert_font_size()` to convert font size from points (pts) to
    millimeters (mm).

## Installation

``` r
if (!require("devtools")) install_packages("devtools")
library(devtools)
devtools::install_github("dzulfiqarfr/dfrtheme")
```

## Example

``` r
library(dplyr)
library(ggplot2)
library(ggtext)
library(gapminder)
library(dfrtheme)

gapminder_latest <- dplyr::filter(gapminder, year == last(year))

ggplot(
  gapminder_latest, 
  aes(x = gdpPercap, y = lifeExp, fill = continent)
) +
  geom_point(
    pch = 21,
    color = "white",
    size = 2.5,
    stroke = 0.25,
    alpha = 0.75
  ) +
  geom_text(
    aes(label = country),
    size = dfr_convert_font_size(),
    check_overlap = TRUE,
    hjust = "inward",
    vjust = "inward"
  ) +
  scale_x_log10() +
  labs(
    title = "Countries with higher income have better public health",
    subtitle = paste0(
      "GDP per capita at 2005 international dollars ",
      "and life expectancy in 2007"
    ),
    x = "GDP per capita<br>(log scale)",
    y = "Life expectancy<br>(years)",
    caption = "Source: Gapminder<br>Chart: Dzulfiqar Fathur Rahman"
  ) +
  dfr_theme()
```

<img src="man/figures/README-demo-1.png" width="100%" style="display: block; margin: auto;" />

## Read also

-   Best practices to create a new ggplot2 theme
    (<a href="https://ggplot2.tidyverse.org/articles/ggplot2-in-packages.html#ggplot2-in-suggests-1" target="_blank">read this article</a>)

-   Understanding text size and resolution in ggplot2 by Christophe
    Nicault
    (<a href="https://www.christophenicault.com/post/understand_size_dimension_ggplot2/" target="_blank">read his blog post</a>)
