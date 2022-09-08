rolls<-function() #function
{
	x<-sample(1:6,1);y<-sample(1:6,1) 	#roll twice
	i=2 					#set the roll counter
  	while(abs(x-y)!=1) 			#while their absolute difference is not 1
	{
		x<-y;y<-sample(1:6,1) 	#replace the second roll with the first one and roll again
    		i=i+1 			#increase the counter
	}
	return(i) 	#return no. of rolls
}

mean(replicate(5,mean(replicate(10000,rolls()))))
