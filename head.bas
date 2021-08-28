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
locate 1,1
separator "-",49
print "head"
separator "-",49
locate 21,1
separator "-",49
print "tail"
separator "-",49

view print 4 to 20
'cls
for i= 0 to 32
	value=rnd()*800.00-400.00
	tot=tot+value
	report value,tot,"0.00",30
next 

sleep
'view print 1 to 25
