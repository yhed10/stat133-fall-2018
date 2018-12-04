library(roller)


context("Tests for check_prob()")

test_that("check_prob works as expected", {
  prob = c(0.5,0.5)
  prob1 = c(0.4, 0.6)
  prob2 = c(1,1)


  expect_equal(check_prob(prob), TRUE)
  expect_equal(check_prob(prob1), TRUE)

  expect_error(check_prob(prob2))

})

