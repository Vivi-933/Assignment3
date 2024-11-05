test = list(
  name = "atl_cyclone_2022_update3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3,
      code = {
        testthat::expect_true(
          is_tibble(atl_cyclone_2022_update2),
          info = "ERROR FEEDBACK: get the tibble atl_cyclone_2022_update2 first"
        )

        testthat::expect_contains(
          names(atl_cyclone_2022_update3), c("BasinNumberYear", "Name", "Entries")
        )

        testthat::expect_equal(
          atl_cyclone_2022_update3$BasinNumberYear[1], "AL011851",
          info = "ERROR FEEDBACK: BasinNumberYear is not correct."
        )

        testthat::expect_equal(
          atl_cyclone_2022_update3$Name[1], "UNNAMED",
          info = "ERROR FEEDBACK: Name is not correct."
        )

        testthat::expect_equal(
          atl_cyclone_2022_update3$Entries[1], "14",
          info = "ERROR FEEDBACK: Entries is not correct."
        )

      }
    )
  )
)