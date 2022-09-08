rolls<-function()
{
	j=0		 #counter to check if the sequence is 65
	x<-sample(1:6,1) #roll once
	i=1		 #increase the roll counter
	while(x==6)	 #while the roll results in a 6
	{
		j=1		 #set this counter to 1
		x<-sample(1:6,1) #roll once again
		i=i+1		 #increase the roll counter
		if(x!=5) j=0	 #if that is not 5, replace j with 0
	}
	while(j!=1) #while j is not 1
	{
		x<-sample(1:6,1) #roll once
		i=i+1		 #increase the roll counter
		while(x==6)	 #is the roll is 6
		{
			j=1		 #set j as 1
			x<-sample(1:6,1) #roll again
			i=i+1		 #if this roll is not 5
			if(x!=5) j=0	 #set j back to 0
		}
	}
	return(i) #return the roll counter
}

mean(replicate(5,mean(replicate(10000,rolls()))))
