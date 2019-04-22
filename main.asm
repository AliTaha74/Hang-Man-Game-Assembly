INCLUDE Irvine32.inc
include Macros.inc
.DATA
endl EQU <0dh,0ah>	
PlayIndex LABEL BYTE
	BYTE "                                                                          " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "     ||                          -->  Play                         ||     " ,endl
	BYTE "     ||                               Hall Of Frame                ||     " ,endl
	BYTE "     ||                               Credits                      ||     " ,endl
	BYTE "     ||                               Exit                         ||     " ,endl
    BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl 
	BYTE "                                                                          " ,endl,0 
	PlaySize DWORD ($-PlayIndex)

	HallIndex LABEL BYTE
	BYTE "                                                                          " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "     ||                               Play                         ||     " ,endl
	BYTE "     ||                           --> Hall Of Frame                ||     " ,endl
	BYTE "     ||                               Credits                      ||     " ,endl
	BYTE "     ||                               Exit                         ||     " ,endl
    BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl,0                                         
	HallSize DWORD ($-HallIndex)
	
	CreditsIndex LABEL BYTE
	BYTE "				                                                                " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "     ||                               Play                         ||     " ,endl
	BYTE "     ||                               Hall Of Frame                ||     " ,endl
	BYTE "     ||                           --> Credits                      ||     " ,endl
	BYTE "     ||                               Exit                         ||     " ,endl
    BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl,0
	CreditsSize DWORD ($-CreditsIndex)

	ExitIndex LABEL BYTE
	BYTE "                                                                          " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "     ||                               Play                         ||     " ,endl
	BYTE "     ||                               Hall Of Frame                ||     " ,endl
	BYTE "     ||                               Credits                      ||     " ,endl
	BYTE "     ||                           --> Exit                         ||     " ,endl
    BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl,0
	ExitSize DWORD ($-ExitIndex)

	Index byte 1
	ArrowUp    Dword 18432
	ArrowDown  Dword 20480

	EasyIndex LABEL BYTE
	BYTE "                                                                          " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "     ||                          -->  Easy                         ||     " ,endl
	BYTE "     ||                               Medium                       ||     " ,endl
	BYTE "     ||                               Hard                         ||     " ,endl
    BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl 
	BYTE "                                                                          " ,endl,0 
	EasySize DWORD ($-EasyIndex)

	MediumIndex LABEL BYTE
	BYTE "                                                                          " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "     ||                               Easy                         ||     " ,endl
	BYTE "     ||                          -->  Medium                       ||     " ,endl
	BYTE "     ||                               Hard                         ||     " ,endl
    BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl  
	BYTE "                                                                          " ,endl,0 
	MediumSize DWORD ($-MediumIndex)

	HardIndex LABEL BYTE
	BYTE "                                                                          " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "     ||                               Easy                         ||     " ,endl
	BYTE "     ||                               Medium                       ||     " ,endl
	BYTE "     ||                          -->  Hard                         ||     " ,endl
    BYTE "     ----------------------------------------------------------------     " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     ----------------------------------------------------------------     " ,endl 
	BYTE "                                                                          " ,endl,0  
	HardSize DWORD ($-HardIndex)


	EnterPress  Dword 7181
	EscapePress Dword 283

	HangMan LABEL BYTE
	BYTE "                                                                          " ,endl
	BYTE "                                                                          " ,endl
	BYTE "      __   __  _______  __    _  _______  __   __  _______  __    _       " ,endl
	BYTE "     |  | |  ||   _   ||  |  | ||       ||  |_|  ||   _   ||  |  | |      " ,endl
	BYTE "     |  |_|  ||  | |  ||   |_| ||    ___||       ||  |_|  ||   |_| |      " ,endl
	BYTE "     |       ||  |_|  ||       ||   | __ |       ||       ||       |      " ,endl
	BYTE "     |   _   ||   _   ||  _    ||   ||  ||  / \  |    _   ||  _    |      " ,endl
	BYTE "     |  | |  ||  / \  || | |_  ||   |_| || ||_|| ||  / \  || | |_  |      " ,endl
	BYTE "     |__| |__||__| |__||_|  |__||_______||_|   |_||__| |__||_|  |__|      " ,endl
	BYTE "                                                                          " ,endl
	BYTE "     Team Name	: Sbhlala						                        " ,endl
	BYTE "     Team Members : Ali Taha Abd Elsalam						            " ,endl
	BYTE "                    Omar Mahmoud Refaat                                   " ,endl
	BYTE "                    Mina Okaily Natieg                                    " ,endl
	BYTE "                    Mohamed Mostafa Ashour                                " ,endl
	BYTE "                                                                          " ,endl,0

	HangManSize DWORD ($-HangMan)
	endl EQU <0dh,0ah>	; end of line

