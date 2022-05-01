#A histogram is a visual representation of the distribution of a dataset. 
#As such, the shape of a histogram is its most obvious and informative characteristic: 
#it allows you to easily see where a relatively large amount of the data is situated 
#and where there is very little data to be found

#The y-axis shows how frequently the values on the x-axis occur in the data, 
#while the bars group ranges of values or continuous categories on the x-axis.

#AIR PASSENGERS - SINGLE COLUMN DATASET
data("AirPassengers")
AirPassengers
?AirPassengers

hist(AirPassengers,
     main = "Histogram of Air Passengers",
     xlab = "Passengers",
     ylab = "Frequency")

#To extract single column from another dataset use
# <DATASET_NAME>$<COLUMN_NAME>


