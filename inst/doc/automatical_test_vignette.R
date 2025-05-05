## -----------------------------------------------------------------------------
# Load the package
library(automatedtests)

# Example 1: Using individual vectors from the iris dataset
test1 <- automatical_test(iris$Species, iris$Sepal.Length, identifiers = FALSE)

# View the result summary
print(test1$getResult())

## -----------------------------------------------------------------------------
# Example 2: Forcing a paired test
before <- c(200, 220, 215, 205, 210)
after <- c(202, 225, 220, 210, 215)
paired_data <- data.frame(before, after)

# Perform the paired test
test2 <- automatical_test(before, after, paired = TRUE)

# View the result summary
print(test2$getResult())

## -----------------------------------------------------------------------------
# Example 3: One-sample test
test3 <- automatical_test(iris$Sepal.Length, compare_to = 5)

# View the result summary
print(test3$getResult())

