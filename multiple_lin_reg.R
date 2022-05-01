#Multiple regression is an extension of linear regression into relationship between 
#more than two variables. In simple linear relation we have one predictor and one 
#response variable, but in multiple regression we have more than one predictor variable 
#and one response variable.

library(caTools)
set.seed(123)

#Load Data
?mtcars
data <- mtcars[,c("mpg","disp","hp","wt")]
head(data)

#Train Test Split
split = sample.split(data$mpg, SplitRatio = 0.8)
train = subset(data, split == TRUE)
test = subset(data, split == FALSE)
train
test

# Create the model.
model <- lm(formula = mpg ~ disp+hp+wt, data = train)
model
y_pred = predict(model, newdata = test)
y_pred

#Plot Predicted vs Actual
library(ggplot2)
plot_data <- data.frame(Predicted_value = y_pred, Observed_value = test$mpg)

ggplot(plot_data, aes(x = Predicted_value, y = Observed_value)) +
  geom_point() +
  geom_abline(intercept = 0, slope = 1, color = "green")
