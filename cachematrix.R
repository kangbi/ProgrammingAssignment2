## Put comments here that give an overall description of what your
## functions do


## This will Create Inverse Matrix

makeCacheMatrix <- function(x = matrix()) {
#Initialize Inv
    inv <- NULL
#Function Definition
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}



## This will Cache Inversed Matrix

cacheSolve <- function(x, ...) {
#Assign Value to Inv
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinv(inv)
#Return Value 
    inv
}
