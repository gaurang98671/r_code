#Linear Regression
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) #height in cm
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) #weight in KG

relation <- lm(y~x)
print(summary(relation))

a <- data.frame(x = 170)
result <-  predict(relation,a)
print("Weight of person in KG if height is 170cm: ")
print(result)

plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")


