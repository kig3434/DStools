#example/practice

test_that("Error messages are not working properly",{
  testthat::expect_error(SamplingDist(0)
                         , "The number of samples needs to be greater than 0")

  testthat::expect_error(SamplingDist(sd = 0)
                         , "The standard devaition cannot be 0")
})


test_that("length of SamplingDist does not match the parameter", {
  ss <- SamplingDist(samples = 51)
  expect_equal(length(ss), 51)
})
