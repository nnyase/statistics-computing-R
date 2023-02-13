# Ndivhuwo Nyase
# Practical 12

# Creating the slot machine 

# Create the reel with the various probabililites
reel <- 1:6 #the different categories
probs <- c( 7, 5, 3, 6, 9, 20 )/50
spin <- sample(reel, size = 1, prob = probs)

spin.test <- c(1,4,5,6,2,3)
winnings <- c(2, 2.5, 8, 4, 2.5, 0)

winnings[spin.test]

# Create the payout and symbol function
payout_and_symbol <- function(spin) {
  

if (spin==1)
  {
  payout<-2
  symbol<- 'hearts'
  } else if (spin==2)
{
  payout<-2.5
  symbol <- 'diamonds'
} else if (spin==3)
  {
  payout<-8
  symbol <- 'spades'
  }else if (spin==4)
  {
  payout<-4
  symbol <- 'clubs'
  } else if (spin==5)
  {
  payout<-2.5
  symbol <- 'joker'
    } else if (spin == 6)
  { payout <- 0 
  symbol <- 'ca'
}else { 
  payout <- 0
  symbol <- FALSE}
  
  return(c(payout,symbol))
}



# Part 1 
# 1.1 Spin the reel once.
spin <- sample(reel, size = 1, prob = probs)
spin
symbol<- payout_and_symbol(spin)
symbol[2]

spin_reel_nsim <- function(simulations,payout=FALSE,symbol=TRUE){
  i <- 0 
  result <- c()
  while(i < simulations) {
    i <- i + 1
  spin <- sample(reel, size = 1, prob = probs)
  p_s <- payout_and_symbol(spin)
  if (symbol == TRUE & payout == FALSE)
  {
    result <- append(result,p_s[2])
  } else if (payout == TRUE & symbol == FALSE) {
    result <- append(result,p_s[1])
  } else if (payout == TRUE & symbol == TRUE) {
    result <- append(result,p_s)
  } else return('CHECK PARAMETERS')
   
}
  
  return(result)
}

#1.3
part1 <- spin_reel_nsim(10000)


part1<-as.factor(part1)
# 1.4
tab <- table(part1)
tab

# 1.5
nsim<-sum(as.vector(table(part1)))

probabilities <- (tab/nsim)*100
cbind(levels(part1),probabilities)


# Part 2
# 2.1
spin <- sample(reel, size = 1, prob = probs)

#2.2 and 2.3
p_s <- payout_and_symbol(spin)
p_s[1]

#2.4
part2 <- spin_reel_nsim(10000, payout = TRUE, symbol = FALSE)

part2f <- as.numeric(part2)

mean(part2f)

#2.5
spin <- sample(reel, size = 10000, prob = probs, replace = TRUE)

true <- mean(probs[spin])
true

# Part 3

spin10 <- sample(reel, size = 10, prob = probs, replace = TRUE)
spin100 <- sample(reel, size = 100, prob = probs, replace = TRUE)
spin1000 <- sample 