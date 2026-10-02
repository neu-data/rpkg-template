#' Summarise a numeric variable by group
#'
#' An example function showing the documentation, input checking and testing
#' conventions used in Neudata packages. Replace it with your own.
#'
#' @param data A data frame.
#' @param var Name of the numeric column to summarise (string).
#' @param group Name of the grouping column (string).
#' @param digits Number of decimal places to round to.
#'
#' @return A data frame with one row per group and columns `n`, `mean`,
#'   `sd`, `median` and `missing`.
#' @export
#' @examples
#' summarise_by_group(ToothGrowth, "len", "supp")
summarise_by_group <- function(data, var, group, digits = 2) {
  if (!is.data.frame(data)) {
    stop("`data` must be a data frame.", call. = FALSE)
  }
  missing_cols <- setdiff(c(var, group), names(data))
  if (length(missing_cols) > 0) {
    stop("Column(s) not found in `data`: ", paste(missing_cols, collapse = ", "), call. = FALSE)
  }
  if (!is.numeric(data[[var]])) {
    stop("`", var, "` must be numeric.", call. = FALSE)
  }

  pieces <- split(data[[var]], data[[group]], drop = TRUE)
  out <- data.frame(
    group   = names(pieces),
    n       = vapply(pieces, function(x) sum(!is.na(x)), integer(1)),
    mean    = vapply(pieces, function(x) mean(x, na.rm = TRUE), numeric(1)),
    sd      = vapply(pieces, function(x) stats::sd(x, na.rm = TRUE), numeric(1)),
    median  = vapply(pieces, function(x) stats::median(x, na.rm = TRUE), numeric(1)),
    missing = vapply(pieces, function(x) sum(is.na(x)), integer(1)),
    row.names = NULL
  )
  names(out)[1] <- group
  out[c("mean", "sd", "median")] <- lapply(out[c("mean", "sd", "median")], round, digits = digits)
  out
}
