#' Class SummaryData
#'
#' @description Odd class facilitating creation of data frame with
#'   summary information.
#'
#' @slot data data.frame.
#' @slot summary_columns character.
#' @slot comment character.
#'
#' @return A SummaryData Class
#' @import methods
#' @exportClass SummaryData
#'
setClass(
    Class = "SummaryData",
    slots = list(
        data = "data.frame",
        summary_columns = "character",
        comment = "character"
    )
)