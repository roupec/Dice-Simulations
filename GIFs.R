#1
vec<-sapply(1:2000,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:20)
{
	plot(1:(i*100),vec[1:(i*100)],ylim=c(0,12),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#2f476e');abline(h=6,col='red')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-1.gif",
interval=0.2
)


#2
vec<-sapply(1:750,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:25)
{
	plot(1:(i*30),vec[1:(i*30)],ylim=c(0,100),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#265e35');abline(h=42,col='red')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-2.gif",
interval=0.2
)


#3
vec<-sapply(1:500,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:25)
{
	plot(1:(i*20),vec[1:(i*20)],ylim=c(0,100),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#b5883a');abline(h=36,col='red')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-3.gif",
interval=0.2
)


#4
vec<-sapply(1:1000,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:20)
{
	plot(1:(i*50),vec[1:(i*50)],ylim=c(2,15),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#70275d');abline(h=4.68,col='red')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-4.gif",
interval=0.2
)


#4a
vec<-sapply(1:1000,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:20)
{
	plot(1:(i*50),vec[1:(i*50)],ylim=c(2,6),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#bd16c9');abline(h=3.24,col='red')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-4a.gif",
interval=0.2
)


#5
mean_vec<-NULL
for(i in 1:100)
{
	x<-replicate(10000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}

saveGIF(for(i in 1:50)
{
	plot(1:(i*2),mean_vec[1:(i*2)],ylim=c(0,1),
		main='Simulation',xlab='No. of throws',
		ylab='Probability',type='l');
	abline(v=60,col='red')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-5.gif",
interval=0.2
)


#6
mean_vec<-NULL
for(i in 1:300)
{
	x<-replicate(10000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}

saveGIF(for(i in 1:50)
{
	plot(1:(i*6),mean_vec[1:(i*6)],ylim=c(0,0.01),
		main='Simulation',xlab='No. of throws',
		ylab='Probability',type='l');
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-6.gif",
interval=0.2
)


#7
saveGIF(for(i in 2:12)
{
	persp(x<-1:i,y<-1:i,
		mean_mat[c(1:i),c(1:i)],
		theta=30,phi=30,
		xlab='Person A rolls',
		ylab='Person B rolls',
		zlab='Probability of getting the same',
		main='Simulation graph',
		zlim=c(0,1),
		col='#590507')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-7.gif",
interval=0.2
)


#8
vec<-sapply(1:1000,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:20)
{
	plot(1:(i*50),vec[1:(i*50)],ylim=c(6,10),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#425759');abline(h=7.5101,col='red')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-8.gif",
interval=0.2
)


#9
mean_vec<-NULL
for(i in 1:20)
{
	x<-replicate(10000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}
saveGIF(for(i in 1:20)
{
	plot(1:i,mean_vec[1:i],ylim=c(3,6),
		main='Simulation',xlab='No. of throws',
		ylab='Expected score',type='l',
		col='#170301')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-9.gif",
interval=0.2
)


#10
mean_vec<-NULL
for(i in 1:20)
{
	x<-replicate(100000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}
mean_vec
saveGIF(for(i in 1:20)
{
	plot(1:i,mean_vec[1:i],ylim=c(0,1),
		main='Simulation',xlab='No. of throws',
		ylab='Probability',type='l',
		col='blue')
},
movie.name="D:\\Debartha\\BSc(Stat)\\Sem-6\\Sim-10.gif",
interval=0.2
)