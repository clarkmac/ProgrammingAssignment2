## The first function will create a specail "matrix" that can save its inverse
## to cache.  The second function computes the inverse of this special "matrix" 
## and returns it, unless it's already been cached. 

## Write a short comment describing this function, sets m and y to Null

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setmatrix <- function(mean) m <<- mean
      getmean <- function() m
## Out put a list      
      list(setmatrix = setmatrix, getmatrix = getmatrix,
           setinverse = setinverse,
           getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
