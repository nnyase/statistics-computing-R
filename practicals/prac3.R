# Ndivhuwo Nyase
# Prac 3

head(airquality)

summary(airquality)
#Question 1
length(airquality[is.na(airquality)])
#Question 2

mean(airquality$Ozone,na.rm=TRUE)
sd(airquality$Ozone,na.rm=TRUE)
min(airquality$Ozone,na.rm=TRUE)
max(airquality$Ozone,na.rm=TRUE)

mean(airquality$Temp,na.rm=TRUE)
sd(airquality$Temp,na.rm=TRUE)
min(airquality$Temp,na.rm=TRUE)
max(airquality$Temp,na.rm=TRUE)

#Question 3
cars
x <- cars$speed
y <- cars$dist
xt <- t(x)
inv <- solve(x%*%xt)
beta <-inv %*% xt %*% y
beta

#Question 4
m1 <- lm(dist ~ speed, data = cars); summary(m1)
#Question 5
southafrica<-gapminder[gapminder$country == 'South Africa', 4]

colMeans(southafrica, na.rm = TRUE)




