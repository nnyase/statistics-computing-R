set.seed(1) #set the seed to make this example reproducible xv <- rnorm(50) #generate some random values
xv <- rnorm(50)
xv
yv <- 1 + 5*xv + rnorm(50)*2 #define an objective function
yv
#perform ordinary least squares regression using lm() function from stats package:
ols <- lm(yv~xv)
ols
plot(xv, yv)
abline(ols, col="red", lty=2)


regression_f <- function(betav,x,y){
  #x= explanatory variable
  #y = response variable
  #betav = c(intercept, slope)
  intercept <- betav[1]
  slope <- betav[2]
  fitted_values <- intercept + slope*x
  residuals <- y - fitted_values
  SSE <- sum(residuals^2) #a loss function return( SSE )
}
?optim
regression_f(c(1,10), x, y)
#you will get an error
optim(par=c(10,10), fn=regression_f)

olsfit <- optim(par=c(10,10), fn=regression_f, x=xv, y=yv)
olsfit
#no restriction set:
optim(par=c(10,10), fn=regression_f, x=xv, y=yv, method="L-BFGS-B")


#restricting the intercept:
fit2_res <- optim(par=c(10,10), fn=regression_f, x=xv, y=yv,
                  method="L-BFGS-B", lower=c(-Inf, -Inf), upper=c(0, Inf))
yfit_res <- fit2_res$par[1] + fit2_res$par[2]*xv

plot(xv, yv, xlab="x", ylab="")
abline(ols, col="red", lty=2)
lines(xv, yfit_res, col="blue", lty=2)
legend("topleft", legend = c("OLS", "Restricted"),
       col=c("red", "blue"), lty=rep(2,2), bty="n")


# Part 2

xr <- seq(-5, 5, length=1000)
f1 <- function(x){x^2}
plot(xr, f1(xr), type="l", xlab="x", ylab="f(x)")

opt1 <- optim(par=5, fn=f1)

opt1
opt2 <- optim(par=5, fn=f1, method="Brent", lower = -5, upper=10)
opt2

opt3 <- optim(par=5, fn=f1, method="Brent", lower = -5, upper=-1)
opt3

f2 <- function(x){
  #x = c(,) i.e. it must have two elements!!! x1 <- x[1]
  x2 <- x[2]
  x1^2 + x2^2 }


f2_2 <- function(x1, x2){f2(c(x1,x2))}
f2_vec <- Vectorize(FUN=f2_2,vectorize.args = c("x1", "x2"))
x1_range <- seq(from = -5, to = 5, length=20)
x2_range <- seq(from = -5, to = 5, length=20)
z <- outer(X = x1_range, Y = x2_range, FUN= "f2_vec" )

par(mfrow=c(1,1), pty="s")
contour(x1_range, x2_range, z, nlevels=20, xlab=expression(x[1]), ylab=expression(x[2]))