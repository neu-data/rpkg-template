# Neudata ggplot2 theme and scales

A clean minimal theme and discrete colour/fill scales using
[`neudata_palette()`](https://neu-data.github.io/mypackage/reference/neudata_palette.md).

## Usage

``` r
theme_neudata(base_size = 11)

scale_colour_neudata(...)

scale_fill_neudata(...)
```

## Arguments

- base_size:

  Base font size.

- ...:

  Passed to
  [`ggplot2::scale_colour_manual()`](https://ggplot2.tidyverse.org/reference/scale_manual.html)
  or
  [`ggplot2::scale_fill_manual()`](https://ggplot2.tidyverse.org/reference/scale_manual.html).

## Value

A ggplot2 theme or scale.

## Examples

``` r
library(ggplot2)
ggplot(mtcars, aes(wt, mpg, colour = factor(cyl))) +
  geom_point(size = 2) +
  scale_colour_neudata(name = "Cylinders") +
  theme_neudata()
```