consoleHandle DWORD 0      ; handle that return from function 
NumOfBytes  DWORD ?      ; return in it the number of bytes written

WINNER_0 LABEL BYTE 
                    BYTE "+======+       ",endl
                    BYTE "|      |       ",endl
                    BYTE "|              ",endl
                    BYTE "|      O       ",endl
                    BYTE "|     /|\      ",endl
                    BYTE "|     / \      ",endl
                    BYTE "+============+ ",endl
                    BYTE "|   WINNER   | ",endl
                    BYTE "+============+ ",endl
Drow_Size DWORD ($-WINNER_0)   ; Size for all drow

WINNER_1 LABEL BYTE 
					BYTE "+======+       ",endl
                    BYTE "|      |       ",endl
                    BYTE "|              ",endl
                    BYTE "|     _O_      ",endl
                    BYTE "| YEh  |  Yeh  ",endl
                    BYTE "|     / \      ",endl
                    BYTE "+============+ ",endl
                    BYTE "|   WINNER   | ",endl
                    BYTE "+============+ ",endl

WINNER_2 LABEL BYTE 
					BYTE "+======+       ",endl
                    BYTE "|      |       ",endl
                    BYTE "|              ",endl
                    BYTE "|     \O/      ",endl
                    BYTE "| YEh! |  Yeh! ",endl
                    BYTE "|     / \      ",endl
                    BYTE "+============+ ",endl
                    BYTE "|chiken diner| ",endl
                    BYTE "+============+ ",endl

WINNER_3 LABEL BYTE 
					BYTE "+======+       ",endl
                    BYTE "|      |       ",endl
                    BYTE "|              ",endl
                    BYTE "|      O_      ",endl
                    BYTE "|     /|       ",endl
                    BYTE "|     / \      ",endl
                    BYTE "+============+ ",endl
                    BYTE "| YOU   WIN  | ",endl
                    BYTE "+============+ ",endl

Lose_0 LABEL BYTE 
					BYTE "+======+       ",endl
                    BYTE "|      |       ",endl
                    BYTE "|      O       ",endl
                    BYTE "|     /|\      ",endl
                    BYTE "|     / \      ",endl
                    BYTE "|              ",endl
                    BYTE "+============+ ",endl
                    BYTE "|  YOU  DIE  | ",endl
                    BYTE "+============+ ",endl

Lose_1 LABEL BYTE 
					BYTE "+======+       ",endl
                    BYTE "|      |       ",endl
                    BYTE "|      O       ",endl
                    BYTE "|     /|\      ",endl
                    BYTE "|     / \      ",endl
                    BYTE "|              ",endl
                    BYTE "+============+ ",endl
                    BYTE "|    loser   | ",endl
                    BYTE "+============+ ",endl

Lose_2 LABEL BYTE 
					BYTE "+======+       ",endl
                    BYTE "|      |       ",endl
                    BYTE "|      O       ",endl
                    BYTE "|     /|\      ",endl
                    BYTE "|     / \      ",endl
                    BYTE "|              ",endl
                    BYTE "+============+ ",endl 
                    BYTE "|  YOU  DIE  | ",endl
                    BYTE "+============+ ",endl

