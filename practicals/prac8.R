# Ndivhuwo Nyase
# Practical 8: Empirical cumulative distribution function


# Q1: . Use a for loop to calculate cumulative probabilities
# from the counts produced by the hist() function below

x <- rnorm(1000)
x.hist <- hist(x)
str(x.hist)
x.hist$counts
x.hist$breaks

cumsum <- numeric(length = length(x.hist$counts))
cdf_x <- numeric(length = length(x.hist$counts))

for (index in 1:length(x.hist$counts)){
  if (index == 1) {
    cumsum[index] <- x.hist$counts[index]
    }
  
  else {
    cumsum[index] <- x.hist$counts[index] + cumsum[index-1]
  }
  cdf_x[index] <- (x.hist$breaks[index] + x.hist$breaks[index+1])/2
}

plot(cdf_x, cumsum,pch = 19,type ='l')
lines(ecdf(x = x), col = "red")

n_cdf <- function(n) {
  x <- rnorm(n)
  x.hist <- hist(x)
  
  cdf_x <- numeric(length(x.hist$counts))
  cdf_y <- numeric(length(x.hist$counts))
  
  for(index in 1:length(cdf_x))
  { 
    if (index == 1) {
      cdf_y[index] <- x.hist$counts[index]
    }
    else {
      cdf_y[index] <- x.hist$counts[index]+cdf_y[index-1]
    }
  cdf_x[index] <- (x.hist$breaks[index] + x.hist$breaks[index+1])/2
    }
  return (plot(cdf_x,cdf_y, type = 'l'))
}

n_cdf(1000)

n_cdf(x)
lines(ecdf((1000)), col = "red", lwd = 2)

uuu <- runif(50000)
n_cdf(uuu)


