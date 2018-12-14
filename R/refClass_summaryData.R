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
#' @rdname SummaryData-class
#' @exportClass SummaryData
#'
setClass(
    Class = "SummaryData",
    slots = list(
        data = "data.frame",
        data_name = "character",
        summary_columns = "character",
        info = "character"
    )
)

#' Constructor method of SummaryData.
#' @rdname SummaryData-class
#' @name SummaryData-class
setMethod("initialize", "SummaryData", function(.Object,
                                                data = "data.frame",
                                                data_name = "character",
                                                summary_columns = "character",
                                                info = "character",
                                                ...)
{
    if (missing(data)) {
        .Object@data <- data.frame()
    } else {
        .Object@data <- data
    }
    if (missing(data_name)) {
        .Object@data_name <- deparse(substitute(x))
    } else {
        .Object@data_name <- data_name
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

#' Destructor for the refernece SummaryData Class
#'
# setMethod("finalize", "SummaryData", function() {
#     print(objects(.self))
#     for (objName in objects(.self)) {
#         obj = get(objName,  envir = .self)
#         if (!is.function(obj)) {
#             print(objName)
#             print(obj)
#         }
#     }
# })

#' Show method
#' @rdname SummaryData-class
#' @importFrom cli boxx
setMethod(
    f = "show",
    signature = "SummaryData",
    definition = function(object) {
        cat(boxx(label = paste("Data:", object@data_name)))
    }
)

#' Wrapper function SummaryData.
#'
#' @rdname SummaryData-class
#' @name SummaryData-class
#' @export
SummaryData <- function(...) {
    new("SummaryData", ...)
}