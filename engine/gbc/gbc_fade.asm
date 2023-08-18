_GBCFade::
	call GetRGB
	ld a, [wGBCFadeCounter]
	ld e, a
	jr .fadeOutToBlack
	;and %11000000
	;; last 2 bits of wGBCFadeCounter = which type of fade is being done
	;and a
	;ld c, 0
	;jr z, .fadeOutToBlack
	;cp %10000000
	;jr z, .fadeInFromBlack
	;cp %01000000
	;ld c, 255
	;jr z, .fadeOutToWhite
	;jr .fadeInFromWhite
.fadeOutToBlack
	ldh a, [hRGB]
	ld d, a
	call .getFadeStep
	call .loopDown
	ldh [hRGB], a
	ldh a, [hRGB + 1]
	ld d, a
	call .getFadeStep
	call .loopDown
	ldh [hRGB + 1], a
	ldh a, [hRGB + 2]
	ld d, a
	call .getFadeStep
	call .loopDown
	ldh [hRGB + 2], a
	jp WriteRGB
.toWhite
	
.fadeIn
	ld b, a
	ld a, [hRGB]
	ld c, 255

.getFadeStep
	srl d ; d/2
	srl d ; d/4
	srl d ; d/8
	srl d ; d/16
	srl d ; d/32
	; d = the magnitude with which we will decrease the brightness per fade step
	ret
.loopDown
	ld b, e
.loop
	dec a
	ret z
	dec a
	ret z
	dec a
	ret z
	dec b
	jr nz, .loop
	ret

	

;get the RGB values out of color in de into a spots pointed to by hRGB
GetRGB:
;GetRed:	
	;red bits in e are %00011111
	ld a, e
	and %00011111	;mask to get just the color value
	ldh [hRGB + 0], a
;GetGreen:
	;green bits in de are %00000011 11100000
	ld a, e
	and %11100000
	;a is now xxx00000
	ld b, a
	srl b
	srl b
	srl b
	srl b
	srl b
	;b is now 00000xxx
	ld a, d
	and %00000011
	sla a
	sla a
	sla a
	;a is now 000xx000
	or b
	;a is now 000xxxxx
	ldh [hRGB + 1], a
;GetBlue:
	;blue bits in d are %01111100
	ld a, d
	rra
	rra
	and %00011111	;mask to get just the color value
	ldh [hRGB + 2], a
	ret

;write a colors at hRGB into their proper bit placement in de
WriteRGB:
;writeRed:
	ldh a, [hRGB + 0]
	ld b, a
	ld a, e
	and %11100000
	or b
	ld e, a
;writeGreen:
	ldh a, [hRGB + 1]
	;					d		e
	;green bits are 00000011 11100000
	;bits in a are 00011111
	rrca
	rrca
	rrca
	ld b, a
	;bits in b are 11100011	
	;now load into d
	and %00000011
	ld c, a
	;bits in c are 00000011
	ld a, d
	and %11111100
	or c
	ld d, a
	;bits in b are still 11100011	
	;now load into e
	ld a, b
	and %11100000
	ld c, a
	;bits in c are 11100000
	ld a, e
	and %00011111
	or c
	ld e, a
;writeBlue:
	ldh a, [hRGB + 2]
	ld b, a	;blue bits are 00011111
	ld a, d
	and %10000011
	sla b	;blue bits are 00111110
	sla b	;blue bits are 01111100
	or b
	ld d, a
	ret