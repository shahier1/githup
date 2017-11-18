.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	x  DWORD   ?
	y  DWORD   ?
	z  DWORD   ?
	str1 BYTE   "Enter x",0
	str2 BYTE   "Enter y",0
	str3 BYTE   "Enter z",0
	string BYTE 40 DUP (?)
	result BYTE 40 DUP (?)
	r BYTE      "The result is ",0
.CODE
_MainProc PROC
	input str1,string,40
	atod  string
	mov   x,eax

	input str2,string,40
	atod  string
	mov   y,eax

	input str3,string,40
	atod  string
	mov   z,eax

	mov  eax,x
	add  eax,y
	imul eax,2
	add  eax,z

	dtoa   result,eax
	output r,result

	mov eax,0
	ret
_MainProc ENDP
END