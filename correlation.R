x = c(1, 2, 3, 4, 5, 6, 7)
y = c(1, 3, 6, 2, 7, 4, 5)

#Pearson Correlation
p = cor(x, y, method = "pearson")
cat("Pearson correlation coefficient is:", p)

result = cor.test(x, y, method = "pearson")
print(result)


#OR COULD SELECT COLUMNS AS FOLLOWS - 
#x = df$mpg
#y = df$weight