vec<-sapply(1:1000,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:20)
{
	plot(1:(i*50),vec[1:(i*50)],ylim=c(2,15),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#70275d');abline(h=4.68,col='red')
},
movie.name="Sim-4.gif",
interval=0.2
)
