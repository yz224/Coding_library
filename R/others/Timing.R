# The way to time a function

# 1. proc.time
func1 <- function(n){
	samples = rnorm(n,0,1)
	return(sum(samples))
}

n1 = 1000
n2 = 100000
n3 = 10000000

# Start the clock!
ptm <- proc.time()
func1(n1)
# Stop the clock!
proc.time() - ptm

# Start the clock!
ptm <- proc.time()
func1(n2)
# Stop the clock!
proc.time() - ptm

# Start the clock!
ptm <- proc.time()
func1(n3)
# Stop the clock!
proc.time() - ptm

# 2. system.time and replicate
#    here replicate means it will run specified times
system.time( replicate(10000, func1(n1) ) )
