n = as.integer(readline(prompt="Enter num"))
isPrime = 0
print(n)
for (x in 2:n){
  if(n %% x == 0){
    print("Number not is prime")
    print(x)
    isPrime = 1
    break
  }    
}

if(isPrime == 0){
  print("Number is prime")
}

