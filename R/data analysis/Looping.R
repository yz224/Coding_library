#1. Apply function: (generally goes faster than for loop)
#Example:

func <- function(x,a,n){
  return(x/a + n)
}

mtx <- matrix(seq(1,20,1),nrow=4)

### sapply(matrix, function, other arguments except the one you want to loop through)
sapply(mtx, func, a=2,n=2) # Take x as the target
						   # Go through with the sample order of constructing a matrix
sapply(mtx, func, x=100,n=2) # Take a as the target

# Then we can make sapply result as the matrix we want
matrix(sapply(mtx, func, a=2,n=2),nrow=4)
t(matrix(sapply(mtx, func, a=2,n=2),nrow=4))


### apply(matrix, function, other arguments except the one you want to loop through)
apply(mtx, 2, func, a=2,n=2) # Same way with sapply, but automatically return matrix, go by column
apply(mtx, 1, func, a=2,n=2) # Same way with sapply, but automatically return matrix, go by rows
apply(mtx, c(1,2), func, a=2,n=2) # Same way with sapply, but automatically return matrix, go by rows

### Why 2 and c(1,2) the same? because the function only take one value each time
### For functions that could take a list of value, things will be different

x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
dimnames(x)[[1]] <- letters[1:8]
apply(x, 2, mean) # Calculate by column
apply(x, 1, mean) # Calculate by row
apply(x,c(1,2), mean) # Calculate by each position

