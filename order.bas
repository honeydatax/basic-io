public const mmax=49
public type list
	n(0 to 13) as string
	nn as integer
end type
public sub add(byref l as list, n as string)
	dim i as integer
	dim ii as string
	dim nn as string
	nn=n
		for i= 0 to l.nn-1
			if nn<l.n(i) then
				ii=l.n(i)
				l.n(i)=nn
				nn=ii
			end if
		next
		l.n(l.nn)=nn
		l.nn=l.nn+1

end sub
public sub report(byref l as list)
	dim i as integer
		for i= 0 to l.nn-1
			print "	"; l.n(i)
		next
end sub

dim l as list
dim i as integer
dim a as string
randomize timer
l.nn=0
color 15,5
for i=0 to 11
	read a
	add l,a
next

report l
data "for","color","name","age","number","zorder","key","dim","add","mul","divide","sub"
