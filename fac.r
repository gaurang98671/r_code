Factors
#Factors are the data objects which are used to categorize the data and store it as levels. 
#They can store both strings and integers. They are useful in the columns which have a limited number of unique values. 
#Like "Male, "Female" and True, False etc. They are useful in data analysis for statistical modeling.

# Create a vector as input.
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))