Lose_3 LABEL BYTE 
					BYTE "+======+       ",endl
                    BYTE "|      |       ",endl
                    BYTE "|      O       ",endl
                    BYTE "|     /|\      ",endl
                    BYTE "|     / \      ",endl
                    BYTE "|              ",endl
                    BYTE "+============+ ",endl
                    BYTE "| loser loser| ",endl
                    BYTE "+============+ ",endl

Lives_5 LABEL BYTE 
					BYTE "+======+       ",endl 
					BYTE "|      |       ",endl
					BYTE "|      O       ",endl
					BYTE "|              ",endl
					BYTE "|              ",endl
					BYTE "|              ",endl
					BYTE "+============+ ",endl
					BYTE "|            | ",endl
					BYTE "+============+ ",endl

Lives_4 LABEL BYTE 
					BYTE "+======+       ",endl
					BYTE "|      |       ",endl
					BYTE "|      O       ",endl
					BYTE "|      |       ",endl
					BYTE "|              ",endl
					BYTE "|              ",endl
					BYTE "+============+ ",endl
					BYTE "|            | ",endl
					BYTE "+============+ ",endl

Lives_3 LABEL BYTE 
					BYTE "+======+       ",endl
					BYTE "|      |       ",endl
					BYTE "|      O       ",endl
					BYTE "|     /|       ",endl
					BYTE "|              ",endl
					BYTE "|              ",endl
					BYTE "+============+ ",endl
					BYTE "|            | ",endl
					BYTE "+============+ ",endl

Lives_2 LABEL BYTE 
					BYTE "+======+       ",endl
					BYTE "|      |       ",endl
					BYTE "|      O       ",endl
					BYTE "|     /|\      ",endl
					BYTE "|              ",endl
					BYTE "|              ",endl
					BYTE "+============+ ",endl
					BYTE "|            | ",endl
					BYTE "+============+ ",endl

Lives_1 LABEL BYTE 
					BYTE "+======+       ",endl
					BYTE "|      |       ",endl
					BYTE "|      O       ",endl
					BYTE "|     /|\      ",endl
					BYTE "|     /        ",endl
					BYTE "|              ",endl
					BYTE "+============+ ",endl
					BYTE "|            | ",endl
					BYTE "+============+ ",endl

Lives_0 LABEL BYTE 
					BYTE "+======+       ",endl
					BYTE "|      |       ",endl
					BYTE "|      O       ",endl
					BYTE "|     /|\      ",endl
					BYTE "|     / \      ",endl
					BYTE "|              ",endl
					BYTE "+============+ ",endl
					BYTE "|            | ",endl
					BYTE "+============+ ",endl

;List of all words can be choosen
List_of_words	BYTE "SISTER",	0
			BYTE "I LOVE ASSEMBLY", 0
			BYTE "INFORMATION", 0
			BYTE "SYSTEM", 0
			BYTE "FACEBOOK", 0
			BYTE "KYE PAD", 0
			BYTE "PLAY FOOTBALL", 0
			BYTE "BROTHER", 0
			BYTE "COMPUTER NETWORK", 0
			BYTE "PROGRAMMING", 0
			BYTE "FINAL DESTINATION", 0
			BYTE "FOUCS", 0
			BYTE "PROLOG", 0
			BYTE "I HATE ALGORITHMS", 0
			BYTE "FINGERS", 0
			BYTE "MOUSE", 0
			BYTE "GOOD MORINING", 0
			BYTE "FULL MARK", 0
			BYTE "BASKETBALL", 0
			BYTE "FANTASTIC BEASTS", 0
			BYTE 0					
