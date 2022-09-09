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
movie.name="Sim-6.gif",
interval=0.2
)
