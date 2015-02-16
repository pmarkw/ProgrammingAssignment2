## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeMerkMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
    
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() {
    if(!is.null(inv)) {
      message("getting cached data")
      } else inv <<- solve(x)
    inv
  }
  
  
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



