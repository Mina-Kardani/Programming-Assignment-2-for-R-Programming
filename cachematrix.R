## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

   matInv <- NULL
   set <- function(y)
   {
      x<<- y
      myInv<<- NULL
   }
   get <- function() x
   setInv <- function(curInv) matInv <<- curInv
   getInv <- function() matInv
   list (set=set,get=get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...){
        ## Return a matrix that is the inverse of 'x'
   matInv <- x$getInv()
   
   if(!is.null(matInv))
   {
      message("getting cached date")
     return (matInv)
   }
   data <- x$get()
   matInv <- solve(data)
   x$setInv(matInv)
   matInv
}
