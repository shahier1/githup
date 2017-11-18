.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	g1 DWORD ?
	g2 DWORD ?
	g3 DWORD ?
	g4 DWORD ?
	w1 DWORD ?
	w2 DWORD ?
	w3 DWORD ?
	w4 DWORD ?
	wg1 DWORD ?
	wg2 DWORD ?
	wg3 DWORD ?
	wg4 DWORD ?
	tem DWORD ?
	tem2 DWORD ?
	str1    BYTE "Enter the first grade",0
	str2    BYTE "Enter the first weight",0
	str3    BYTE "Enter the second grade",0
	str4    BYTE "Enter the second weight",0
	str5    BYTE "Enter the third grade",0
	str6    BYTE "Enter the third weight",0
	str7    BYTE "Enter the fourth grade",0
	str8    BYTE "Enter the fourth weight",0
	prompt  BYTE 40 DUP (?)
	Result1 BYTE "weighted sum:",0
	Result2 BYTE "sum of weights:",0
	Result3 BYTE "weighted average:",0
	res1    BYTE 11 DUP (?)
	res2    BYTE 11 DUP (?)
	res3    BYTE 11 DUP (?)
.CODE
_MainProc PROC
	input str1,prompt,40       ;entering first grade
	atod  prompt
	mov   g1,eax

	input str2,prompt,40       ;entering first weight
	atod  prompt
	mov   w1,eax
	imul  eax,g1
	mov   wg1,eax

	input str3,prompt,40       ;entering second grade
	atod  prompt
	mov   g2,eax

	input str4,prompt,40       ;entering second weight
	atod  prompt
	mov   w2,eax
	imul  eax,g2
	mov   wg2,eax

	input str5,prompt,40       ;entering third grade
	atod  prompt
	mov   g3,eax

	input str6,prompt,40       ;entering third weight
	atod  prompt
	mov   w3,eax
	imul  eax,g3
	mov   wg3,eax

	input str7,prompt,40       ;entering fourth grade
	atod  prompt
	mov   g4,eax

	input str8,prompt,40       ;entering fourth weight
	atod  prompt
	mov   w4,eax
	imul  eax,g4
	mov   wg4,eax

	add   eax,wg1
	add   eax,wg2
	add   eax,wg3
	mov   tem,eax

	dtoa res1,eax
	output Result1,res1

	mov  eax,w1
	add  eax,w2
	add  eax,w3
	add  eax,w4

	dtoa res2,eax
	output Result2,res2
	
	cdq
	mov tem2,eax
	mov eax,tem
	idiv tem2 
	
	dtoa res3,eax
	output Result3,res3

	mov   eax,0
	ret
_MainProc ENDP
END