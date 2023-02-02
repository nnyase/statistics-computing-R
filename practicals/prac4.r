# Ndivhuwo Nyase
# Prac 4

x <- seq(-pi, pi, length = 1000)
y <- sin(x) # sin(x) for each x value
c <- cos(x)
plot(y ~ x, type = 'l',main = 'Smooth sin function'
     , col = 'blue', axes = F, xlab = "x", cex.axis = 1.5)
lines(y~ c, type = "l", col ="maroon", cex.lab = 1.5)
axis(side = 1, las = 1)
axis(side = 2, las = 1) 


x <- runif(n= 1000,min=-pi,max=pi)
y <- sin(x) # sin(x) for each x value
c <- cos(x)
plot(y ~ x, type = 'l',main = 'Smooth sin function'
     , col = 'blue', axes = F, xlab = "x", cex.axis = 1.5)
lines(y~ c, type = "l", col ="maroon", cex.lab = 1.5)
axis(side = 1, las = 1)
axis(side = 2, las = 1)

?rnorm