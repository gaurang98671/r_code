library(stats)

#USE LINK FOR DATASET
#https://raw.githubusercontent.com/kmdono02/Data_Analysis_with_R_IBIS/master/data/cross-sec_aosi.csv

aosi_data <- read.csv("/home/pika/Desktop/SEM-8/IRS/RPL/cross-sec_aosi.csv", stringsAsFactors=FALSE, na.strings = ".")
#Gender and Study Sites are Categorical columns. Show table of their counts.
table(aosi_data$Gender)
table(aosi_data$Study_Site)

#Make table of combined Gender and Study Site counts.
table(aosi_data$Gender, aosi_data$Study_Site)
#How to handle NA values example.
table(aosi_data$Gender, aosi_data$Study_Site, useNA = "ifany")         
table(aosi_data$Gender, aosi_data$Study_Site, useNA = "always")
#Store combined counts table in a variable.
table_ex <- table(aosi_data$Gender, aosi_data$Study_Site)

#Add dimension names for the rows and columns.
dimnames(table_ex)
names(dimnames(table_ex)) <- c("Gender", "Site")
names(dimnames(table_ex))

#Make a proportionality table. Val at each cell is divided by sum of row/col.
prop_table_ex <- prop.table(table_ex)
prop_table_ex

#Round Proportionality table to 2 decimal places
prop_table_ex <- round(prop_table_ex, 2)
prop_table_ex

#Add a margin of sum (or each row/col) in orig and prop table
table_ex <- addmargins(table_ex)
prop_table_ex <- addmargins(prop_table_ex)
table_ex
prop_table_ex

#Carry out Fisher Test for categorical data.
#The test is useful for categorical data that result from classifying objects in two 
#different ways; it is used to examine the  significance of the association 
#(contingency) between the two kinds of classification.
table_ex_xtabs <- xtabs(~Gender+Study_Site, data=aosi_data)
#Gives Chi square test.
summary(table_ex_xtabs)
fisher.test(table_ex_xtabs)