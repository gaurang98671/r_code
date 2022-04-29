#In R programming, while loops are used to loop until a specific condition is met.
n = 0 
while(n < 5){
  print("Executing something")
  n = n + 1
}

#A repeat loop is used to iterate over a block of code multiple number of times.
#There is no condition check in repeat loop to exit the loop.
#We must ourselves put a condition explicitly inside the body of 
#the loop and use the break statement to exit the loop.
#Failing to do so will result into an infinite loop.


repeat {
  print("Some statement")
}