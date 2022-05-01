#https://wiki.q-researchsoftware.com/images/1/1b/Aggregation_data.xlsx

library("dplyr")

Name = c("Ann", "Bob", "Charlie", "Dave", "Ed", "Fred", "Gary", "Henry", "Ian", "Jo")
Role = c("Cook", "Server", "Cook", "Server", "Manager", "Manager", "Cook", "Server", "Cook", "Server")
Shift = c("Lunch", "Lunch", "Lunch", "Lunch", "Lunch", "Dinner", "Dinner", "Dinner", "Dinner", "Dinner")
Salary = c(1000, 1200, 1400, 1500, 2200, 2000, 2000, 1500, 1600, 1800)
Age = c(19, 24, 29, 24, 32, 41, 28, 30, 22, 25)

data = data.frame(Name, Role, Shift, Salary, Age)
head(data)

agg = aggregate(select(data, Salary, Age),
                by = list(data$Role),
                FUN = mean)
agg
