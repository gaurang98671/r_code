install.packages("ggplot2")
library(ggplot2)

print(ggplot(iris, aes(Sepal.Length, Petal.Length, colour = Species)) +
        geom_point(shape = 1) +
        geom_smooth(method = lm, se = FALSE))

df <- as.data.frame(table(mpg$class))
colnames(df) <- c("class", "freq")

pie <- ggplot(df, aes(x = "", y = freq, fill = factor(class))) +
  geom_bar(width = 1, stat = "identity") +
  theme(axis.line = element_blank(),
        plot.title = element_text(hjust = 0.5)) +
  labs(
    fill = "class",
    x = NULL,
    y = NULL,
    title = "Pie Chart of class",
    caption = "Source: mpg"
  )
print(pie + coord_polar(theta = "y", start = 0))

# A histogram count plot
print(ggplot(data=mpg, aes(x=hwy)) +
      geom_histogram( col="red", fill="green", alpha = .2, binwidth = 5))

