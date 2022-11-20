mean_vec<-NULL
for(i in 1:20)
{
	x<-replicate(100000,rolls(i))
	mean_vec<-c(mean_vec,mean(x))
}
mean_vec
saveGIF(for(i in 1:20)
{
	plot(1:i,mean_vec[1:i],ylim=c(0,10),
		main='Simulation',xlab='No. of throws',
		ylab='Probability',type='b',
		col='blue')
},
movie.name="Sim-10.gif",
interval=0.2
)