len equ $ - List_of_words
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ranNum DWORD ?	               ; random number what we generete
Check_length BYTE 15	; repeat 15 cause length of drow
Num_of_tries DWORD ?		   ; number what we make to know where are you in game
startTime DWORD ?              ;To Save the score
conv DWORD 100 
tmp byte ?
SelectedWord BYTE "                              ", 0 ;Word that we select by rundom
The_Letter BYTE ?                  ;Letter input
Bc Byte 0 
guessWords BYTE 70 DUP (?)         ;Word print with -------
The_LetterArray BYTE 70 DUP (?)    ;Array of guess Letter 
Dash BYTE '-'
con DWORD ?                        ;boolean var
LivesNum DWORD ?                   ;number of tries of level
check DWORD 0                  ;bool check To print Score 1 time
lengthArray DWORD ?                ;Use as variable in function for lenght of Array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                         
.code
main PROC
	MOV EDX,OFFSET PlayIndex
	MOV ECX,PlaySize
	CALL WRITESTRING
	FIRST:
	CALL READCHAR
	CMP EAX,ArrowUp
	JNE L2
	CMP INDEX , 1
	JNE L12
	CALL CLRSCR
	MOV EDX,OFFSET ExitIndex
	MOV ECX,ExitSize
	CALL WRITESTRING
	MOV INDEX, 4
	JMP FIRST
	L12:
		CMP INDEX , 2
		JNE L13
		CALL CLRSCR
		MOV EDX,OFFSET PlayIndex
		MOV ECX,PlaySize
		CALL WRITESTRING
		MOV INDEX, 1
		JMP FIRST 
	L13:
		CMP INDEX , 3
		JNE L14
		CALL CLRSCR
		MOV EDX,OFFSET HallIndex
		MOV ECX,HallSize
		CALL WRITESTRING
		MOV INDEX, 2
		JMP FIRST
	L14:
		CMP INDEX , 4
		JNE First
		CALL CLRSCR
		MOV EDX,OFFSET CreditsIndex
		MOV ECX,CreditsSize
		CALL WRITESTRING
		MOV INDEX, 3
		JMP FIRST
	L2:
		CMP EAX,ArrowDown
		JNE L3
		CMP INDEX , 1
		JNE L22
		CALL CLRSCR
		MOV EDX,OFFSET HallIndex
		MOV ECX,HallSize
		CALL WRITESTRING
		MOV INDEX, 2
		JMP FIRST
		L22:
			CMP INDEX , 2
			JNE L23
			CALL CLRSCR
			MOV EDX,OFFSET CreditsIndex
			MOV ECX,CreditsSize
			CALL WRITESTRING
			MOV INDEX, 3
			JMP FIRST 
		L23:
			CMP INDEX , 3
			JNE L24
			CALL CLRSCR
			MOV EDX,OFFSET ExitIndex
			MOV ECX,ExitSize
			CALL WRITESTRING
			MOV INDEX, 4
			JMP FIRST
		L24:
			CMP INDEX , 4
			JNE First
			CALL CLRSCR
			MOV EDX,OFFSET PlayIndex
			MOV ECX,PlaySize
			CALL WRITESTRING
			MOV INDEX, 1
			JMP FIRST

	L3:
		CMP EAX,EnterPress
		JNE FIRST
		CMP INDEX,1
		JNE Exit_Label
		CALL CLRSCR
		MOV EDX,OFFSET EasyIndex
		MOV ECX,EASYSIZE
		CALL WRITESTRING
		MOV INDEX,1
		SECOND:
				CALL READCHAR
				CMP EAX,ArrowUp
				JNE L4
				CMP INDEX , 1
				JNE L32
				CALL CLRSCR
				MOV EDX,OFFSET HARDIndex
				MOV ECX,HARDSize
				CALL WRITESTRING
				MOV INDEX, 3
				JMP SECOND
			L32:	
				CMP INDEX , 2
				JNE L33
				CALL CLRSCR
				MOV EDX,OFFSET EASYIndex
				MOV ECX,EASYSize
				CALL WRITESTRING
				MOV INDEX, 1
				JMP SECOND
			L33:
				CMP INDEX , 3
				JNE L34
				CALL CLRSCR
				MOV EDX,OFFSET MEDIUMIndex
				MOV ECX,MEDIUMSize
				CALL WRITESTRING
				MOV INDEX, 2
				JMP SECOND
			L34:
				CMP EAX,EscapePress
				JNE GoToLevel
				CALL CLRSCR
				MOV EDX,OFFSET PlayIndex
				MOV ECX,PlaySize
				CALL WRITESTRING
				MOV INDEX, 1
				JMP FIRST 
				 
			L4:
				CMP EAX,ArrowDown
				JNE L34
				CMP INDEX , 1
				JNE L42
				CALL CLRSCR
				MOV EDX,OFFSET MediumIndex
				MOV ECX,MediumSize
				CALL WRITESTRING
				MOV INDEX, 2
				JMP SECOND
			L42:	
				CMP INDEX , 2
				JNE L43
				CALL CLRSCR
				MOV EDX,OFFSET HardIndex
				MOV ECX,HardSize
				CALL WRITESTRING
				MOV INDEX, 3
				JMP SECOND
			L43:
				CMP INDEX , 3
				JNE SECOND
				CALL CLRSCR
				MOV EDX,OFFSET EASYIndex
				MOV ECX,EASYSize
				CALL WRITESTRING
				MOV INDEX, 1
				JMP SECOND
		GoToLevel:
					CMP EAX,EnterPress
					JNE SECOND
					CMP INDEX,1
					JNE GoToLevel_2
					JMP EasyLevel
		GoToLevel_2:
					CMP INDEX,2
					JNE GoToLevel_3
					JMP MediumLevel
		GoToLevel_3:
					CMP INDEX,3
					JNE SECOND
					JMP HARDLevel
			
	Exit_Label:
				CMP Index,4
				JNE Credits_Label
				EXIT
	Credits_Label:
				CMP Index,3
				JNE Hall_Label
				CALL CLRSCR
				MOV EDX,OFFSET HangMan
				MOV ECX,HangManSize
				mov  eax,yellow+(black*16)
				call SetTextColor
				CALL WRITESTRING
				Again:
				CALL READCHAR
				CMP EAX,EscapePress
				JNE AGAIN
				mov  eax,white+(black*16)
				call SetTextColor
				CALL CLRSCR
				MOV EDX,OFFSET PlayIndex
				MOV ECX,PlaySize
				CALL WRITESTRING
				MOV Index,1
				JMP FIRST
	Hall_Label: JMP FIRST

	EasyLevel:
	mov LivesNum,5
	JMP EXT
	MediumLevel:
	mov LivesNum,3
		JMP EXT
	HardLevel:
		mov LivesNum,2
	EXT:
		 ; Get the console output handle:
	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov consoleHandle,eax

