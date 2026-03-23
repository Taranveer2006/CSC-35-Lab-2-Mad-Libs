#--------------------------------------------------
# Lab 2: Mad Libs
# Name: Taranveer Singh
#--------------------------------------------------

.intel_syntax noprefix     

.data
PromptAdj1: .asciz "Enter an Adjective: "
PromptPlace: .asciz "Enter a Place: "
PromptVerb1: .asciz "Enter a verb: "
PromptAdj2: .asciz "Enter an Adjective: "
PromptVerb2: .asciz "Enter a verb (past tense): "
PromptVerb3: .asciz "Enter a verb: "
PromptNoun1: .asciz "Enter a Noun: "
PromptAnimal: .asciz "Enter an Animal: "
PromptAdverb: .asciz "Enter an Adverb: "
PromptNumber: .asciz "Enter a Number: "
PromptExcalm: .asciz "Enter an exclamation: "
PromptVerb4: .asciz "Enter a Verb: "
PromptNoun2: .asciz "Enter a Noun: "
PromptAdj3: .asciz "Enter a Adjective: "

Story1: .asciz "Once upon a time, a tiny "
Story2: .asciz " Computer sat in a "
Story3:  .asciz ", No one thought it could "
Story4: .asciz " anything useful."
Story5: .asciz "One day, a "
Story6: .asciz " task came along that made every other computer "
Story7: .asciz " in fear. But the little computer said, I think I can "
Story8: .asciz " it!"
Story9: .asciz "Its "
Story10: .asciz " whirred like a "
Story11: .asciz " as it worked "
Story12: .asciz " though the night. I think I can... I think I can... it repated "
Story13: .asciz " times."
Story14: .asciz "Finally. the screen flashed: "
Story15: .asciz "! The task was done! Everyone "
Story16: .asciz ", and the little computer earned a shiny new "
Story17: .asciz "."
Story18: .asciz "The "
Story19: .asciz " End."

BufAdj1: .space 64
BufPlace: .space 64
BufVerb1: .space 64
BufAdj2: .space 64
BufVerb2: .space 64
BufNoun1: .space 64
BufAnimal: .space 64
BufAdverb: .space 64
BufNumber: .space 64
BufExclam: .space 64
BufVerb3: .space 64
BufNoun2: .space 64
BufAdj3: .space 64

.text
.global Program

Program:
 
	#1 Ask for Adjective
	lea rcx, PromptAdj1
	call PrintStrZ

	#2 Read User input
	lea rcx, BufAdj1
	mov rdx, 64
	call ScanStrZ

	#3 Ask for a place
	lea rcx, PromptPlace
	call PrintStrZ

	#4 Read User input
	lea rcx, BufPlace
	mov rdx, 64
	call ScanStrZ

	#5 Ask for Verb
	lea rcx, PromptVerb1
	call PrintStrZ
	
	#6 Read User Input
	lea rcx, BufVerb1
	mov rdx, 64
	call ScanStrZ

	#7 Ask for Adjective
	lea rcx, PromptAdj2
	call PrintStrZ

	#8 Read User Input
	lea rcx, BufAdj2
	mov rdx, 64
	call ScanStrZ

	#9 Ask for Verb
	lea rcx, PromptVerb2
	call PrintStrZ

	#10 Read User Input
	lea rcx,BufVerb2
	mov rdx,64
	call ScanStrZ

	#11 Ask for Noun1
	lea rcx, PromptNoun1
	call PrintStrZ

	#12 Read User Input
	lea rcx, BufNoun1
	mov rdx, 64 
	call ScanStrZ

	#13 Ask for Animal
	lea rcx, PromptAnimal
	call PrintStrZ

	#14 Read User Input
	lea rcx, BufAnimal
	mov rdx, 64
	call ScanStrZ

	#15 Ask for Adverb
	lea rcx, PromptAdverb
	call PrintStrZ

	#16 Read User Input
	lea rcx, BufAdverb
	mov rdx, 64
	call ScanStrZ

	#17 Ask for Number 
	lea rcx, PromptNumber
	call PrintStrZ

	#18 Read User Input
	lea rcx, BufNumber
	mov rdx, 65
	call ScanStrZ

	#19 Ask for  Exclam
	lea rcx, PromptExcalm
	call PrintStrZ

	#20 Read the User Input
	lea rcx, BufExclam
	mov rdx, 64
	call ScanStrZ

	#21 Ask for Verb
	lea rcx, PromptVerb3
	call PrintStrZ

	#22 Read User Input
	lea rcx, BufVerb3
	mov rdx, 65
	call ScanStrZ

	# 23 Ask for Noun
	lea rcx, PromptNoun2
	call PrintStrZ

	#24 Read User Input
	lea rcx, BufNoun2
	mov rdx, 65
	call ScanStrZ

	#25 Ask for Adjctive 
	lea rcx, PromptAdj3
	call PrintStrZ

	#26 Read User Input
	lea rcx, BufAdj3
	mov rdx, 65
	call ScanStrZ 

	# Part 2 Display

	#Print out the full story
	lea rcx, Story1
	call PrintStrZ
	lea rcx, BufAdj1
	call PrintStrZ

	lea rcx, Story2
	call PrintStrZ
	lea rcx, BufPlace
	call PrintStrZ

	lea rcx, Story3
	call PrintStrZ
	lea rcx, BufVerb1
	call PrintStrZ

	lea rcx, Story4
	call PrintStrZ

	lea rcx, Story5
	call PrintStrZ
	lea rcx, BufAdj2
	call PrintStrZ

	lea rcx, Story6
	call PrintStrZ
	lea rcx, BufVerb2
	call PrintStrZ

	lea rcx, Story7
	call PrintStrZ
	lea rcx, BufVerb3
	call PrintStrZ

	lea rcx, Story8
	call PrintStrZ

	lea rcx, Story9
	call PrintStrZ
	lea rcx, BufNoun1
	call PrintStrZ

	lea rcx, Story10
	call PrintStrZ
	lea rcx, BufAnimal
	call PrintStrZ

	lea rcx, Story11
	call PrintStrZ
	lea rcx, BufAdverb
	call PrintStrZ

	lea rcx, Story12
	call PrintStrZ
	lea rcx, BufNumber
	call PrintStrZ

	lea rcx, Story13
	call PrintStrZ

	lea rcx, Story14
	call PrintStrZ
	lea rcx, BufExclam
	call PrintStrZ

	lea rcx, Story15
	call PrintStrZ
	lea rcx, BufVerb3
	call PrintStrZ

	lea rcx, Story16
	call PrintStrZ
	lea rcx, BufNoun2
	call PrintStrZ

	lea rcx, Story17
	call PrintStrZ

	lea rcx, Story18
	call PrintStrZ
	lea rcx, BufAdj3
	call PrintStrZ

	lea rcx, Story19
	call PrintStrZ

call ProgramEnd
