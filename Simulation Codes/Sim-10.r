rolls<-function(n) #function
{
	x<-sample(1:6,n,replace=T) #roll n times
	return(all(x==sort(x))) #return if all the values are in a
	#non-decreasing sequence or not
}

n<-10 #take n as 10
x<-replicate(1000000,rolls(n)) #repeat the function with n as 10
mean(x) #take the mean