start_again:
					 CALL CLRSCR

  ;Part of code for generate random number from 0 until 19
	mov  eax,20			;get random 0 to 19
	call Randomize		;re-seed generator
	call RandomRange   
	mov  ranNum,eax		;save random number
	call Crlf		
		 
  ;------------------------------------------------------------------
  ;  Find a SelectedWord base on generate ranNum from List_of_words ;
  ;------------------------------------------------------------------
	mov edx, ranNum     
	call find_the_word       ;Returns EDI = pointer to string

 ;------------------------------------------------------------------
 ;    Copy find world in variable SelectedWord                     ;
 ;------------------------------------------------------------------
	INVOKE Str_copy,    ;Copies a source string to the location indicated by a target pointer. Pass the source offset in ESI, and the target offset in EDX		
        ADDR [edi],
        ADDR SelectedWord		
			 
 ;------------------------------------------------------------------
 ;  Make array of dash for the word that be choosen rundomly       ;
 ;------------------------------------------------------------------
	call make_array_dash 

 ;------------------------------------------------------------------
 ;  move number of tries to LivesNum                               ;
 ;------------------------------------------------------------------
	  push eax
	  mov eax,LivesNum
	  mov Num_of_tries, eax

input_word:                           ; from here we start to read the char

mov  eax,white+(black*16)  
    call SetTextColor

  ;------------------------------------------------------------------
  ;   print the drow
  ;------------------------------------------------------------------
	call Print_the_man

  ;------------------------------------------------------------------
  ;Check if you have more live. If player lost all lives, game is over
  ;------------------------------------------------------------------
	cmp Num_of_tries, 0
	je game_over


	mov  eax,green+(black*16)
    call SetTextColor

	mWrite <"Enter A letter :- ">
	call GetMseconds ; get start time
    mov startTime,eax
	call readChar	
	cmp al, 27		
	je exit_main	; end game
	and al, 0DFH			
	push eax        
	sub al, 65	;'A'=65	
    cmp al, 25 ;between A&Z
    jbe nxt
	jmp input_word
	nxt:
	pop eax
	mov The_Letter, al
	call WriteChar
	call Crlf		 
	call Crlf		 

	mov  eax,white+(black*16)
    call SetTextColor

	;------------------------------------------------------------------
	; Check if letter is alredy Entered
	;------------------------------------------------------------------
	mov ecx, LENGTHOF The_LetterArray
	mov edi, offset The_LetterArray
	mov al, The_Letter                 ; Load character to find
	repne scasb                         ; Search
	je letter_exists			; Letter already exist
		

	call make_The_LetterArray 

	;------------------------------------------------------------------
	; Check if letter is in SelectedWord
	;------------------------------------------------------------------
	mov ecx, LENGTHOF SelectedWord
	mov edi, offset SelectedWord
	mov al, The_Letter                 
	repne scasb                         
	jne liveDEC					       ;if Letter is already exist take 1 life

  ;------------------------------------------------------------------
  ; We are making new array, guess letter whange dash on right pleace
  ;------------------------------------------------------------------

    mov esi, offset SelectedWord      
    mov edi, offset guessWords         
    mov ecx, LENGTHOF SelectedWord      ;Num of check bytes
    mov al, The_Letter                 
    mov ebx, 0                       
	PUSH EDX
	MOV EDX,32
	MOV BC,0
