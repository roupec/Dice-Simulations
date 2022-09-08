rolls<-function(n) #function
{
    x<-sample(1:6,n,replace=T) #roll n times
    return(max(x)) #return the max face value obtained
}

mean_vec<-NULL #create a null vector
for(i in 1:15) #loop 15 times
{
	x<-replicate(10000,rolls(i)) #repeat 10000 times with i as n
	mean_vec<-c(mean_vec,mean(x)) #add the mean to the vector
}
