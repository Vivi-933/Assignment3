test = list(
  name = "atl_cyclone_data_address",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(
          is_tibble(atl_cyclone_2022_raw),
          info = "ERROR FEEDBACK: load the data first into atl_cyclone_2022_raw"
        )

        testthat::expect_equal(
          colnames(atl_cyclone_2022_raw), c("1", "2", "3", "4")
        )

      }
    )
  )
)