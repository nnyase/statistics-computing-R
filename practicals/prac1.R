# Q 1 
log(seq_length(101))

#Q 2
set.seed(20230130) # set starting point for random number generator 
y <- rexp(10000)

# q 3
max(y)
which(y == max(y))

# Q 4
length(which(y>2))
length(which(y>2))/100

# Q5 
ind <- seq(1, length(y), by = 2)
y2 <- y[ind]
y2

# Q6
y3<- replace(y2, y2>3, 3)
mean(y3)

#Q7
var(y3)
