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
movie.name="Sim-5.gif",
interval=0.2
)