Write_loop:
CMP [esi+ebx],DL
	JNE NOT_SPACE
	mov BC,1
	NOT_SPACE:   
    cmp [esi+ebx], al                   
    jne Sk  
	push ebx
	shl ebx,1                                  ; Mul by 2 
	SUB BL,BC                           
    mov [edi+ebx], al					 
	pop ebx                 
    Sk:
    inc ebx                             
    dec ecx                             
    jne Write_loop 
	POP  EDX               

  ;------------------------------------------------------------------
  ; there more letter to in word
  ;------------------------------------------------------------------
	mov ecx, LENGTHOF guessWords		
    mov edi, offset guessWords
    mov al, Dash                 
    repne scasb							
    jne game_win					; No more letter
	jmp input_word				        ; Guess next word


exit_main:
		
	INVOKE ExitProcess,0

letter_exists:

		mov  eax,red+(black*16)
		call SetTextColor
		
		mWrite <"Sorry, you alredy Entered letter, ">
		mov al, The_Letter
		call WriteChar
		call Crlf                                             
		mWrite <"All letters :- ">
		mov edx, offset The_LetterArray
		call WriteString                ; write a string The_LetterArray
		call Crlf
		call Crlf                       
		call Crlf						

		mov  eax,white+(black*16)
		call SetTextColor

		jmp input_word				

liveDEC:
		dec Num_of_tries
		jmp input_word			

game_win:
	call CLRSCR
	AG:

	mGotoxy 1, 1

	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR WINNER_0,    
		Drow_Size,		 
		ADDR NumOfBytes,			 
		0							 

		mov eax,check
		cmp eax,0
		jne existed_Time_Win
		call GetMseconds 
	    sub eax,startTime
		PUSH EAX
		;mov edx,0
		;div conv
		mov  eax,yellow+(black*16)
        call SetTextColor
		mWrite <"your score is: ">
		mov  eax,lightMagenta+(black*16)
        call SetTextColor
		POP EAX
	    call writedec
		mWrite <" ms">
		call crlf
		mov  eax,green+(black*16)
        call SetTextColor
		mWrite <" WINNER WINNER CHICKEN DINNER !! ">
		inc check
		existed_Time_Win:

	mov eax, 750
	call Delay
	mGotoxy 1, 1
	mov  eax,white+(black*16)
    call SetTextColor

   
	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR WINNER_1,    
		Drow_Size,		 
		ADDR NumOfBytes,			 
		0							 

	mov eax, 750
	call Delay
	mGotoxy 1, 1
	mov  eax,green+(black*16)
    call SetTextColor

   
	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR WINNER_2,    
		Drow_Size,		 
		ADDR NumOfBytes,			 
		0							 

	mov eax, 750
	call Delay
	mGotoxy 1, 1
	mov  eax,white+(black*16)
    call SetTextColor

   
	INVOKE WriteConsole,
		consoleHandle,				
		ADDR WINNER_3,   
		Drow_Size,		
		ADDR NumOfBytes,			 
		0							

	mov eax, 750
	call Delay
	mGotoxy 1, 1
	mov  eax,green+(black*16)
    call SetTextColor
	
	dec Check_length
	cmp Check_length, 0
	jne AG
	
	
	
