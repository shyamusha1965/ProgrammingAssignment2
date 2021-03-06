## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  k <- NULL
  set <- function(y){
    x <<- y
    k <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) k <<- inverse
  getInverse <- function() k 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
  k <- x$getInverse()
  if(!is.null(k)){
    message("getting cached data")
    return(k)
  }
  matrix1 <- x$get()
  k <- solve(matrix1,...)
  x$setInverse(k)
  k
}


