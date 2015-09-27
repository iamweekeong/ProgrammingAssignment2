## The functions calculate and cache the inverse of a matrix.

## The first function creates an object in which to cache the inverse of the matrix.

makeCacheMatrix<-function(x=matrix()){
	m<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
	}
	get<-function()x
	setmatrix<-function(solve)m<<-solve
	getmatrix<-function()m
	list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}

## The second function calculates the inverse of the matrix and caches it. If it is already calculated, it just retrieves the inverse from the cache. 

cacheSolve<-function(x==matrix(),...){
	m<-x$getmatrix()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	matrix<-x$get()
	m<-solve(matrix,...)
	x$setmatrix(m)
	m
}