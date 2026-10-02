# Summarise a numeric variable by group

An example function showing the documentation, input checking and
testing conventions used in Neudata packages. Replace it with your own.

## Usage

``` r
summarise_by_group(data, var, group, digits = 2)
```

## Arguments

- data:

  A data frame.

- var:

  Name of the numeric column to summarise (string).

- group:

  Name of the grouping column (string).

- digits:

  Number of decimal places to round to.

## Value

A data frame with one row per group and columns `n`, `mean`, `sd`,
`median` and `missing`.

## Examples

``` r
summarise_by_group(ToothGrowth, "len", "supp")
#>   supp  n  mean   sd median missing
#> 1   OJ 30 20.66 6.61   22.7       0
#> 2   VC 30 16.96 8.27   16.5       0
```
