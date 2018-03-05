## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	# inverse from the cache
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	# Define function to get the value of the matrix
	get <- function() x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m
    # Return a list with the above four functions
    list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     m <- x$getInverse()
     #If the cache was not empty, we can just return it
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     # Get value of matrix
     data <- x$get()
     # Calculate inverse
     m <- solve(data)
     # Cache the result
     x$setInverse(m)
     # Return the inverse
     m
}
