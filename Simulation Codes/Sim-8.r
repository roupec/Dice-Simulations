rolls<-function() #function
{
	a<-sample(1:6,2);i<-1 #roll twice and set the roll counter as 1
	while(length(unique(a))!=6) #until all the faces have appeared
	{
		a<-c(a,sample(1:6,2,replace=T)) #continue rolling in pairs
		i=i+1 #and increase the counter
	}
	return(i) #return the number of rolls
}

x<-replicate(10000,rolls()) #repeat this 10000 times
mean(x) #take the mean
