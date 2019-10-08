
<!-- README.md is generated from README.Rmd. Please edit that file -->

# algothemes

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/bagasbgy/algothemes.svg?branch=master)](https://travis-ci.org/bagasbgy/algothemes)
<!-- badges: end -->

## Overview

`algothemes` provides some extra theme and scales for visualization with
Algoritma Data Science School theme using
[`ggplot2`](https://ggplot2.tidyverse.org).

## Installation

You can install the development version of `algothemes` with:

``` r
# install.packages("remotes")
remotes::install_github("bagasbgy/algothemes")
```

## Getting started

``` r
# import libs
library(ggplot2)
library(algothemes)

# an example visualization
p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(aes(colour = Species)) +
  labs(title = "Iris: Reimagined", x = "Sepal Length", y = "Sepal Width")

p
```

![](man/figures/README-unnamed-chunk-3-1.png)<!-- -->

``` r
# with theme algo and light mode
p +
  theme_algo(mode = "light") +
  scale_colour_algo(mode = "light")
```

![](man/figures/README-unnamed-chunk-4-1.png)<!-- -->

``` r
# with theme algo and dark mode
p +
  theme_algo(mode = "dark") +
  scale_colour_algo(mode = "dark")
```

![](man/figures/README-unnamed-chunk-5-1.png)<!-- -->
