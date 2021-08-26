const cttys=80
public function center(ss as string,ctty as integer)as string
	dim i as integer
	dim s as string
	i=(ctty/2)-(len(ss)/2)
	if i<1 then i=0
	s=space(i)+ss
	return s
end function 

dim s as string
dim i as integer
color 15,5
cls
s=""
for i = 0 to 16
	s=s+string(2,asc("*"))
	print center(s,cttys)
next i

