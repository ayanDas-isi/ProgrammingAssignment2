## 1st function will calculate the inverse and
#catch it's value and 2nd function will return the inverse value if already exist


makeCacheMatrix <- function(x = matrix()) {
  iv<- NULL
  set <- function(y) {
    x <<- y
    iv <<- NULL
  }
  get <- function() x
  setInv <- function(solve) iv <<- solve
  getInv <- function() iv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  iv <- x$getInv()
  if(!is.null(iv)) {
    message("getting cached data")
    return(iv)
  }
  data <- x$get()
 iv <- solve(data, ...)
  x$setInv(iv)
  iv
}
#l=makeCacheMatrix(matrix(rexp(9), 3))
#cacheSolve(l)
