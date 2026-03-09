; lab4.asm: Display student number on HEX5-HEX0
; Format depends on SW2-SW0 latched by KEY3
; Student number: 73177271
$MODMAX10

; 7-seg lookup table (active low, dp off)
; 0=0xC0, 1=0xF9, 2=0xA4, 3=0xB0, 4=0x99
; 5=0x92, 6=0x82, 7=0xF8, 8=0x80, 9=0x90
; blank=0xFF
; H=0x89, E=0x86, L=0xC7, O=0xC0, C=0xC6, P=0x8C, N=0xAB, 3=0xB0, 1=0xF9, 2=0xA4

BLANK  EQU 0xFF
SEG_0  EQU 0xC0
SEG_1  EQU 0xF9
SEG_2  EQU 0xA4
SEG_3  EQU 0xB0
SEG_4  EQU 0x99
SEG_5  EQU 0x92
SEG_6  EQU 0x82
SEG_7  EQU 0xF8
SEG_8  EQU 0x80
SEG_9  EQU 0x90
SEG_H  EQU 0x89
SEG_E  EQU 0x86
SEG_L  EQU 0xC7
SEG_O  EQU 0xC0
SEG_C  EQU 0xC6
SEG_P  EQU 0x8C
SEG_N  EQU 0xAB

org 0000H
	ljmp myprogram

; ============================================================
; Delay subroutines (33.33MHz clock, 1 cycle = 30ns)
; ============================================================
; ~0.5s delay
WaitHalfSec:
	mov R2, #90
L3: mov R1, #250
L2: mov R0, #250
L1: djnz R0, L1
	djnz R1, L2
	djnz R2, L3
	ret

; ~1s delay
WaitOneSec:
	lcall WaitHalfSec
	lcall WaitHalfSec
	ret

; Delay based on SW3: 1s if SW3=0, 0.5s if SW3=1
WaitSW3:
	mov A, SWA
	anl A, #0x08
	jnz WaitSW3_half
	lcall WaitOneSec
	ret
WaitSW3_half:
	lcall WaitHalfSec
	ret

; Check if SW2-SW0 changed. Returns: sets carry if changed.
; Compares current SW2-SW0 with value in R7.
CheckSWChanged:
	mov A, SWA
	anl A, #0x07
	cjne A, 7, sw_changed  ; compare with R7 (register 7)
	clr C
	ret
sw_changed:
	setb C
	ret

; Blank all HEX displays
BlankAll:
	mov HEX0, #BLANK
	mov HEX1, #BLANK
	mov HEX2, #BLANK
	mov HEX3, #BLANK
	mov HEX4, #BLANK
	mov HEX5, #BLANK
	ret

; ============================================================
; Main program
; ============================================================
myprogram:
	mov SP, #7FH
	mov LEDRA, #0
	mov LEDRB, #0
	lcall BlankAll

main_loop:
	; Wait for KEY3 press (active low)
wait_key3:
	jb KEY_3, wait_key3
	; Debounce: wait for KEY3 release
wait_key3_release:
	jnb KEY_3, wait_key3_release

	; Latch SW2-SW0
	mov A, SWA
	anl A, #0x07
	mov R7, A          ; save switch state in R7 for change detection

	; Jump table based on switch value
	cjne A, #0, check_case1
	ljmp case_000
check_case1:
	cjne A, #1, check_case2
	ljmp case_001
check_case2:
	cjne A, #2, check_case3
	ljmp case_010
check_case3:
	cjne A, #3, check_case4
	ljmp case_011
check_case4:
	cjne A, #4, check_case5
	ljmp case_100
check_case5:
	cjne A, #5, check_case6
	ljmp case_101
check_case6:
	cjne A, #6, check_case7
	ljmp case_110
check_case7:
	cjne A, #7, main_loop
	ljmp case_111

; ============================================================
; Case 000: Display 6 most significant digits "731772"
; ============================================================
case_000:
	lcall BlankAll
	mov HEX5, #SEG_7
	mov HEX4, #SEG_3
	mov HEX3, #SEG_1
	mov HEX2, #SEG_7
	mov HEX1, #SEG_7
	mov HEX0, #SEG_2
	ljmp main_loop

