test = list(
  name = "NOAAStorm7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(
          is_tibble(atl_cyclone_2022_tidy),
          info = "ERROR FEEDBACK: get the tibble atl_cyclone_2022_tidy first"
        )

        testthat::expect_true(
          !any(atl_cyclone_2022$max_wind == -99, na.rm = TRUE),
          info = "ERROR FEEDBACK: At least one value in max_wind is still -99"
        )
      }
    )
  )
)