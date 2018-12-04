library(roller)

context("Tests for check_sides()")

test_that("check_sides works as expected", {
  sides = 1:6
  sides1 = c(1,2)
  sides2 = c()

  expect_equal(check_sides(sides), TRUE)
  expect_equal(check_sides(sides1), TRUE)
  expect_error(check_sides(sides2))

})

