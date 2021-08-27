const maxn=2049
public type stack
	cell (0 to maxn) as integer
	stackpoint as integer
end type
public type node
	names as string
	value as string
	nexts as integer=-1
	back as integer=-1
	sun as integer=-1
	father as integer=-1
end type
public type tree
	nodes(0 to maxn) as node
	sizes as integer
	stacks as stack
end type
sub push(s as stack,value as integer)
	if s.stackpoint<maxn-1 then
		s.cell(s.stackpoint)=value
		s.stackpoint=s.stackpoint+1
	end if
	
end sub
function pop(s as stack)as integer
	dim value as integer
	value=-1
	if s.stackpoint>0 then
		s.stackpoint=s.stackpoint-1
		value=s.cell(s.stackpoint)
	end if
	return value
end function
sub sreport(s as stack)
	dim i as integer
	for i=s.stackpoint-1 to 0 step -1
		print s.cell(i)
	next
end sub
sub separator(s as string ,i as integer)
	print string(i,s)
end sub
function addNode(byref t as tree,n as node)as integer
	dim i as integer
	if t.sizes<maxn-1 then 
		i=t.sizes
		t.nodes(i)=n
		t.sizes=t.sizes+1
	end if
	return i
end function
sub report(t as tree, n as integer)
	dim pointers as integer
	dim exitss as integer
	separator "-",48
	pointers=n
	do 
		if t.stacks.stackpoint=0 and t.nodes(pointers).sun=-1 and exitss=1 then exit do 
		print string(t.stacks.stackpoint,"	"); t.nodes(pointers).names;",";
		print t.nodes(pointers).value
		if t.nodes(pointers).sun<>-1 then
			push t.stacks,pointers
			pointers=t.nodes(pointers).sun
			exitss=0
			while exitss<>1
				print string(t.stacks.stackpoint,"	");t.nodes(pointers).names;",";
				print t.nodes(pointers).value
				if t.nodes(pointers).nexts=-1 then exitss=1
				pointers=t.nodes(pointers).nexts
			wend
			if t.stacks.stackpoint>0 then 
				pointers=pop (t.stacks)
				exitss=0
			end if
		end if
		if t.stacks.stackpoint=0 and t.nodes(pointers).nexts=-1 then 
			exit do
		else
			pointers=t.nodes(pointers).nexts
			exitss=0
		end if
	loop
end sub


dim root as integer
dim arm as integer
dim x86 as integer
dim st as string
dim s as stack
dim n as node
dim t as tree
dim i as integer
dim nul as integer=-1
dim back as integer
dim sun as integer
dim father as integer
dim nexts as integer
dim current as integer
randomize timer
color 15,5
cls
'------root load
read st
n.names=st
n.value=st
root=addNode(t,n)
'------arm load
read st
n.names=st
n.value=st
n.father=root
arm=addNode(t,n)
'------X86 load
read st
n.names=st
n.value=st
n.father=root
n.back=arm
x86=addNode(t,n)
t.nodes(root).sun=arm
t.nodes(arm).nexts=x86
'------arm load suns
read st
n.names=st
n.value=st
n.father=arm
n.back=nul
n.nexts=nul
n.sun=-1
back=addNode(t,n)
t.nodes(arm).sun=back
'------arm load suns
read st
n.names=st
n.value=st
n.father=arm
n.back=nul
n.nexts=nul
n.sun=-1
current=addNode(t,n)
t.nodes(x86).sun=current
'------x86 load suns
read st
n.names=st
n.value=st
n.father=x86
n.back=nul
n.nexts=nul
n.sun=-1
back=addNode(t,n)
t.nodes(x86).sun=back
'------x86 load suns
read st
n.names=st
n.value=st
n.father=x86
n.back=back
n.nexts=nul
n.sun=-1
current=addNode(t,n)
t.nodes(back).nexts=current
back=current
'------x86 load suns
read st
n.names=st
n.value=st
n.father=x86
n.back=back
n.nexts=nul
n.sun=-1
current=addNode(t,n)
t.nodes(back).nexts=current
back=current
'------x86 load suns
read st
n.names=st
n.value=st
n.father=x86
n.back=back
n.nexts=nul
n.sun=-1
current=addNode(t,n)
t.nodes(back).nexts=current
back=current
'------x86 load suns
read st
n.names=st
n.value=st
n.father=x86
n.back=back
n.nexts=nul
n.sun=-1
current=addNode(t,n)
t.nodes(back).nexts=current
report t,root

data "PCS","ARM","X86","ARM6","ARM7","8086","80186","80286","80386","80486"
