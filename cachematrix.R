## The first function will create a specail "matrix" that can save its inverse
## to cache.  The second function computes the inverse of this special "matrix" 
## and returns it, unless it's already been cached. 

## formate will be amatrix <- makeCacheMatrix(inputmatrix) with input matrix
## being a numerical matrix  

makeCacheMatrix <- function(x = matrix()) {
      mvar <- NULL
## set the matrix,  this NEVER get's called in the current assignment, matrix 
## is passed to high level function as x, so yfree would be passed on a call to 
## setmatrix
      setmatrix <- function(yfree) {
            x <<- yfree
            mvar <<- NULL
      }
## get the input matrix value which is x passed to high level function
      getmatrix <- function() {
            x
      }      
## set the inverse of the matrix when called      
      setinverse <- function(inverse) {
            mvar <<- inverse
      }      
## set getinverse returns the previouly calculated inverse when called 
      getinverse <- function() {
            mvar
      }
## Out put a list of functions that are available in the closure to be called      
      list(setmatrix = setmatrix, getmatrix = getmatrix,
           setinverse = setinverse,
           getinverse = getinverse)
}


## This next function is called with the list of functions outputed from 
## makeCacheMatrix and returns the inverse of the matrix and if it's already
## been calculated on a prior run it just returns that.  

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
## set mvar to the inverse and check to see if it's been cached      
     mvar  <- x$getinverse()
     if(!is.null(mvar)){
        message("getting cached data")
        return(mvar)
     }
## if it has not been cached previously this is where we put the matrix into 
## data and use the solve function to calc the inverse of the matrix
## we call the setinverse function passing it the inverse
     data <- x$getmatrix()
     mvar  <- solve(data)
     x$setinverse(mvar)
## return the inverse to console
     mvar
}
