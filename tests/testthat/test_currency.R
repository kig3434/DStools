context("Testing currency exchange rate")

test_that("Basic check", {
  expect_equal(USdollar_to_euro(5), 4.05)
})

test_that("If value <= 0 test", {
  expect_that(USdollar_to_euro(0), prints_text("You have no money"))
})