game_over:
	CALL CLRSCR
	AG2:
	mGotoxy 1, 1
		
 
	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR Lose_0,    
		Drow_Size,		     
		ADDR NumOfBytes,			 
		0							

		;check if the first loop print the score
		mov eax,check
		cmp eax,0
		jne existed_Time_Over
		call GetMseconds 
	    sub eax,startTime
		PUSH EAX
		;mov edx,0
		;div conv
		mov  eax,yellow+(black*16)
        call SetTextColor
	    mWrite <"your score is: ">
		mov  eax,lightMagenta+(black*16)
        call SetTextColor
		POP EAX
	    call writedec
		mWrite <" ms">
		CALL CRLF
		 mWrite <"THE CORRECT WORD IS: ">
		 MOV EDX,OFFSET SelectedWord
		 CALL WRITESTRING
		 CALL CRLF
		inc check
		existed_Time_Over:

	mov eax, 750
	call Delay
	mGotoxy 1, 1
	mov  eax,red+(black*16)
    call SetTextColor

   
	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR Lose_1,    
		Drow_Size,		 
		ADDR NumOfBytes,			 
		0							 

	mov eax, 750
	call Delay
	mGotoxy 1, 1
	mov  eax,white+(black*16)
    call SetTextColor

   
	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR Lose_2,    
		Drow_Size,		     
		ADDR NumOfBytes,			 
		0							 

	mov eax, 750
	call Delay
	mGotoxy 1, 1
	mov  eax,red+(black*16)
    call SetTextColor

   
	INVOKE WriteConsole,
		consoleHandle,				
		ADDR Lose_3,   
		Drow_Size,		  
		ADDR NumOfBytes,			
		0							

	mov eax, 750
	call Delay
	mGotoxy 1, 1
	mov  eax,white+(black*16)
    call SetTextColor
	
	dec Check_length
	cmp Check_length, 0
	jne AG2

    jmp log_out		


;-----------------------------------------------
;Calculates: Find the word that we selected rundomly
;Recieves: EDI Contains the offset of List_of_words Array 
;   ECX Contains the length of List_of_words Array 
;   AL contains Element to search for (null termination char)
;Returns:  EDI contains Offset To Selected word 
;----------------------------------------------

find_the_word PROC					
    mov edi, offset List_of_words          
    mov ecx, len               
    mov al,0                 

    x:
    sub edx, 1					
    jc done                    
    repne scasb                ;skip the string to 0 (null termination char)
    jmp x                      ;Next word

  done:
	ret

find_the_word ENDP                   

;-----------------------------------------------
;Calculates: fill the array with num of dashs equ num of
;    selected word characters
;Recieves: EDX Contains the offset of SelectedWord 
;   ECX Contains the length of SelectedWord  
;Returns:  array with dashs
;----------------------------------------------
make_array_dash PROC     
	mov  edx,OFFSET SelectedWord
    call StrLength                 ; return the length of array that EDX contain its offset
    mov  lengthArray,eax
    mov ecx, lengthArray		              
    mov edi, offset guessWords  
    stor:
		 mov bl ,' '
		 cmp [edx],bl
		 je n1
		 mov al , '-'
	     mov [edi], al
		 inc edi
		 n1:
	     mov al , ' '
	     mov [edi], al
		   inc edi
		   inc edx
	loop stor    
	dec edi						
    mov BYTE PTR [edi], 0   

    ret
