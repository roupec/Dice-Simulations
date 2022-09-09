vec<-sapply(1:500,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:25)
{
	plot(1:(i*20),vec[1:(i*20)],ylim=c(0,100),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#b5883a');abline(h=36,col='red')
},
movie.name="Sim-3.gif",
interval=0.2
)
