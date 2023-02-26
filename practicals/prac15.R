counts <- c(3, 1, 1, 3, 1, 4, 3, 2, 0, 5, 0, 4, 2)

pois.ll <- function(lambda) { -sum(dpois(y, lambda, log = TRUE))
}

mean(counts)
loglike <- optim(par=1, ## starting value
      fn=pois.ll,
      y = counts,## need to specify for 1-D optimization
      lower=0.001, upper=10)
loglike
lamda_est <- loglike$par
lamda_est
set.seed(0)

fit <- glm(counts ~ 1, family = poisson())
fit


optim(par = 5, fn = pois.ll,
      method="L-BFGS-B",
      lower = 0.0001,
      upper=Inf)
