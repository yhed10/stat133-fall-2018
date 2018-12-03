library(testthat)

context("Tests for check_times()")

test_that("check_times works as expected", {

  expect_equal(check_times(10), TRUE)
  expect_equal(check_times(20), TRUE)
  expect_error(check_times(-10), FALSE)
  expect_error(check_times(1.4), FALSE)


})

