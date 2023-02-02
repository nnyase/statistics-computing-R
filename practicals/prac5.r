# Ndivhuwo Nyase
# Prac 5

# Question 1

#Generate 1000 values from a 𝑁(1, 2) distribution
x <- rnorm(1000, 1, 2)
# summarise in histogram
hist(x)

# Change histogram so that it is density not frequency
hist(x, freq = FALSE)
# Calculate the true 𝑁(1, 2) density over the domain
#of 𝑁(1, 2) and plot this on top of the histogram using a thick red line

x_vec <- seq(-10,10,by = 0.01)
lines(x_vec, dnorm(x_vec, mean = 1, sd=2), type = 'l', col ='red',lwd =5)
lines(x, dnorm(x), type = 'p', col ='blue', cex = 0.2)

?png

