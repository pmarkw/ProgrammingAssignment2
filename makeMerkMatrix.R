## We were given two function stubs for this assignment
## But there is no need to split this into two functions
## You can put all the code into a single function and still
##  take advantage of scoping rules to cache the inverse
##  (or anything else) in your persistant object.

## makeMerkMatrix takes a matrix as its arguement (defaults to a 1x1 matrix with NA)
##  and returns an object (a list of three functions) that allow you store (set) and retrieve (get)
##  a matrix and retrieve (get) its inverse matrix.  The fist time you call getinverse it is calculated.
##  In subsequent calls it is reteived from cache.

makeMerkMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
    
  }
  get <- function() x
  getinv <- function() {
    if(!is.null(inv)) {
##      message("getting cached data") ## Uncomment For Testing
      } else inv <<- solve(x)
    inv
  }
  
  
  
  list(set = set, get = get,
       getinv = getinv)
}



