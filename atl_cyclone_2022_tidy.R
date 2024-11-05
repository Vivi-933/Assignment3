test = list(
  name = "atl_cyclone_2022_tidy",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_true(
          is_tibble(atl_cyclone_2022_update5),
          info = "ERROR FEEDBACK: get the tibble atl_cyclone_2022_update5 first"
        )

        integer_classes <- atl_cyclone_2022_tidy |>
          select(NameYear, ObservYear, Month, Day, Hour, Minute, Number) |>
          lapply(class) |>
          unlist() |>
          unname()

        testthat::expect_true(
          all(integer_classes == "integer"),
          info = "ERROR FEEDBACK: At least one of the columns that was supposed to be a integer isn't an integer."
        )

        numeric_classes <- atl_cyclone_2022_tidy |>
          select(max_wind:r_max_wind) |>
          lapply(class) |>
          unlist() |>
          unname()

        testthat::expect_true(
          all(numeric_classes == "numeric"),
          info = "ERROR FEEDBACK: At least one of the columns that was supposed to be numeric isn't a numeric."
        )

      }
    )
  )
)