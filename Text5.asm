.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	var1 DWORD ?
	var2 DWORD ?
	var3 DWORD ?
	var4 DWORD ?
	prompt1 BYTE "Enter the first grade",0
	prompt2 BYTE "Enter the second grade",0
	prompt3 BYTE "Enter the third grade",0
	prompt4 BYTE "Enter the fourth grade",0
	asd     BYTE 40 DUP (?)
	result  BYTE "The sum",0
    asd1    BYTE 11 DUP (?),0
	result2 BYTE "The average",0
	asd2    BYTE 11 DUP (?),0
.CODE
_MainProc PROC
	input prompt1,asd,40
	atod  asd
	mov   var1,eax

	input prompt2,asd,40
	atod  asd
	mov   var2,eax
	
	input prompt3,asd,40
	atod  asd
	mov   var3,eax

	input prompt4,asd,40
	atod  asd
	mov   var4,eax

	add eax,var1
	add eax,var2
	add eax,var3

	dtoa asd1,eax
	output result,asd1

	cdq
	mov ebx,4
	idiv ebx 

	dtoa asd2,eax
	output result2,asd2

	mov eax,0
	ret
_MainProc ENDP
END