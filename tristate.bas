public const maxss=3
public const t_off=0
public const t_on=1
public const t_energize=2
public const offs="state off "
public const ons="state on "
public const energizes="state speed energize off "

public function troggle(state as integer, maxs as integer)as integer
	dim i as integer
	i=state+1
	if i > maxs then i=0
	return i	
end function
public function toString(state as integer)as string
	dim s as string
	s=offs
	if state=t_on then s=ons
	if state=t_energize then s=energizes
	return s
end function
public sub report(state as integer)
	print toString(state)
end sub
public sub separete(n as integer)
	print String(n,asc("-"))
end sub



dim sstate as integer
dim state as integer
color 15,5
cls
report state
state=troggle(state,maxss)
report state
state=troggle(state,maxss)
report state
state=troggle(state,maxss)
report state
state=troggle(state,maxss)
separete 20
state=t_off
report state
state=t_on
report state
state=t_energize
report state
separete 20
state=troggle(state,maxss)
report state
