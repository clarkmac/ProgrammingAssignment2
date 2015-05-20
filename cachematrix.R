## The first function will create a specail "matrix" that can save its inverse
## to cache.  The second function computes the inverse of this special "matrix" 
## and returns it, unless it's already been cached. 

## Write a short comment describing this function, sets m and y to Null

makeCacheMatrix <- function(x = matrix()) {
      mvar <- NULL
## set the matrix       
      setmatrix <- function(yfree) {
            x <<- yfree
            mvar <<- NULL
      }
## get the matrix into x?       
      getmatrix <- function() {
            x
      }      
## set the inverse of the matrix above matrix      
      setinverse <- function() {
            mvar <<- solve(getmatrix)
      }      
## 
      getinverse <- function() {
            mvar
      }
## Out put a list      
      list(setmatrix = setmatrix, getmatrix = getmatrix,
           setinverse = setinverse,
           getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     mvar  <- x$getinverse()
     if(is.null(mvar)){
           
     }
}
