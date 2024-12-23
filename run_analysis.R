makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Cache for inverse
  set <- function(y) {
    x <<- y       # Set matrix
    inv <<- NULL  # Reset cached inverse
  }
  get <- function() x  # Get matrix
  setInverse <- function(inverse) inv <<- inverse  # Set inverse
  getInverse <- function() inv  # Get inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
cacheSolve <- function(x, ...) {
  inv <- x$getInverse()  # Get cached inverse
  if(!is.null(inv)) {
    message("getting cached data")  # Message if using cached data
    return(inv)
  }
  data <- x$get()  # Get matrix
  inv <- solve(data, ...)  # Compute the inverse
  x$setInverse(inv)  # Cache the computed inverse
  inv  # Return the inverse
}
