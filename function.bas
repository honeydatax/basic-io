const pi =3.1415927
function rectangle(w as double,h as double)as double
	dim a as double
	a=w*h
	return a
end function


dim xx as double
dim yy as double
dim zz as double
dim x as integer
dim y as integer
color 15,5
cls
print "get the area of box"
do
	print " w: ";
	x=pos+10
	y=csrlin
	input xx
	if int(xx)=0 then exit do
	locate y,x
	print "h: ";
	x=pos+10
	y=csrlin
	input yy
	if int(yy)=0 then exit do
	locate y,x
	print rectangle(xx,yy)
loop
