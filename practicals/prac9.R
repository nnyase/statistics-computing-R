# Ndivhuwo Nyase
# Prac 09

x <- rpois(n=100,lambda=2)
hist(x)

count <- 0
for(i in x){
 
  if (i == 0){
    count <- count+1
  }
}
count

num.zer <- length(x[x == 0])
num.zer

count == num.zer