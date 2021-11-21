
<!-- README.md is generated from README.Rmd. Please edit that file -->

# stat545BLunaPackage

<!-- badges: start -->
<!-- badges: end -->

The goal of stat545BLunaPackage is to group and sort a data frame

## Installation

The stat545BLunaPackage is not available on CARN yet.

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2021/stat545BLunaPackage", ref="0.1.0")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(stat545BLunaPackage)
## basic example code
library(datateachr)
### this example group the vancouver_trees by its genus_name, and then sort by the count
group_and_sort_by_count(vancouver_trees, genus_name)
#> # A tibble: 97 × 2
#>    genus_name          count
#>    <chr>               <int>
#>  1 ALBIZIA                 1
#>  2 HALESIA                 1
#>  3 KALOPANAX               1
#>  4 CLERODENDRON            2
#>  5 CUPRESSOCYPARIS   X     2
#>  6 EUCALYPTUS              2
#>  7 MICHELIA                2
#>  8 OXYDENDRUM              2
#>  9 HIPPOPHAE               3
#> 10 PTELEA                  3
#> # … with 87 more rows
```

The package will do the check on the arguments. For function
*group_and_sort_by_count*, the first argument should be a data frame,
and the second one should not be empty. Below are the examples which
will throw error.

``` r
group_and_sort_by_count(vancouver_trees) ## it will throw a missing error since the second argument is missing
#> Error in group_and_sort_by_count(vancouver_trees): !missing(variable_names) is not TRUE
group_and_sort_by_count("aaaa", 1) ## it will throw an error since the first argument is not a data frame
#> Error in group_and_sort_by_count("aaaa", 1): is.data.frame(data) is not TRUE
```
