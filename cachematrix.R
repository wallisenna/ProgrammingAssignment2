## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Storage the matrix
makeCacheMatrix <- function(x = matrix()) {
              inv <- NULL
             set <- function(y) {
                        x <<- y
                        inv <<- NULL
                }
                get <- function() {x}
                setinverse <- function(inverse) {inv <<- inverse}
                getinverse <- function() {inv}
                list(set = set, get = get,
                     setinverse = setinverse,
                     getinverse = getinverse)

}


## verify if the inverse was already calculated if not calculate it
cacheSolve <- function(x, ...) {
                inv <- x$getinverse()
                if(!is.null(inv)) {
                        message("getting cached data")
                        return(inv)
                }
                data <- x$get()
                inv <- solve(data, ...)
                x$setinverse(inv)
                inv
        }
        
