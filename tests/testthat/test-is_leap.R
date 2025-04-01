test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("test is_leap working", {
  expect_equal(is_leap(1000), TRUE)
})

test_that("test is_leap working with strings", {
  expect_equal(is_leap("1000"), TRUE)
  expect_equal(is_leap("ascjksncadc1000nkjladnk"), TRUE)
})
