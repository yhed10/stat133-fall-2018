library(testthat)

context("Tests for device()")

test_that("devicei works as expected", {


  expect_length(mdevice(
    sides = c('i', 'ii', 'iii', 'iv'), prob = rep(1/4, 4)), 2)

  expect_error(device(sides = c('a')))
  expect_error(device(sides = c('heads', 'heads')))
  expect_error(device( sides = c('a', 'b'), prob = c(0.2, 0.1)))
  expect_error(evice( sides = c('a', 'b', 'c'), prob = c(0.2, 0.8)))

})