; ============================================================
; Case 001: Display 2 least significant digits "71" on HEX1-HEX0
; ============================================================
case_001:
	lcall BlankAll
	mov HEX1, #SEG_7
	mov HEX0, #SEG_1
	ljmp main_loop

; ============================================================
; Case 010: Scroll left every 1s (SW3=0) or 0.5s (SW3=1)
; "731772"->"317727"->"177271"->"772717"->"727173"->"271731"->...
; ============================================================
case_010:
	mov R3, #0        ; R3 = scroll offset (0-7)
case_010_loop:
	lcall CheckSWChanged
	jc main_loop_jump_010

	; Display 6 digits starting at offset R3
	mov A, R3
	lcall get_digit
	mov HEX5, A

	mov A, R3
	inc A
	lcall get_digit_mod8
	mov HEX4, A

	mov A, R3
	add A, #2
	lcall get_digit_mod8
	mov HEX3, A

	mov A, R3
	add A, #3
	lcall get_digit_mod8
	mov HEX2, A

	mov A, R3
	add A, #4
	lcall get_digit_mod8
	mov HEX1, A

	mov A, R3
	add A, #5
	lcall get_digit_mod8
	mov HEX0, A

	lcall WaitSW3

	; Increment offset, wrap at 8
	inc R3
	mov A, R3
	cjne A, #8, case_010_loop
	mov R3, #0
	sjmp case_010_loop

main_loop_jump_010:
	ljmp main_loop

; ============================================================
; Case 011: Scroll right every 1s (SW3=0) or 0.5s (SW3=1)
; "731772"->"173177"->"717317"->"271731"->...
; ============================================================
case_011:
	mov R3, #0        ; R3 = scroll offset
case_011_loop:
	lcall CheckSWChanged
	jc main_loop_jump_011

	; offset for right scroll: display starts at (8-R3) mod 8
	mov A, #8
	clr C
	subb A, R3
	lcall get_digit_mod8
	mov HEX5, A

	mov A, #9
	clr C
	subb A, R3
	lcall get_digit_mod8
	mov HEX4, A

	mov A, #10
	clr C
	subb A, R3
	lcall get_digit_mod8
	mov HEX3, A

	mov A, #11
	clr C
	subb A, R3
	lcall get_digit_mod8
	mov HEX2, A

	mov A, #12
	clr C
	subb A, R3
	lcall get_digit_mod8
	mov HEX1, A

	mov A, #13
	clr C
	subb A, R3
	lcall get_digit_mod8
	mov HEX0, A

	lcall WaitSW3

	inc R3
	mov A, R3
	cjne A, #8, case_011_loop
	mov R3, #0
	sjmp case_011_loop

main_loop_jump_011:
	ljmp main_loop

; ============================================================
; Case 100: Blink "177271" every 1s (SW3=0) or 0.5s (SW3=1)
; ============================================================
case_100:
	lcall CheckSWChanged
	jc main_loop_jump_100

	; Show digits
	mov HEX5, #SEG_1
	mov HEX4, #SEG_7
	mov HEX3, #SEG_7
	mov HEX2, #SEG_2
	mov HEX1, #SEG_7
	mov HEX0, #SEG_1
	lcall WaitSW3

	lcall CheckSWChanged
	jc main_loop_jump_100

	; Blank
	lcall BlankAll
	lcall WaitSW3
	sjmp case_100

main_loop_jump_100:
	ljmp main_loop

; ============================================================
; Case 101: Digits appear one at a time "7"->"73"->"731"->...
; ============================================================
case_101:
	mov R3, #0        ; number of digits showing (0=blank)
case_101_loop:
	lcall CheckSWChanged
	jc main_loop_jump_101

	lcall BlankAll

	; Show R3 digits from left
	mov A, R3
	jz case_101_wait  ; 0 = all blank

	; Always show HEX5 = '7' if R3 >= 1
	mov HEX5, #SEG_7
	mov A, R3
	cjne A, #1, case_101_2
	sjmp case_101_wait
case_101_2:
	mov HEX4, #SEG_3
	mov A, R3
	cjne A, #2, case_101_3
	sjmp case_101_wait
