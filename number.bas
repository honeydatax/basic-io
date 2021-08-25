public type ruler
	c as integer
	size as integer
	digits as integer
	s(0 to 4) as string
end type
public function counter(i as integer) as integer
	dim ii as integer
	ii=i+1
	return ii 
end function
public function ele10(r as ruler,sizes as integer)as integer
	dim i as integer
	dim ii as integer
	ii=1
	if sizes<>0 then 
		for i=0 to sizes - 1
				ii=ii*10
		next
	end if
	return ii
end function
public sub creates(r as ruler)
	dim i as integer
	dim ii as integer
	dim iii as integer
	dim iiii as integer
	dim c as integer
	dim cc as integer
	dim ccc as integer
	dim cccc as integer
	iiii=r.size
	for i=4 to 0 step -1
		r.s(i)=""
	next 
	if iiii>249 then iiii=249
	for i=r.digits-1 to 0 step -1
		iii=ele10(r,i)
		c=0
		cc=0
		for ii=0 to iiii
			r.s(i)=r.s(i)+trim(str(cc))
				c=c+1
			if c=iii then
				c=0
				cc=cc+1
				if cc>9 then cc=0
			end if
		next
	next
end sub
public sub reports(r as ruler)
	dim i as integer
	for i=r.digits-1 to 0 step -1
		print r.s(i)
	next
end sub

dim r as ruler
color 15,5
r.digits=3
r.size=48
creates(r)
reports(r)
