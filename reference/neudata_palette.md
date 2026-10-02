# Neudata colour palette

Brand colours sampled from the Neudata logo, ordered for use as a
categorical palette.

## Usage

``` r
neudata_palette(n = 6, named = FALSE)
```

## Arguments

- n:

  Number of colours to return. Defaults to all six.

- named:

  Return a named vector?

## Value

A character vector of hex colours.

## Examples

``` r
neudata_palette()
#> [1] "#055F56" "#0B376C" "#04242F" "#5FA39B" "#6C8DB8" "#8A99A3"
neudata_palette(3)
#> [1] "#055F56" "#0B376C" "#04242F"
```
