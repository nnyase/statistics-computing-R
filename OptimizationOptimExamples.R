
# X squared Minimization
fx <- function(x){
  return(x * x)
}

optim(2,fn=fx, method='L-BFGS-B')

# Likelihood Estimation Minimization
lab