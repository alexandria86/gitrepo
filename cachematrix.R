makeCasheMatrix <- function(x = matrix) {
  inv<-NULL
  set<-function(y) {
    x<<-y
    inv<<-NULL
  }git commitction() x
set_inverse<-function(inverse) inv<<-inverse
get_inverse<-function() inv
list(set=set, get=get, 
     set_inverse = set_inverse, get_inverse = get_inverse)
}


cacheSolve <- function(x, ...) {
        
  inv<-x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return (inv)
  }
  matr<-x$get()
  inv<-solve(data, ...)
  x$setinv(inv)
  return(inv)
}


