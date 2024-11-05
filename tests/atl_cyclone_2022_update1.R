test = list(
  name = "atl_cyclone_2022_update1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_true(
          is_tibble(atl_cyclone_2022_raw),
          info = "ERROR FEEDBACK: load the data first into atl_cyclone_2022_raw"
        )

        testthat::expect_equal(
          ncol(atl_cyclone_2022_update1), 21,
          info = "ERROR FEEDBACK: Incorrect number of columns. Perhaps you used the wrong delimiter or split the wrong column?"
        )

        testthat::expect_contains(
          names(atl_cyclone_2022_update1), new_columns
        )
      }
    )
  )
)