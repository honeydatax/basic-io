const pi =3.1415927
function circles(r as double)as double
	dim a as double
	a=4*pi*(r^2)
	return a
end function


dim r as double
dim x as integer
dim y as integer
color 15,5
cls
print "get the r of circle to get area"
do
	x=pos+10
	y=csrlin
	input r
	if int(r)=0 then exit do
	locate y,x
	print circles(r)
loop
