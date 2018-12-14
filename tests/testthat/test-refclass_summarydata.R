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

test_that(desc = "Message is printed",
          code = expect_output(object =
                                   print(
                                       SummaryData(
                                           data = mtcars,
                                           info = "Cars data",
                                           data_name = "mtcars"
                                       )
                                   )
                               ,regexp = "mtcars"))
