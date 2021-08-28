#include "vbcompat.bi"
function tostart(y as integer,m as integer,d as integer)as integer
	dim dd as integer
	dim ddd as integer
	dim ddays(1 to 12) as integer
	dim i as integer
	ddays(1)=31
	ddays(2)=28
	ddays(3)=31
	ddays(4)=30
	ddays(5)=31
	ddays(6)=30
	ddays(7)=31
	ddays(8)=31
	ddays(9)=30
	ddays(10)=31
	ddays(11)=30
	ddays(12)=31
	ddd=y/4
	if ddd*4=y and m > 2 then dd=d+1
	if m>1 then 
		for i=1 to m-1
			dd=dd+ddays(i)
		next
	end if
	dd=dd+d-1
	return dd
end function

function years(y as integer,m as integer,d as integer)as integer
	dim yearss as integer
	dim y2000 as integer
	dim leapyears as integer
	y2000=2000
	yearss=y-y2000
	leapyears=yearss/4
	if y>2000 then leapyears=leapyears+1
	yearss=yearss*365+leapyears
	yearss=yearss+tostart(y,m,d)
	return yearss
end function 

dim xx as integer
dim yy as integer
dim y as integer
dim m as integer
dim d as integer
dim wd as integer
dim dt as double
color 15,5
cls
print "get days from 2000 year"
do
	print "year: ";
	xx=pos
	yy=csrlin
	input  y
	if y =0 then exit do
	locate yy,xx+10
	print "month: ";
	xx=pos
	yy=csrlin
	input  m
	if m =0 then exit do
	locate yy,xx+10
	print "day: ";
	xx=pos
	yy=csrlin
	input  d
	if y =0 then exit do
	locate yy,xx+10
	y=years(y,m,d)
	if y<0 then 
		print "year must be uper than 2000"
	else
	
		print y
	end if 
loop
