<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

`"roller"` is a minimal package that
provides functions to simulate rolling a object.

  - `device()` creates a object (of class `"device"`)
  - `roll()` tosses a object, producing a `"roll"` object.
  - `plot()` method for a `"roll"` object to plot frequencies.
  - `summary()` method for a `"roll"` object.

## Motivation

This package has been developed to illustrate some of the concepts
behind the creation of an R package.

## Installation

Install the development version from GitHub via the package
`"devtools"`:

``` r
# development version from GitHub:
#install.packages("devtools") 

# install "cointoss" (without vignettes)
devtools::install_github("gastonstat/cointoss")

# install "cointoss" (with vignettes)
devtools::install_github("gastonstat/cointoss", build_vignettes = TRUE)
```

## Usage

``` r
library(cointoss)

# default coin
device1 <- device()
device1
#> object "device"
#> 
#> "1", p = 0.5 
#> "2", p = 0.5

# 1 roll of device1
roll(device1)
#> object "roll"
#> 
#> coin: "1", "2" 
#> total rolls: 1 
#> num of 1: 1 
#> num of 2: 0

# 10 rolls of device1
roll10 <- roll(device1, times = 10)
roll10
#> object "roll"
#> 
#> sides: "1", "2" 
#> total rolls: 10 
#> num of 1: 1 
#> num of 2: 9

# summary
summary(roll10)
#> summary "toss"
#> 
#>    side count prop
#> 1    1     1  0.1
#> 2    2     9  0.9


# 100 tosses
roll100 <- roll(device1, times = 100)

# summary
summary(roll100)
#> summary "roll"
#> 
#>    side count prop
#> 1   1    52 0.52
#> 2   2    48 0.48
```

