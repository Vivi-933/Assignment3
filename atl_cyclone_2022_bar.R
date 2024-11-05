test = list(
  name = "atl_cyclone_2022_bar",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_true(
          all(c("Name", "NameYear") %in% names(atl_cyclone_2022_bar$data)),
          info = "ERROR FEEDBACK: Data must include NameYear"
        )

        testthat::expect_true(
          nrow(atl_cyclone_2022_bar$data) > 500,
          info = "ERROR FEEDBACK: You have filtered out too many rows!"
        )

        test_distinctness <- atl_cyclone_2022_bar$data |>
          group_by(NameYear, Name) |>
          tally(name = "n") |>
          pull(n)

        testthat::expect_true(
          !any(test_distinctness > 1),
          info = "ERROR FEEDBACK: Data contains the same Name multiple times in a NameYear."
        )

        testthat::expect_true(
          !"UNNAMED" %in% atl_cyclone_2022_bar$data$Name,
          info = "ERROR FEEDBACK: Only include the named storms."
        )
      }
    )
  )
)