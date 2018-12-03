library(testthat)

context("Tests for check_prob()")

test_that("check_prob works as expected", {

  expect_equal(check_sides(0.5), TRUE)
  expect_equal(check_sides(1), TRUE)
  expect_error(check_sides(-10), FALSE)

})

