#1. Apply function: (generally goes faster than for loop)
#Example:

func <- function(x,a,n){
  return(x/a + n)
}

mtx <- matrix(seq(1,20,1),nrow=4)

# sapply(matrix, function, other arguments except the one you want to loop through)
sapply(mtx, func, a=2,n=2) # Take x as the target
sapply(mtx, func, x=100,n=2) # Take a as the target

# Then we can make sapply result as the matrix we want
matrix(sapply(mtx, func, a=2,n=2),nrow=4)
t(matrix(sapply(mtx, func, a=2,n=2),nrow=4))
