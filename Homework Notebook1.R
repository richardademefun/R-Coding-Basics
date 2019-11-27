

rm(list = ls())
m <- 10
n <- 100
for(ii in 1:m){
  count <- 0
    x <- rnorm(n = n, mean = 0, sd = 1)
  for(i in 1:n){
    if(x[i]>-1 & x[i]<1){
      count <- count + 1
    }
  }
  
    dist <- (count/n)*100
    #ans[ii] <- dist
    print(paste0("the percentage of random values between -1 and 1 for n = ",m, " is ", dist,"%"))
m <- m*10
}
print(paste0("As n tends toward inf the percentage of values between -1 and 1 tends towards 68.2%"))


