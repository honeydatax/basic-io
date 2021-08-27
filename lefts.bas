function lefth(s as string, i as integer)as string
	dim ss as string
	dim ii as integer
	dim start as integer
	dim ends as integer
	dim sizes as integer
	sizes=i
	ss=mid(s,1,sizes)
	return ss
end function

dim s as string
dim i as integer
color 15,5
cls
read s 
for i=0 to len(s)
	print lefth(s,i)
next
data "hi there wats there"
