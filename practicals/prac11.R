
u <- runif(20, min = 0, max = 1)

y <- c()
categorize <- function(x){
  if (x < 0.3){
    append(y,'low')
  }
  
  else if (x > 0.3 & x <= 0.6){
    append(y,'medium')
  }
  
  else if (x >= 0.6){
    append(y,'high')
  }
} 

u.cat <- lapply(u,FUN = categorize)

#Question 3

first = matrix(38:67, 3)
second = matrix(56:91, 3)
third = matrix(82:144, 3)
fourth = matrix(46:95, 5)
listobj = list(first, second, third, fourth)

listobj

second_col<- function(x) {
  return (apply(x,2,print))
}

lb<-lapply(listobj,second_col)
lb


# Question 4
mat <- matrix(runif(30),nrow= 10,ncol=3)
dim(mat)
lapply(mat,function(x) diag(x))
