#Switch Statement

num1 = as.integer(readline(prompt = "Enter first number: "))
num2 = as.integer(readline(prompt = "Enter second  number: "))
operator <-
  readline(prompt = "Enter an Arithmetic Operator ( +, - *, /, ^, %/%, %%): ")

switch(
  operator,
  "+" = print(paste("Addition is: ", num1 + num2)),
  "-" = print(paste("Subtraction is: ", num1 - num2)),
  "*" = print(paste("Multiplication is: ", num1 * num2)),
  "^" = print(paste("Exponent is: ", num1 ^ num2)),
  "/" = print(paste("Division is: ", num1 / num2)),
  "%/%" = print(paste("Integer Division is: ", num1 %/% num2)),
  "%%" = print(paste("Modulus is: ", num1 %% num2))
)