make_array_dash ENDP  
;-----------------------------------------------
;Calculates: fill the array with all char Entered by player
;Recieves: EDX Contains the offset of The_LetterArray 
;   ECX Contains the length of The_LetterArray  
;Returns:  array with dashs
;----------------------------------------------
make_The_LetterArray PROC     
	mov  edx, OFFSET The_LetterArray
    call StrLength				
    mov  lengthArray, eax

    mov edi, offset The_LetterArray 
    add edi, lengthArray
	mov al, The_Letter
	mov BYTE PTR [edi], al      
	inc edi
	mov BYTE PTR [edi], '/'     ; null termination is (/)

    ret
make_The_LetterArray ENDP  

;-----------------------------------------------
;Calculates: print the game live state player
;Recieves: EAX Contains the number of tries at 
;  this time 
;Returns:  don't return thing just print
;----------------------------------------------

Print_the_man PROC  

	mov eax, Num_of_tries

	cmp eax, 5
	je live_5
	cmp eax, 4
	je live_4
	cmp eax, 3
	je live_3
	cmp eax, 2
	je live_2
	cmp eax, 1
	je live_1
	cmp eax, 0
	je live_0

live_5:    
	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR Lives_5,       
		Drow_Size,		 
		ADDR NumOfBytes,			 
		0							 
	call Crlf						 
	call Crlf						 
	mov edx, offset guessWords
	call WriteString                 
	call Crlf                        
	call Crlf						 
	mWrite <"ALL letter are: ">
	mov edx, offset The_LetterArray
	call WriteString                 
	call Crlf                        
	call Crlf                        
	ret

live_4:    
	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR Lives_4,       
		Drow_Size,		 
		ADDR NumOfBytes,			 
		0							 
	call Crlf						 
	call Crlf						 
	mov edx, offset guessWords
	call WriteString                 
	call Crlf                        
	call Crlf						 
	mWrite <"ALL letter are: ">
	mov edx, offset The_LetterArray
	call WriteString                 
	call Crlf                        
	call Crlf                        
	ret

live_3:    
	INVOKE WriteConsole,
		consoleHandle,				 
		ADDR Lives_3,       
		Drow_Size,		 
		ADDR NumOfBytes,			 
		0							 
	call Crlf						 
	call Crlf						 
	mov edx, offset guessWords
	call WriteString                 
	call Crlf                        
	call Crlf						 
	mWrite <"ALL letter are: ">
	mov edx, offset The_LetterArray
	call WriteString                 
	call Crlf                        
	call Crlf                        
	ret

live_2:    
	INVOKE WriteConsole,
		consoleHandle,				
		ADDR Lives_2,       
		Drow_Size,		 
		ADDR NumOfBytes,			 
		0							
	call Crlf						 
	call Crlf						 
	mov edx, offset guessWords
	call WriteString              
	call Crlf                        
	call Crlf						 
	mWrite <"ALL letter are: ">
	mov edx, offset The_LetterArray
	call WriteString                
	call Crlf                        
	call Crlf                        
	ret

live_1:    
	INVOKE WriteConsole,
		consoleHandle,				
		ADDR Lives_1,      
		Drow_Size,		
		ADDR NumOfBytes,			
		0							
	call Crlf						
	call Crlf						
	mov edx, offset guessWords
	call WriteString                
	call Crlf                       
	call Crlf						
	mWrite <"ALL letter are: ">
	mov edx, offset The_LetterArray
	call WriteString                
	call Crlf                       
	call Crlf                       
	ret

live_0:    
	INVOKE WriteConsole,
		consoleHandle,				
		ADDR Lives_0,      
		Drow_Size,		
		ADDR NumOfBytes,			
		0							
	call Crlf						
	mov edx, offset guessWords
	call WriteString                
	call Crlf                      
	call Crlf						
	mWrite <"ALL letter are: ">
	mov edx, offset The_LetterArray
	call WriteString                
	call Crlf                       
	call Crlf                    
	ret
		
Print_the_man ENDP 

log_out:
	exit
main ENDP
END main