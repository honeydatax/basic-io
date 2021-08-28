#include "vbcompat.bi"
function years(y as integer)as integer
	dim yearss as integer
	dim y2000 as integer
	dim leapyears as integer
	y2000=2000
	yearss=y-y2000
	leapyears=yearss/4
	yearss=yearss*365+leapyears
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
print "get days from 2000 to the start of year"
do
	print "year: ";
	xx=pos
	yy=csrlin
	input  y
	if y =0 then exit do
	locate yy,xx+10
	y=years(y)
	if y<0 then 
		print "year must be uper than 2000"
	else
		print y
	end if 
loop
