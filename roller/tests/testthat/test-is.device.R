library(roller)

context("Tests for is.device()")

test_that("is.device works as expected", {
  weird_die <- device(
    sides = c('i', 'ii', 'iii', 'iv'), prob = rep(1/4, 4))
  loaded_die <- device(
    sides = 1:6,
    prob = c(0.075, 0.1, 0.125, 0.15, 0.20, 0.35))


  expect_equal(is.device(weird_die), TRUE)
  expect_equal(is.device(loaded_die), TRUE)
  expect_equal(is.device(c(1, 2, 3)), FALSE)

})

