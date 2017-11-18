.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	l DWORD ?
	w DWORD ?
	str1 BYTE "Enter length",0
	str2 BYTE "Enter width",0
	mes  BYTE "The perimeter is",0
	string BYTE 40 DUP (?)
	perm BYTE  11 DUP (?)
.CODE
_MainProc PROC
	input str1,string,40
	atod string
	mov  l,eax

	input str2,string,40
	atod string 

	imul eax,2
	mov  w,eax

	mov  eax,l
	imul eax,2
	add  eax,w

	dtoa perm,eax
	output mes,perm

	mov eax,0
	ret
_MainProc ENDP
END