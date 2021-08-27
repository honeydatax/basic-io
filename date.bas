#include "vbcompat.bi"
dim xx as integer
dim yy as integer
dim y as integer
dim m as integer
dim d as integer
dim wd as integer
dim dt as double
color 15,5
cls
print "get a weak day"
do
	print "year: ";
	xx=pos
	yy=csrlin
	input  y
	locate yy,xx+10
	print "moth: ";
	xx=pos
	yy=csrlin
	input  m
	locate yy,xx+10
	print "day: ";
	xx=pos
	yy=csrlin
	input  d
	dt=dateserial(y,m,d)
	locate yy,xx+10
	print weekdayname(weekday(dt))
loop
