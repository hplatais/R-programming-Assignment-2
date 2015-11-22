
## The code bellow in not really concious written by myself, i apreciate any help,
##since I couldnt follow this topic or a solid/didatic material on how to make it
##right.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)

}


## I just couldnt get way to do it right...

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
