vec<-sapply(1:2000,\(vec) mean(replicate(vec,rolls())))

saveGIF(for(i in 1:20)
{
	plot(1:(i*100),vec[1:(i*100)],ylim=c(0,12),
		main='Simulation',xlab='No. of samples',
		ylab='Expected no. of throws',pch=16,
		col='#2f476e');abline(h=42,col='red')
},
movie.name="Sim-1.gif",
interval=0.2
)
