## Put comments here that give an overall description of what your
## functions do

## Function creates special Matrix which contain function to set and get value of matrix and its inverse
    
makeCacheMatrix <- function(x = matrix()) {
m <- null
set <- function(y) {
                x <<- y
                m <<- NULL
        }
get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)		
}


## Checks if the inverse of matrix is calculated and gets it from cache, else it calculates the matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
