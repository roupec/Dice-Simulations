rolls<-function(n,m) #function
{
	a<-sample(1:6,n,replace=T);b<-sample(1:6,m,replace=T) #roll the dice
	return(any(unique(a)%in%unique(b))) #check if any from the two set matches
}

mean_mat<-matrix(,nrow=12,ncol=12) #create a 12*12 matrix
for(i in 1:12) #loop 12 times
{
	for(j in 1:12) #loop 12 times again
	{
		x<-replicate(10000,rolls(i,j)) #repeat the function 10000 times
		mean_mat[i,j]<-mean(x) #add the mean of the above repitition to the matrix
	}
}
