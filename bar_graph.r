# Create the data for the chart
A <- c(17, 2, 8, 13, 1, 22)
B <- c("Jan", "feb", "Mar", "Apr", "May", "Jun")
  
# Plot the bar chart 
barplot(A, names.arg = B, xlab ="Month", 
        ylab ="Articles", col ="green", 
        main ="GeeksforGeeks-Article chart")


#Box plot for cars dataset

barplot(mtcars$wt)
barplot(mtcars$gear)
