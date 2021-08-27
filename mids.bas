function mids(s as string,start as integer,legth as integer)as string
	dim i as integer
	dim ends as integer
	dim endss as integer
	dim ss as string
	endss=len(s)
	ends=start+legth
	if ends>=endss then ends=endss
	ss=left(s,ends)
	endss=len(ss)
	ends=endss-start
	if ends<1 then ends=1
	if ends>=endss then ends=endss
	ss=right(ss,ends)
	return ss
end function

dim a as string
dim i as integer
color 15,5
cls
read a
for i=0 to len(a)
	print mids(a,i,i)
next
data "hello hi theres"
