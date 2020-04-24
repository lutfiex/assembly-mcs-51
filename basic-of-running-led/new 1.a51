	call delay
	mov a,#00001100
	mov p0,a
	call clock
	mov a,#01110000
	mov p0,a
	call clock
	mov a,#01100000
	mov p0,a
	call clock
	mov a,#00010010
	mov p0,a
	setb p1.1
	call clock
	mov a,#00000111
	mov p0,a
	call clock
	mov a,#00000000
	mov p0,a
	call clock
	mov a,#00000110
	mov p0,a
	setb p1.1
	mov a,#00000010
	mov p0,a
	call clock
	mov a,#00000001
	mov p0,a
	call delay
	
	
	
	clock:
	setb p1.0
	call delay
	clr p1.0
	call delay
	ret
	
	delay: 
	mov	R1,#00
	loop:	inc	R1
	cjne	R1,#99h,loop
	ret
	end