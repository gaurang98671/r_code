#Scatterplots show many points plotted in the Cartesian plane.
#Each point represents the values of two variables. 
#One variable is chosen in the horizontal axis and another in the vertical axis.
#The simple scatterplot is created using the plot() function.

# Get the input values.
input <- mtcars[,c('wt','mpg')]


# Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = input$wt,y = input$mpg,
   xlab = "Weight",
   ylab = "Milage",
   xlim = c(2.5,5),
   ylim = c(15,30),		 
   main = "Weight vs Milage"
)
	 
