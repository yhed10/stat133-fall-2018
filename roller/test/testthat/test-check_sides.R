library(testthat)

context("Tests for check_sides()")

test_that("check_sides works as expected", {

  expect_equal(check_sides(1), TRUE)
  expect_equal(check_sides(3), TRUE)
  expect_error(check_sides(0), FALSE)

})

