#In R Language, we are going to perform EDA under two broad classifications:
#1) Descriptive Statistics, which includes mean, median, mode, inter-quartile range, and so on.
#2) Graphical Methods, which includes histogram, density estimation, box plots, and so on.

install.packages("Hmisc")
install.packages("funModeling")
library(funModeling)

#DESCRIPTIVE STATISTICS
#Check Structure of Dataset
str(mtcars)

#Check the numbers of zeros , NAs and inifinite values for variables of data frame
df_status(mtcars)

#Check the 5- Number summary of mtcars.
summary(mtcars)

#Correlation Analysis (switch functions to show pearson/kendall/spearman)
cor.test(mtcars$mpg, mtcars$cyl, method = "pearson")


#GRAPHICAL METHODS
#Plot all the numeric variables of mtcars.
plot_num(mtcars)

#Scatter plot of a pair of values
ggplot(mtcars,mapping = aes(x=mtcars$mpg,y=mtcars$cyl)) + geom_point()

#Histogram of a single column
hist(mtcars$mpg,
     main = "Histogram of Miles Per Gallon",
     xlab = "Miles Per Gallon",
     ylab = "Frequency")
