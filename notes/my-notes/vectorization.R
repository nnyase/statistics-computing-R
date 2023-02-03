M <- matrix(c(1:10,11:20),nrow= 10,ncol = 2)

apply(M,1:2,function(x) x/2)

apply(M,2,function(x) length(x[x >10]))
head(airquality)
apply(airquality,2,mean)


l <- list(a=1:10,b=rnorm(5))
l

lapply(l,mean)
lapply(l,sum)


library(gapminder)
with(gapminder,tapply(lifeExp,continent,mean))
