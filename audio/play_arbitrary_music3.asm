; input: e = which sound to play
PlayExtraSound3::
	; begin playing any sound in this bank
	ld a, SFX_SWAP
	call PlaySoundWaitForCurrent
	; fall through
	; replace it with another one instantly

; input: e = which extra song to play
PlayArbitraryMusic3::
	dec e
	ld d, 0
	ld hl, ExtraMusicPointers3
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

ExtraMusicPointers3:
	dw Music_Giovanni

Music_Giovanni:
	dw wChannelCommandPointers + CHAN1 * 2, Music_Giovanni_Ch1
	dw wChannelCommandPointers + CHAN2 * 2, Music_Giovanni_Ch2
	dw wChannelCommandPointers + CHAN3 * 2, Music_Giovanni_Ch3
	dw wChannelCommandPointers + CHAN4 * 2, Music_Giovanni_Ch4
	db -1
