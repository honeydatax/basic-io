function strings(n as integer,s as string)as string
	dim i as integer
	dim ss as string
	for i=0 to n-1
		ss=ss+s
	next
	return ss
end function

dim s as string
dim n as integer
color 15,5
for n=0 to 16
	print strings(n,"|_")
next



