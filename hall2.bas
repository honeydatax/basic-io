public sub report(a as string,b as integer)
	dim i as integer
	dim ii as integer
	i=b/len(a)
	for ii= 0 to i
		print a;
	next ii
	print 
end sub 


dim i as integer
color 15,5
report "_",78
for i=0 to 7
	report "/\",76
	report "\/",76
next 
