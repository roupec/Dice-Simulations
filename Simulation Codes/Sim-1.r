rolls<-function()	#function
{
	x<-sample(1:6,1)	#roll a die once
	i=1			#increase the counter
	while(x!=6)		#until the roll is not a six
	{
		x<-sample(1:6,1)	#continue rolling
		i=i+1			#and increasing the counter
	}
	return(i)		#return the counter after the 6
}

mean(replicate(5,mean(replicate(10000,rolls()))))
