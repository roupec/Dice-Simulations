vec<-sapply(1:750,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:25)
{
	plot(1:(i*30),vec[1:(i*30)],ylim=c(0,100),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#265e35');abline(h=42,col='red')
},
movie.name="Sim-2.gif",
interval=0.2
)
