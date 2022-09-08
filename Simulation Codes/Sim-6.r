rolls<-function(n) #function
{
	j=0 				#set the counter for subsequence to 0
	x<-sample(1:6,n,replace=T) 	#roll n times
	y<-which(x==1) 			#see which rolls are 1
	for(i in y) 			#for every such rolls
	{
		if(n-i<5) break 	#if the index goes out of bounds, break
		else if((x[i+1]==2)&&(x[i+2]==3)&&(x[i+3]==4)&&(x[i+4]==5)&&(x[i+5]==6))
					#else check if the subsequence is 23456 or not
		{
			j=1 		#if it is 23456, set j as 1
			break 		#and break from the loop
		}
	}
	return(j) #return the value of j
}
