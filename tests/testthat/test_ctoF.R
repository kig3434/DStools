test_that("100 C = 212 F", {
  temp <- celtofar(t = 100)
  expect_equal(temp == 212)
})
