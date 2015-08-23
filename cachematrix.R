## Put comments here that give an overall description of what your
## functions do

# The functions below are used 
# to create a special object-matrix  and chache its inverse 

## Write a short comment describing this function

# Cache Matrix for inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL # to store the results
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  get <- function () x # input matrix
  setInv <- function(Inv) inverse <<- inv
  getInv <- function() inverse
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
  
}
  

## Return the inverse of the matrix created before

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
    inverse <- x$getInv()
    if(!is.null(inverse)) {
      message("getting cached data")
      return(inverse)
    }
    data <- x$get()
    inverse <- solv(data, ...)
    x$setInv(inverse)
    inverse
  
}
