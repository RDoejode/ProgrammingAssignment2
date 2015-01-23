## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function takes a matrix as a parameter or initializes one if called without the matrix parameter. The function has functions that sets and gets the matrix. The function also has functions to set the inverse matrix and get the inverse matrix of the original matrix. 
makeCacheMatrix <- function(x = matrix()) {

	m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,setsolve = setsolve,getsolve = getsolve)
}


## Write a short comment describing this function
#This function takes a matrix created by the above function and returns an inverse of the matrix if the inverse matrix exists in the cache. If the inverse is not there in the cache, an inverse is computed.
cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'

	m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
