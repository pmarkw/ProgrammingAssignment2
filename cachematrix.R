## This file contains two functions: makeCacheMatrix & cacheSolve
##  makeCacheMatrix returns an object with a persistent matrix and its inverse
##  cacheSolve called with an arguement of an object created by makeCacheMatrix
##  returns the matix inverse as stored or (if null) calculates it.


## makeCacheMatrix takes a matrix as its arguement (defaults to a 1x1 matrix with NA)
##  and returns an object (a list of four functions) that allow you store (set) and retrieve (get)
##  a matrix and a second matrix intended to be the inverse of the original matrix.
##  Note that there is nothing in this function to guarantee that the "inverse" stored is 
##    really the inverse of this matrix.

makeCacheMatrix <- function(x = matrix()) {

      inv <- NULL

      set <- function(y) {
        x <<- y
      inv <<- NULL

      }
      get <- function() x
      setinverse <- function(inverse) inv <<- inverse
      getinverse <- function() inv
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## cacheSolve is a function that acts on the object created by makeCacheMatrix
##  and either returns the non-NULL inverse matrix stored in the object
##  or calculates the inverse, stores it in the object, and returns it.

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
      
      inv <- x$getinverse()

      if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
      }

      data <- x$get()

      inv <- solve(data)

      x$setinverse(inv)

      inv

}
