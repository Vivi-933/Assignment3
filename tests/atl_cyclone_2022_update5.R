test = list(
  name = "atl_cyclone_2022_update5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_contains(
          names(atl_cyclone_2022_update5),
          c("Hour", "Minute", "Identifier")
        )

        testthat::expect_true(
          is_tibble(atl_cyclone_2022_update4),
          info = "ERROR FEEDBACK: get the tibble atl_cyclone_2022_update4 first"
        )

        testthat::expect_equal(
          atl_cyclone_2022_update5$Hour[1], "00",
          info = "ERROR FEEDBACK: Hour is wrong."
        )

        testthat::expect_equal(
          atl_cyclone_2022_update5$Identifier[5], "L",
          info = "ERROR FEEDBACK: Identifier is wrong."
        )
      }
    )
  )
)