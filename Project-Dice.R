#1
rolls<-function()
{
	x<-sample(1:6,1)
	i=1
	while(x!=6)
	{
		x<-sample(1:6,1)
		i=i+1
	}
	return(i)
}
mean(replicate(10000,rolls()))
mean(replicate(5,mean(replicate(10000,rolls()))))

#2
rolls<-function()
{
	j=0
	x<-sample(1:6,1)
	i=1
	if(x==6)
	{
		j=1
		x<-sample(1:6,1)
		i=i+1
		if(x!=6) j=0
	}
	while(j!=1)
	{
		x<-sample(1:6,1)
		i=i+1
		if(x==6)
		{
			j=1
			x<-sample(1:6,1)
			i=i+1
			if(x!=6) j=0
		}
	}
	return(i)
}
mean(replicate(10000,rolls()))

#3
rolls<-function()
{
	j=0
	x<-sample(1:6,1)
	i=1
	while(x==6)
	{
		j=1
		x<-sample(1:6,1)
		i=i+1
		if(x!=5) j=0
	}
	while(j!=1)
	{
		x<-sample(1:6,1)
		i=i+1
		while(x==6)
		{
			j=1
			x<-sample(1:6,1)
			i=i+1
			if(x!=5) j=0
		}
	}
	return(i)
}
mean(replicate(10000,rolls()))

#4
rolls<-function()
{
	x<-sample(1:6,1);y<-sample(1:6,1)
	i=2
	while(abs(x-y)!=1)
	{
		x<-y;y<-sample(1:6,1)
		i=i+1
	}
return(i)
}
mean(replicate(10000,rolls()))

rolls<-function()
{
	x<-sample(1:6,1);y<-sample(1:6,1)
	i=2
	while(abs(x-y)>1)
	{
		x<-y;y<-sample(1:6,1)
		i=i+1
	}
return(i)
}
mean(replicate(10000,rolls()))

#5
#n<-user input
rolls<-function(n)
{
	x<-sample(1:6,n,replace=T)
	if(length(unique(x))==6) return(1)
	else return(0)
}
mean_vec<-NULL
for(i in 1:100)
{
	x<-replicate(10000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}
plot(1:100,mean_vec,type='l',xlab='No. of rolls',ylab='Probability',main='Probability that all the faces have appeared')
min(which(mean_vec==1))

#6
#n<-user input
rolls<-function(n)
{
	j=0
	x<-sample(1:6,n,replace=T)
	y<-which(x==1)
	for(i in y)
	{
		if(n-i<5)	break
		else if((x[i+1]==2) && (x[i+2]==3) && (x[i+3]==4) && (x[i+4]==5) && (x[i+5]==6))
		{
			j=1
			break
		}
	}
	return(j)
}
mean_vec<-NULL
for(i in 1:100)
{
	x<-replicate(10000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}
plot(1:100,mean_vec,type='l',xlab='No. of rolls',ylab='Probability',main='Probability that the sequence 123456 have appeared')
x<-replicate(10000,rolls(1000))
mean(x)

#7
#n<-user input;m<-user input
rolls<-function(n,m)
{
	a<-sample(1:6,n,replace=T);b<-sample(1:6,m,replace=T)
	return(any(unique(a)%in%unique(b)))
}
x<-replicate(10000,rolls(n,m))
mean(x)
mean_mat<-matrix(,nrow=12,ncol=12)
for(i in 1:12)
{
	for(j in 1:12)
	{
		x<-replicate(10000,rolls(i,j))
		mean_mat[i,j]<-mean(x)
	}
}
mean_mat
persp(x<-1:12,y<-1:12,
	mean_mat,
	theta=30,phi=30,
	xlab='Person A rolls',
	ylab='Person B rolls',
	zlab='Probability of getting the same',
	main='Simulation graph',
	col='green')

#8
rolls<-function()
{
	a<-sample(1:6,2);i<-1
	while(length(unique(a))!=6)
	{
		a<-c(a,sample(1:6,2,replace=T))
		i=i+1
	}
	return(i)
}
x<-replicate(10000,rolls())
mean(x)
mean(x>=24)

#9
#n<-user input
rolls<-function(n)
{
	x<-sample(1:6,n,replace=T)
	return(max(x))
}
mean_vec<-NULL
for(i in 1:15)
{
	x<-replicate(10000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}
mean_vec
plot(1:15,mean_vec,type='l')

#10
rolls<-function(n)
{
	x<-sample(1:6,n,replace=T)
	return(all(x==sort(x)))
}
n<-100
x<-replicate(100000,rolls(n))
mean(x)

mean_vec<-NULL
for(i in 1:20)
{
	x<-replicate(100000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}
mean_vec