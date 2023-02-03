# Ndivhuwo Nyase
# Prac 10 

rw <- function(stop_condition=2,mean_of_walk=0,sd_of_walk=0.005) {
  #initialization
  y <- c()
  t <- 1 
  y[1] <- 0
  time_history <- c()

  # while walking
  while (y[t] < abs(stop_condition))
  { 
    if (t > 1) {
      y[t+1] <- abs(y[t] + rnorm(n=1,mean=mean_of_walk,sd=sd_of_walk))
      t <- t + 1 
    }
    
    t <- t + 1
    time_history[t] = t
    y[t] <- y[t-1]
  }
  return (plot(time_history,y,pch=19,cex=0.2))
}

rw()


