function lsets(s as string,puts as string)as string
	dim ss as string
	dim starts as integer
	dim ends as integer
	dim endss as integer
	dim legs as integer
	ends=len(puts)
	endss=len(s)
	starts=endss-ends
	if starts<0 then
		ss=mid(puts,1,endss)
	else
		ss=puts+mid(s,ends)
	end if
	return ss
end function

dim a as string
color 15,5
cls
a=space(20)
print lsets(a,"100.00");">"
