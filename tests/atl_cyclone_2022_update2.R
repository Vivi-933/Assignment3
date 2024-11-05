test = list(
  name = "atl_cyclone_2022_update2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(
          is_tibble(atl_cyclone_2022_update2),
          info = "ERROR FEEDBACK: get the tibble atl_cyclone_2022_update2 first"
        )

        testthat::expect_true(
          is.na(atl_cyclone_2022_update2$latitude[1]),
          info = "ERROR FEEDBACK: The first entry of latitude is not NA"
        )

      }
    )
  )
)