test = list(
  name = "atl_cyclone_2022_update4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3,
      code = {
        testthat::expect_true(
          is_tibble(atl_cyclone_2022_update3),
          info = "ERROR FEEDBACK: get the tibble atl_cyclone_2022_update3 first"
        )

        testthat::expect_contains(
          names(atl_cyclone_2022_update4), c("Basin", "Number", "NameYear", "ObservYear", "Month", "Day")
        )

        testthat::expect_equal(
          atl_cyclone_2022_update4$ObservYear[1], "1851",
          info = "ERROR FEEDBACK: ObservYear is not the correct values"
        )
        testthat::expect_equal(
          atl_cyclone_2022_update4$NameYear[1], "1851",
          info = "ERROR FEEDBACK: NameYear is not the correct values"
        )

      }
    )
  )
)