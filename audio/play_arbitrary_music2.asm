; input: e = which sound to play
PlayExtraSound2::
	; begin playing any sound in this bank
	ld a, SFX_CAUGHT_MON
	call PlaySoundWaitForCurrent
	; fall through
	; replace it with another one instantly

; input: e = which extra song to play
PlayArbitraryMusic2::
	dec e
	ld d, 0
	ld hl, ExtraMusicPointers2
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a ; now at the music header
.loop
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a ; command pointer address
	pop de
	inc de
	inc de
	ld a, [de]
	ld b, a
	inc de
	ld a, [de]
	push de
	ld d, a
	ld e, b
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop hl
	inc hl
	ld a, [hl]
	and a
	cp $ff
	jr nz, .loop
	ret

ExtraMusicPointers2:
	dw PokeFlute_Audio2
	dw Poof_Audio2

PokeFlute_Audio2:
	dw wChannelCommandPointers + CHAN5 * 2, SFX_Pokeflute_Ch5
	dw wChannelCommandPointers + CHAN6 * 2, SFX_Pokeflute_Ch6
	dw wChannelCommandPointers + CHAN7 * 2, SFX_Pokeflute_Ch7
	db -1

Poof_Audio2:
	dw wChannelCommandPointers + CHAN5 * 2, SFX_Swap_2_Ch5
	dw wChannelCommandPointers + CHAN6 * 2, SFX_Swap_2_Ch6
	dw wChannelCommandPointers + CHAN7 * 2, SFX_Swap_2_Ch7
	db -1