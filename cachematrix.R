## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#It creates a matrix that can be cached


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL #create a place to keep the inverse matrix's results
  set <- function(y){ #this function allows us to input values outside the environment
  x <<- y 
  inv <<- NULL
  }
  get <- function() x #anonymous function
  setinv <- function(solveMatrix) inv <<- solveMatrix
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv) #return
}


## Write a short comment describing this function : The function bellow provides values corresponding 
#to the inverse of a special matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cache data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}
