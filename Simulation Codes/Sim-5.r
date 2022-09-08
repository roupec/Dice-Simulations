rolls<-function(n) #function
{
	x<-sample(1:6,n,replace=T) #roll n times
	if(length(unique(x))==6) return(1) 	#if the number of unique outcomes is 1
						#return 1
	else return(0) #else return 0
}
