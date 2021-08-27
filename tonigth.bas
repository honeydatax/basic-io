#include "vbcompat.bi"
dim xx as integer
dim yy as integer
dim y as integer
dim m as integer
dim d as integer
dim wd as integer
dim dt as double
dim dt2 as double
color 15,5
cls
	dt=now()
	d=day(dt)+1
	m=month(dt)
	y=year(dt)
	dt2=dateserial(y,m,d)
	do
		locate 1,1
		print datediff("s",dt,dt2);"       "
		sleep 1000
		dt=now()
	loop
