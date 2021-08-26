public const cttyx=79
public const cttyy=16
public sub getstar(byref x as integer,byref y as integer,maxx as integer,maxy as integer)
	x=int(rnd()*maxx)
	y=int(rnd()*maxy)
end sub
public sub report(x as integer,y as integer,s as string)
	locate y,x,0
	print s;
end sub


dim i as integer
dim x(0 to 12)  as integer
dim y(0 to 12)  as integer
color 15,5
cls
for i=0 to 11
	getstar x(i),y(i),cttyx,cttyy
next 
for i=0 to 11
	report x(i),y(i),"*"
next 
locate 17,1




