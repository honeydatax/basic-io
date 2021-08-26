public const mmax=49
public type loto
	n(0 to 13) as integer
	nn as integer
end type
public function getnumber(max as integer)as integer
	dim i as integer
	i=int(rnd()*max)+1
	return i
end function
public sub add(byref l as loto, n as integer)
	dim i as integer
	dim ii as integer
	dim nn as integer
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
public sub report(byref l as loto)
	dim i as integer
		for i= 0 to l.nn-1
			print l.n(i)
		next
end sub
dim l as loto
dim i as integer
randomize timer
l.nn=0
color 15,5
for i=0 to 11
	add l,getnumber(mmax)
next

report l
