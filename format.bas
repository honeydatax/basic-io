#include "string.bi"
sub separator(s as string,i as integer)
	print string(i,s)
end sub
sub report(value as double,tot as double,s as string,i as integer)
	dim a as string
	dim b as string
	a=space(i)
	b=a
	rset a,format(value,s)
	rset b,format(tot,s)
	print a;" | ";b
end sub

dim i as integer
dim value as double
dim tot as double
color 15,5
cls
separator "-",40
for i= 0 to 16
	value=rnd()*800.00-400.00
	tot=tot+value
	report value,tot,"0.00",30
next 
separator "-",40
