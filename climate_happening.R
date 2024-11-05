test = list(
  name = "climate_happening",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(exists("climate_happening_raw"),
          info = "ERROR FEEDBACK: climate_happening_raw is not a tibble.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_equal(
          ncol(climate_happening_update1),
          3,
          info = "ERROR FEEDBACK: climate_happening_update1 has an incorrect number of columns"
        )

        testthat::expect_setequal(
          names(climate_happening_update1),
          c("climate_happening", "country", "score")
        )
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(
          ncol(climate_happening_update2),
          3,
          info = "ERROR FEEDBACK: climate_happening_update1 has an incorrect number of columns"
        )

        testthat::expect_setequal(
          names(climate_happening_update2),
          c("answer", "country", "score")
        )

        testthat::expect_setequal(
          unique(climate_happening_update2$answer),
          c("happening_yes", "happening_no", "happening_dontknow",
            "happening_refuse", "happening_base")
        )
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(
          ncol(climate_happening),
          6,
          info = "ERROR FEEDBACK: climate_happening_update1 has an incorrect number of columns"
        )

        testthat::expect_contains(
          names(climate_happening),
          c("country", "happening_yes")
        )

        testthat::expect_true(
          is.numeric(climate_happening$happening_yes),
          info = "ERROR FEEDBACK: happening_yes is not a numeric column."
        )
      }
    )
  )
)