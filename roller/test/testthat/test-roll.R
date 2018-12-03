library(testthat)

context("Tests for roll()")

test_that("roll works as expected", {
  fair_die <- device(sides = 1:6, prob = rep(1/6, 6))
  set.seed(123)
  fair_50rolls <- roll(fair_die, times = 50)

  expect_length(fair_50rolls),50))

  expect_equal(fair50$sides, c(1,2))
  expect_equal(fair50$prob, c(0.5,0.5))
  expect_equal(fair50$total, 50)


})
