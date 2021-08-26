public function replace(s as string,ss as string,sss as string)as string
	dim start as integer
	dim ends as integer
	dim i as integer
	dim ii as integer
	dim st as string
	dim st1 as string
	dim lenss as integer
	dim lenst as integer
	st=s
	ii=instr(st,ss)
	while ii<>0
		ii=instr(st,ss)
		start=ii
		lenst=len(st)
		lenss=len(ss)
		ends=start+lenss
		if ends>=lenst then ends=lenst
		if ends<1 then ends=0
		if ii<>0 then
			st1=""
			if start=1 and ends<>lenss then
				st1=sss+mid(st,ends+1)
			else
				if start=1 and ends=lenss then
					st1=sss
				else
					if start>1 and ends<>lenss then
						st1=mid(st,1,start-1)+sss+mid(st,ends+1)
					else
						if start>1 and ends=lenss then
							st1=mid(st,1,start-1)+sss
						else
							st1=mid(st,1,start-1)+sss+mid(st,ends+1)
						end if
					end if
				end if
			end if	
			st=st1
			
		end if
	wend
	return st
end function

dim a as string
color 15,5
cls
a="-_________-_________-_________-_________-"
print a
a=replace(a,"-","my")
print a
