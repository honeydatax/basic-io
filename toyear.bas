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
print "days to end of year"
	dt=now()
	d=1
	m=1
	y=year(dt)+1
	dt2=dateserial(y,m,d)
	print datediff("d",dt,dt2)
