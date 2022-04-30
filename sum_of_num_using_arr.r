n = as.integer(readline(prompt = "Enter number of values : "))
lis <- list()
for(i in 1:n){
  lis <- append(lis, as.integer(readline(prompt = "Enter value")))
}

sum = 0
for(i in lis){
  sum = sum + i
}
print("Sum of all elements is: ")
print(sum)