case_101_3:
	mov HEX3, #SEG_1
	mov A, R3
	cjne A, #3, case_101_4
	sjmp case_101_wait
case_101_4:
	mov HEX2, #SEG_7
	mov A, R3
	cjne A, #4, case_101_5
	sjmp case_101_wait
case_101_5:
	mov HEX1, #SEG_7
	mov A, R3
	cjne A, #5, case_101_6
	sjmp case_101_wait
case_101_6:
	mov HEX0, #SEG_2

case_101_wait:
	lcall WaitSW3
	inc R3
	mov A, R3
	cjne A, #7, case_101_loop
	mov R3, #0        ; reset to blank
	sjmp case_101_loop

main_loop_jump_101:
	ljmp main_loop

; ============================================================
; Case 110: "HELLO " -> "123456" -> "CPN312" -> repeat
; ============================================================
case_110:
	lcall CheckSWChanged
	jc main_loop_jump_110

	; "HELLO "
	mov HEX5, #SEG_H
	mov HEX4, #SEG_E
	mov HEX3, #SEG_L
	mov HEX2, #SEG_L
	mov HEX1, #SEG_O
	mov HEX0, #BLANK
	lcall WaitSW3

	lcall CheckSWChanged
	jc main_loop_jump_110

	; "731772"
	mov HEX5, #SEG_7
	mov HEX4, #SEG_3
	mov HEX3, #SEG_1
	mov HEX2, #SEG_7
	mov HEX1, #SEG_7
	mov HEX0, #SEG_2
	lcall WaitSW3

	lcall CheckSWChanged
	jc main_loop_jump_110

	; "CPN312"
	mov HEX5, #SEG_C
	mov HEX4, #SEG_P
	mov HEX3, #SEG_N
	mov HEX2, #SEG_3
	mov HEX1, #SEG_1
	mov HEX0, #SEG_2
	lcall WaitSW3

	sjmp case_110

main_loop_jump_110:
	ljmp main_loop

; ============================================================
; Case 111: Custom - Knight rider bounce across digits
; Displays single digit bouncing: 7.....  .3....  ..1...  ...7..  ....7.  .....2  ....7.  ...7.. etc.
; ============================================================
case_111:
	mov R3, #0        ; position 0-5
	mov R4, #0        ; direction: 0=right, 1=left
case_111_loop:
	lcall CheckSWChanged
	jc main_loop_jump_111

	lcall BlankAll

	; Display digit at position R3
	mov A, R3
	cjne A, #0, case_111_p1
	mov HEX5, #SEG_7
	sjmp case_111_show
case_111_p1:
	cjne A, #1, case_111_p2
	mov HEX4, #SEG_3
	sjmp case_111_show
case_111_p2:
	cjne A, #2, case_111_p3
	mov HEX3, #SEG_1
	sjmp case_111_show
case_111_p3:
	cjne A, #3, case_111_p4
	mov HEX2, #SEG_7
	sjmp case_111_show
case_111_p4:
	cjne A, #4, case_111_p5
	mov HEX1, #SEG_7
	sjmp case_111_show
case_111_p5:
	mov HEX0, #SEG_2

case_111_show:
	lcall WaitSW3

	; Update position based on direction
	mov A, R4
	jnz case_111_goleft
	; Going right
	inc R3
	mov A, R3
	cjne A, #5, case_111_loop
	mov R4, #1        ; switch to left
	sjmp case_111_loop
case_111_goleft:
	dec R3
	mov A, R3
	jnz case_111_loop
	mov R4, #0        ; switch to right
	sjmp case_111_loop

main_loop_jump_111:
	ljmp main_loop

; ============================================================
; Utility: Get 7-seg code for student number digit
; Input: A = index (0-7 maps to digits 7,3,1,7,7,2,7,1)
; Output: A = 7-seg code
; ============================================================
get_digit_mod8:
	anl A, #0x07      ; mod 8
get_digit:
	inc A             ; DPTR offset (skip ret)
	movc A, @A+PC
	ret
	DB SEG_7, SEG_3, SEG_1, SEG_7, SEG_7, SEG_2, SEG_7, SEG_1

END
