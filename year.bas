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
print "get years from 2000"
do
	print "year: ";
	xx=pos
	yy=csrlin
	input  y
	if y =0 then exit do
	locate yy,xx+10
	print y-2000
loop
