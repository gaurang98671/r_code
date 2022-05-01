library(stats)

#USE LINK FOR DATASET
#https://raw.githubusercontent.com/kmdono02/Data_Analysis_with_R_IBIS/master/data/cross-sec_aosi.csv

aosi_data <- read.csv("/home/pika/Desktop/SEM-8/IRS/RPL/cross-sec_aosi.csv", stringsAsFactors=FALSE, na.strings = ".")
table(aosi_data$Gender)
table(aosi_data$Study_Site)

table(aosi_data$Gender, aosi_data$Study_Site)
table(aosi_data$Gender, aosi_data$Study_Site, useNA = "ifany")         
table(aosi_data$Gender, aosi_data$Study_Site, useNA = "always")
table_ex <- table(aosi_data$Gender, aosi_data$Study_Site)

dimnames(table_ex)
names(dimnames(table_ex)) <- c("Gender", "Site")
names(dimnames(table_ex))

prop_table_ex <- prop.table(table_ex)
prop_table_ex

prop_table_ex <- round(prop_table_ex, 2)
prop_table_ex

table_ex <- addmargins(table_ex)
prop_table_ex <- addmargins(prop_table_ex)
table_ex
prop_table_ex

table_ex_xtabs <- xtabs(~Gender+Study_Site, data=aosi_data)
summary(table_ex_xtabs)
fisher.test(table_ex_xtabs)