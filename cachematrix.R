## Put comments here that give an overall description of what your
## functions do

## Ok, so here we define a function which can be used to cache a matrix

makeCacheMatrix <- function(x = matrix()) {
        
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## And here we calculate the inverse of a matrix, if this inverse matrix has not already been calculated
## If this is the case, the cached inverse matrix is used

cacheSolve <- function(x) {
        
        m <- x$getmatrix()
        if(!is.null(m)) { ##if m is not empty return the cached inverse matrix
                message("getting cached data")
                return(m)
        }
        data <- x$get() ##if m is empty calculate the inverse matrix 
        m <- solve(data, ...)
        x$setmatrix(m) ##and store the result
        m
        ## Return a matrix that is the inverse of 'x'
        ## Great stuff, brushing up my matrix calculation and learning R at the same time
        ## I understand what this code does, but for this simple example I believe there are easier
        ## solution. Honestly, I could not have written this code from scratch. 
        ## Thanks for reviewing me, I alreay have enough points to pass so don't spare me, I'm here to learn.
}