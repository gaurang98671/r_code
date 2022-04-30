#list
#Lists are the R objects which contain elements of different types like − numbers, strings, vectors and another list inside it.
#A list can also contain a matrix or a function as its elements. List is created using list() function.
list_data <- list("Test", "Gaurang", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data)

#arrays
#Arrays are the R data objects which can store data in more than two dimensions. For example − 
#If we create an array of dimension (2, 3, 4) then it creates 4 rectangular matrices each with 2 rows and 3 columns. 
#Arrays can store only data type.
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)


# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names, column.names, matrix.names))
print(result)


#dataframe
#A data frame is a table or a two-dimensional array-like structure in which each column contains 
#values of one variable and each row contains one set of values from each column.
emp.data <- data.frame(
   emp_id = c (1:5), 
   emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
   salary = c(623.3,515.2,611.0,729.0,843.25), 
   
   start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
      "2015-03-27")),
   stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data) 