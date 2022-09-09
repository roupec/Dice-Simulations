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
movie.name="Sim-7.gif",
interval=0.2
)
