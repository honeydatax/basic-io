type stack
	cell (0 to 2048) as integer
	stackpoint as integer
end type

sub push(s as stack,value as integer)
	if s.stackpoint<2047 then
		s.cell(s.stackpoint)=value
		s.stackpoint=s.stackpoint+1
	end if
	
end sub
function pop(s as stack)as integer
	dim value as integer
	value=-1
	if s.stackpoint>0 then
		s.stackpoint=s.stackpoint-1
		value=s.cell(s.stackpoint)
	end if
	return value
end function
sub report(s as stack)
	dim i as integer
	for i=s.stackpoint-1 to 0 step -1
		print s.cell(i)
	next
end sub
sub separator(s as string ,i as integer)
	print string(i,s)
end sub

dim s as stack
dim i as integer
randomize timer
color 15,5
cls
for i=0 to 8
	push s,int(rnd()*49)+1
next
report s
separator "-",40
for i=0 to 8
	print pop (s)
next

