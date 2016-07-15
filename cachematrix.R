##Create makeCacheMatrix
makeCacheMatrix <- function(x = matrix) {
  
##setting the mean to NULL as a placeholder for a future value
   inv<-NULL
   
##defines a function to set the vector, x,  to a new vector, y, and resets the inv to NULL
  
   set<-function(y) {
    x<<-y
    inv<<-NULL
   }
   ## Returning the vector x
get<-function() x
## Setting the inverse inv
set_inverse<-function(inverse) inv<<-inverse
##returning inv
get_inverse<-function() inv
list(set=set, get=get, 
     set_inverse = set_inverse, get_inverse = get_inverse)
}


cacheSolve <- function(x, ...) {
 ## return inverse of the original matrix input to makeCacheMatrix()      
  inv<-x$get_inverse()
  # if the inverse has already been calculated
  if(!is.null(inv)) {
    message("getting cached data")
    return (inv)
  }
  ## if not, calculates the inverse 
  matr<-x$get()
  inv<-solve(data, ...)
  x$set_inverse(inv)
  return(inv)
}


