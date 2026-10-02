test_that("summarise_by_group returns one row per group", {
  out <- summarise_by_group(ToothGrowth, "len", "supp")
  expect_equal(nrow(out), 2)
  expect_named(out, c("supp", "n", "mean", "sd", "median", "missing"))
  expect_equal(sum(out$n), nrow(ToothGrowth))
})

test_that("summarise_by_group counts missing values", {
  d <- data.frame(g = c("a", "a", "b"), x = c(1, NA, 3))
  out <- summarise_by_group(d, "x", "g")
  expect_equal(out$missing, c(1L, 0L))
  expect_equal(out$mean, c(1, 3))
})

test_that("summarise_by_group validates input", {
  expect_error(summarise_by_group(list(), "x", "g"), "data frame")
  expect_error(summarise_by_group(ToothGrowth, "nope", "supp"), "not found")
  expect_error(summarise_by_group(ToothGrowth, "supp", "dose"), "numeric")
})
