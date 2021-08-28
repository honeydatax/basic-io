const pi =3.1415927
function box(w as double,h as double,z as double)as double
	dim a as double
	a=w*h*z
	return a
end function


dim xx as double
dim yy as double
dim zz as double
dim x as integer
dim y as integer
color 15,5
cls
print "get the volume of box"
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
	print " z: ";
	x=pos+10
	y=csrlin
	input zz
	if int(zz)=0 then exit do
	locate y,x
	print box(xx,yy,zz)
loop
