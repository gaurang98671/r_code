#vectors
#Vectors are the most basic R data objects and there are six types of atomic vectors. 
#They are logical, integer, double, complex, character and raw.

#Multiple Elements Vector
v <- 5:13
print(v)
# Creating a sequence from 6.6 to 12.6.
v <- 6.6:12.6
print(v)

# If the final element specified does not belong to the sequence then it is discarded.
v <- 3.8:11.4
print(v)

# Create vector with elements from 5 to 9 incrementing by 0.4.
print(seq(5, 9, by = 0.4))

# The logical and numeric values are converted to characters.
s <- c('apple','red',5,TRUE)
print(s)



#martices
#Matrices are the R objects in which the elements are arranged in a two-dimensional rectangular layout. 
#They contain elements of the same atomic types. Though we can create a matrix containing only characters or only logical values,
#they are not of much use. We use matrices containing numeric elements to be used in mathematical calculations.

# Elements are arranged sequentially by row.
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)

# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)

# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)



#lists

#Lists are the R objects which contain elements of different types like − numbers, strings, vectors and another list inside it.
#A list can also contain a matrix or a function as its elements. List is created using list() function.

# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
   list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Show the list.
print(list_data)