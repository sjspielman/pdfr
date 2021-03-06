#' pdfr
#'
#' Printing full data frames by typing `pdfr()` rather than typing `print.data.frame()`. This is useful for printing full data frames when piping tibbles through commands to ensure the entire data prints at the end
#' @name pdfr
#' @docType package
NULL

#' Print a data frame or tibble
#'
#' @param x     A data frame or a tibble
#' @return The printed data frame
#' @examples
#' pdfr(iris)
#' @export
pdfr <- function(x) {
    print.data.frame(x)
}

#' Print the head() of a data frame or tibble
#'
#' @param x A data frame or a tibble
#' @param nrows The number of rows to consider for head(). Default is 6
#' @return The printed head of the data frame
#' @examples
#' hpdfr(iris)
#' @export
hpdfr <- function(x, nrows = 6) {
    print.data.frame(utils::head(x, nrows))
}

#' Print the tail() of a data frame or tibble
#'
#' @param x A data frame or a tibble
#' @param nrows The number of rows to consider for tail(). Default is 6
#' @return The printed tail of the data frame
#' @examples
#' tpdfr(iris)
#' @export
tpdfr <- function(x, nrows = 6) {
    print.data.frame(utils::tail(x, nrows))
}

