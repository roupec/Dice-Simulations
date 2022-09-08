rolls<-function() #function
{
	j=0 			#counter to check if the current roll is 6
	x<-sample(1:6,1) 	#roll once
	i=1 			#increase the counter
	if(x==6) 		#if the roll is a six
	{
		j=1 			#set this counter to 1
		x<-sample(1:6,1) 	#roll again
		i=i+1 			#increase the counter
		if(x!=6) j=0 		#if the roll is not 6, set j back to 0
	}
	while(j!=1) 	#while j is 0
	{
		x<-sample(1:6,1) 	#roll once
		i=i+1 			#increase the roll counter
		if(x==6) 		#if the roll is a six
		{
			j=1 			#set this counter to 1
			x<-sample(1:6,1) 	#roll again
			i=i+1 			#increase the counter
			if(x!=6) j=0 		#if the roll is not 6, set j back to 0
		}
	}
	return(i) #return the roll counter
}

mean(replicate(5,mean(replicate(10000,rolls()))))
