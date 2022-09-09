vec<-sapply(1:1000,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:20)
{
	plot(1:(i*50),vec[1:(i*50)],ylim=c(2,6),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#bd16c9');abline(h=3.24,col='red')
},
movie.name="Sim-4a.gif",
interval=0.2
)
