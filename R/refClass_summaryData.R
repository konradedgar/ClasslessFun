#' Class SummaryData
#'
#' @description Odd class facilitating creation of data frame with
#'   summary information attached.
#'
#' @slot data data.frame.
#' @slot summary_columns character.
#' @slot info character.
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
        info = "character"
    )
)

#' Constructor method of SummaryData.
#'
#' @name SummaryData
#' @rdname SummaryData-class
setMethod("initialize", "SummaryData", function(.Object,
                                                data = "data.frame",
                                                summary_columns = "character",
                                                info = "character",
                                                ...)
{
    if (missing(data)) {
        .Object@data <- data.frame()
    } else {
        .Object@data <- data
    }
    if (missing(summary_columns)) {
        .Object@summary_columns <- character()
    } else {
        .Object@summary_columns <- summary_columns
    }
    if (missing(info)) {
        .Object@info <- paste("Object generated on:", Sys.time())
    } else {
        .Object@info <- info
    }

    validObject(.Object)
    return(.Object)
})

#' Wrapper function SummaryData.
#'
#' @name SummaryData
#' @rdname SummaryData-class
#' @export
SummaryData <- function(...) {
    new("SummaryData", ...)
}