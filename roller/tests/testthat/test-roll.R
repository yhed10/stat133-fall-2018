library(roller)

context("Tests for roll()")

test_that("roll works as expected", {
  fair_die <- device(sides = 1:6, prob = rep(1/6, 6))

  set.seed(123)
  fair_50rolls <- roll(fair_die, times = 50)

  expect_length((fair_50rolls),4)

  expect_equal(fair_50rolls$total, 50)


})
