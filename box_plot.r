#Boxplots are a measure of how well distributed is the data in a data set. It divides the data set into three quartiles.
#This graph represents the minimum, maximum, median, first quartile and third quartile in the data set. 
#It is also useful in comparing the distribution of data across data sets by drawing boxplots for each of them.

input <- mtcars[,c('mpg','cyl')]
print(head(input))


# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
   ylab = "Miles Per Gallon", main = "Mileage Data")

