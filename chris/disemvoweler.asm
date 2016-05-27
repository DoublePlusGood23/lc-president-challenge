; This is a simple program to read through a file and output vowels
; to stderr, and constants to stdout.

global _start

section .text

_start:
	mov eax, 0x5  ; open
	mov ebx, file ; filename
	mov ecx, 0x1  ; read only
	int 0x80      ; syscall

	bufferloop:
		mov ebx, eax      ; file descriptor from open
		mov eax, 0x3      ; read
		mov ecx, inbuffer ; buffer
		mov edx, 1024     ; buffer size
		int 0x80          ; syscall

                cmp eax, 0 ; compare read count to 0
                je done    ; read count is 0, done

		mov ecx, 0 ; index 0
		compareloop:
			mov ebx, [inbuffer + ecx] ; value at index of array

			mov edx, 0 ; index 0
			vowelloop:
				mov esi, [vowels + edx] ; value at index of vowels

				cmp ebx, esi ; compare value to this vowel
				je isvowel   ; is vowel

				; not this vowel
				inc edx             ; incremnt index
				cmp edx, vowels_len ; compare index to vowel count
				jl vowelloop        ; loop

			isconstant: ; not jumped, but hey
			mov edi, cbuffer
			add edi, cfilled
			mov [edi], ebx ; add to array
			inc dword [cfilled]                ; incrment array "index"

			cmp dword [cfilled], 1024 ; compare filled to buffer size
			jne nowritec         ; write constants to output
			call writec
			nowritec:

			jmp aftervowel ; skip vowel

			isvowel:
			mov edi, vbuffer
			add edi, vfilled
			mov [edi], ebx ; add to array
			inc dword [vfilled]                ; incrment index

			cmp dword [vfilled], 1024 ; compare filled to buffer size
			jne nowritev         ; write vowels to output
			call writev
			nowritev:

			aftervowel:
			inc ecx
			cmp ecx, eax ; compare current index to the buffer count
			jl compareloop
		jmp bufferloop
	done:
	call writec
	call writev
	call exit

writec:
	pusha

	mov eax, 0x4       ; syscall write
	mov ebx, 1         ; stdout
	mov ecx, cbuffer   ; constants
	mov edx, [cfilled] ; size of buffer

	mov dword [cfilled], 0 ; reset index to 0

	popa
	ret

writev:
        pusha

        mov eax, 0x4       ; syscall write
        mov ebx, 2         ; stderr
        mov ecx, vbuffer   ; vowels
        mov edx, [vfilled] ; size of buffer

        mov dword [vfilled], 0 ; reset index to 0

        popa
        ret

exit:
        mov eax, 0x1
        int 0x80
        ret

section .data

file db "file.txt"

inbuffer times 1024 db 0

cbuffer times 1024 db 0
cfilled db 0

vbuffer times 1024 db 0
vfilled db 0

vowels db "AEIOUaeiou"
vowels_len equ $-vowels
