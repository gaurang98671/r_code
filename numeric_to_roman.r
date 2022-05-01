#This package contains a collection of utility functions.
#For a complete list, use library(help = "utils")

install.packages("utils")
library(utils)

r <- as.roman(79)
r
n <- (as.numeric(as.roman("LXXIX")))
n

numeric_array = c(1:10)
roman_array = as.roman(x)
numeric_array
roman_array
max(numeric_array)
max(roman_array)

#USER INPUT
n = as.integer(readline())
print(as.roman(n))