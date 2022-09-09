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
movie.name="Sim-9.gif",
interval=0.2
)
