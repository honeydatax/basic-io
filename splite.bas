const maxs=2049
type list
	s(0 to 2049) as string
	size as integer
end type

sub separete(s as string,i as integer)
	print string(i,s)
end sub
function split (s as string,separator as string)as list
	dim l1 as list
	dim i as integer
	dim ss as string
	ss=trim(s)+separator
	do
		i=instr(ss,separator)
		if i= 0 then exit do
		l1.s(l1.size)=mid(ss,1,i)
		l1.size=l1.size+1
		if i+len(separator)<len(ss) then
			ss=mid(ss,i+len(separator))
		else 
			exit do
		end if
	loop
	return l1
end function

sub report(l1 as list)
	dim i as integer
	separete "-",45
	for i=0 to  l1.size-1
		print l1.s(i)
	next
end sub


dim l1 as list
dim s as string
dim ss as string
color 15,5
cls
read s
read ss
l1=split(s,ss)
report l1
data "hello hi there hi"," "
