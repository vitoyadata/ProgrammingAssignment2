## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object
## that can cache its inverse.
## We receive a matrix and we initialize a variable to store the inverted matrix
## We create the get and set functions of the matrix and the inverted. 
##
##

makeCacheMatrix <- function(matrix = matrix()) {
  inv <- NULL
  
  set <- function( mtrx ) {
    matrix <<- mtrx
    inv <<- NULL
  }
  
  get <- function() matrix

  setInverse <- function(inverse) inv <<- inverse
  
  getInverse <- function() inv
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function computes the inverse of the special
## "matrix" returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then
## `cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getInverse()
  #print(m)
  # Check if the inverse is not NULL before calculate 
  if( !is.null(inv) ) {
    message("...getting cached data...")
    return(m)
  }
  # get the matrix
  data <- x$get()
  # Calculate the inverse of the matrix
  # print(data)
  inv <- solve(data) 
  # Save the inverse of the matrix in the cache
  x$setInverse(inv)
  # Return the matrix
  inv
}
