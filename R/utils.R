# Copied from dplyr:::names2
names2 <- function(x) {
  names(x) %||% rep("", length(x))
}


make_seq_names <- function(.x, .f, ...) {
  assert_that(is.string(.f) || is.function(.f) || is_formula1(.x))
  if (is.character(.f)) {
    sprintf(.f, .x, ...)
  } else {
    # only handle formulas or other functions
    purrr::as_function(.f)(.x, ...)
  }
}

# From tidyr:::append_df
append_df <- function(x, values, after = length(x)) {
  y <- append(x, values, after = after)
  class(y) <- class(x)
  attr(y, "row.names") <- attr(x, "row.names")
  y
}

# From tidyr:::append_col
append_col <- function(x, col, name, after = length(x)) {
  append_df(x, set_names(list(col), name), after = after)
}

# From tidyr:::col_name
col_name <- function(x, default = stop("Please supply column name",
                                        call. = FALSE)) {
  if (is.character(x))
    return(x)
  if (identical(x, quote(expr = )))
    return(default)
  if (is.name(x))
    return(as.character(x))
  if (is.null(x))
    return(x)
  stop("Invalid column specification", call. = FALSE)
}
