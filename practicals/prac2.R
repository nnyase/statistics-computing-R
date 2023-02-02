# Prac 2 
# Ndivhuwo Nyase

# x + 1 = y - 1
# y + 1 = (x-1)*2

#eq 1: x - y = - 2
#eq 2: -2x + y = -3 

A <- matrix(c(1,-2,-1,1),nrow = 2)
b <- c(-2,-3)
x = solve(A) %*% b
x
A

