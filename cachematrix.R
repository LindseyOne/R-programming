## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
              m<-NULL
              set<-function(y){
                 x<<-y
                   m<<-NULL
}
              get <- function() x
              setInv <- function(i) m <<- i
              getInv <- function() m
              list(set = set, get = get,
              setInv = setInv,
              getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv<-x$getInv()
        if(!is.null(inv)){
            message("getting cached data")
            return(m)
  }
        data<-x$get()
        result<-solve(data)
        x$setInv(result)
        result
     
        ## Return a matrix that is the inverse of 'x'
}


