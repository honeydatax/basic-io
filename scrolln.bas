public const max1=31
public const max2=18
public const max3=32
public const min1=2
public const min2=8
public const min3=12
public const plus1=3
public const plus2=5
public const plus3=7
public function  scrollns(n as integer,max as integer,min as integer,plus as integer)as integer
	dim i as integer
	i=n + plus
	if i>=max then 
		i=i-max 
		i=i+min
	end if
	return i
end function

color 15,5
dim i as integer
dim n1 as integer
dim n2 as integer
dim n3 as integer

n1=min1
n2=min2
n3=min3
for i=0 to 16
	print n1,n2,n3
	n1=scrollns(n1,max1,min1,plus1)
	n2=scrollns(n2,max2,min2,plus2)
	n3=scrollns(n3,max3,min3,plus3)
next 
