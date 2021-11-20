employee <- c('John','Peter','Jolie', 'Anna', 'Liu', 'Ann')
age <- c(25, 25, 23, 19, 25, 23)
data1 <- data.frame(employee, age)

# Basic testing
res <- group_and_sort_by_count(data1, age)
test_that("Basic testing", {
  expect_equal(nrow(res), 3)
  expect_equal(res, dplyr::tibble(age = c(19, 23, 25), count = c(as.integer(1), as.integer(2), as.integer(3))))
})

# Error testing if no variable name passed in
test_that("Error testing", {
  expect_error(group_and_sort_by_count(data1), "!missing")
})

# NA testing
gender <- c('M', NA, 'F', 'F', 'F', 'F')
data2 <- data.frame(employee, age, gender)
res2 <- group_and_sort_by_count(data2, gender)

test_that("NA testing", {
  expect_true(any(is.na(res2$gender)))
  expect_equal(res2, dplyr::tibble(gender = c('M', NA, 'F'), count = c(as.integer(1), as.integer(1), as.integer(4))))
})

# check if data is data frame
test_that("instance type testing", {
  expect_error(group_and_sort_by_count("aaaa", 1));
})

# clean up
rm(employee, age, data1, gender, data2, res2, res)
