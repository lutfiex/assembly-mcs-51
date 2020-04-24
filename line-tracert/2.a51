start1:
mov a,p2
anl a,#00011111b
sjmp con

con:
cjne a,#00000100b,con2
mov p3,#00001001b
jmp start1

con2:
cjne a,#00001000b,con3
mov p3,#00001000b
jmp start1

con3:
cjne a,#00010000b,con4
mov p3,#00001010b
jmp start1

con4:
cjne a,#00000010b,con5
mov p3,#00000001b
jmp start1

con5:
cjne a,#00000001b,con6
mov p3,#00000101b
jmp start1

con6:
cjne a,#00001100b,con7
mov p3,#00001000b
jmp start1

con7:
cjne a,#00011000b,con8
mov p3,#00001010b
jmp start1

con8:
cjne a,#00000110b,con9
mov p3,#00000001b
jmp start1

con9:
cjne a,#00000011b,start1
mov p3,#00000101b
jmp start1

end