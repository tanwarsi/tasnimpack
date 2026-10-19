test_that("make_longer works", {
  expect_equal(ncol(make_longer(maternal_mortality)), 3)
})
