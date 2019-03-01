## This function creates a special "matrix" object that can cache its inverse

## Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.
##For this assignment, assume that the matrix supplied is always invertible.
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


##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
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



