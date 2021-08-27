function rigth(s as string,i as integer)as string
	dim ss as string
	dim start as integer
	dim ends as integer
	dim size as integer
	start=len(s)-i
	if start<1 then start=1
	ss=mid(s,start)
	return ss
end function

dim a as string
dim i as integer
color 15,5
cls
read a
for i= 0 to  len(a) 
	print rigth(a,i)
next
data "hi hello hi there"
