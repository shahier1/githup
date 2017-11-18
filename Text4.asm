.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	var1   DWORD ?
	var2   DWORD ?
	var3   DWORD ?
	var4   DWORD ?
	var5   DWORD ?
	var6   DWORD ?
	prompt1 BYTE "Enter the number of pennies",0
	prompt2 BYTE "Enter the number of nickels",0
	prompt3 BYTE "Enter the number of dimes",0
	prompt4 BYTE "Enter the number of quarters",0
	prompt5 BYTE "Enter the number of fifty-cent pieces",0
	prompt6 BYTE "Enter the number of dollar coins",0
	asd    BYTE 40 DUP (?)
	lbl    BYTE "the total value of the coins",0
	Result BYTE 11 DUP (?)
		   BYTE " dollars"
	Res	   BYTE 11 DUP (?)
	       BYTE " pennies"
.CODE
_MainProc PROC
	input prompt1,asd,40
	atod  asd
	mov  var1,eax

	input prompt2,asd,40
	atod  asd
	imul  eax,5
	mov  var2,eax

	input prompt3,asd,40
	atod  asd
	imul  eax,10
	mov  var3,eax

	input prompt4,asd,40
	atod  asd
	imul  eax,25
	mov  var4,eax

	input prompt5,asd,40
	atod  asd
	imul  eax,50
	mov  var5,eax

	input prompt6,asd,40
	atod  asd
	imul  eax,100
	mov  var6,eax

	add eax,var1
	add eax,var2
	add eax,var3
	add eax,var4
	add eax,var5

	cdq
	mov  ebx,100
	idiv ebx
	dtoa Result,eax
	dtoa Res,edx
	output lbl,Result

	mov eax,0
	ret
_MainProc ENDP
END