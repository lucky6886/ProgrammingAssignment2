
##Programming assignment 2: cached matrix inversion function  
## The function creates special matrix object with the function to get inverse from cache 

makeCacheMatrix <- function(x = matrix()) {
##Initialize the inverse to NULL
  iv<-NULL 
##Set the Matrix 
  set<-function(matrix){
    mt<<-matrix
    iv<<-NULL
  }
##Get the Matrix
  get<-function(){
    mt
  }
##Set the inverse of the Matrix 
setinverse<-function(inverse){
  iv<<-inverse
}
##Get the inverse of the Matrix
getinverse<<-function(){
  iv
}
##Return a list of "set" and "get" function methods
list(set=set,get=get,
     setinverse=setinverse,
     getinverse=getinverse)
}




## Compute the inverse of matrix and returns cached resukts if the inverse is already calculated.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
mt<-x$getinverse()

##Return inverse if it is already set
if(!is.null(mt)){
  message("getting cached inverse")
  return(mt)
}

##Else, culculate,store and return 
data<-x$get()
mt<-solve(data)%*%data
x$setinverse(mt)
mt
  
}