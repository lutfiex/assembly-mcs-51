	start:
		clr P2.0 
		mov a,P1
		cjne a,#00000011,start
	loop1:
		setb P2.0
		mov a,P1
		cjne a,#00000000b,loop1
		jmp start
	
	end