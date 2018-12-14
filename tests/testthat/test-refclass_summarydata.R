context("SummaryData Class")

test_that(desc = "Object of SummaryData class is created",
          code = expect_is(
              object = SummaryData(
                  data = mtcars,
                  info = "Cars data",
                  summary_columns = c("cyl", "mpg")
              ),
              class = "SummaryData"
          ))
