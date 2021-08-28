sub report(s as string,x as integer,y as integer,size as integer)
	dim ss as string
	locate y,x
	ss=space(size)
	lset ss,s
	print ss;
end sub
function inputs(size as integer)as string
	dim ins as string
	dim inss as string
	dim key as string
	dim x as integer
	dim y as integer
	x=pos()
	y=csrlin()
	do
		do
			key=inkey()
			if key<>"" then exit do
		loop
		if key=chr(13) then exit do
		if key=chr(8) then
			if len(ins)>0 then 
				ins=mid(ins,1,len(ins)-1)
			end if
			report ins,x,y,size
		else
			if key>chr(31) and len(ins)<size then ins=ins+key 
			report ins,x,y,size
		end if
	loop
	return ins
end function 

dim a as string
color 15,5
cls
locate 1,1
a=inputs(8)
locate 2,1
print a
