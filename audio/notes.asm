
	table_width 2
	dw $F82C ; C_
	dw $F89D ; C#
	dw $F907 ; D_
	dw $F96B ; D#
	dw $F9CA ; E_
	dw $FA23 ; F_
	dw $FA77 ; F#
	dw $FAC7 ; G_
	dw $FB12 ; G#
	dw $FB58 ; A_
	dw $FB9B ; A#
	dw $FBDA ; B_
;;;;;;;;;; PureRGBnote: ADDED: additional frequencies to allow for a wider range of notes when doing transpositions
	dw $fc16 ; C_
	dw $fc4e ; C#
	dw $fc83 ; D_
	dw $fcb5 ; D#
	dw $fce5 ; E_
	dw $fd11 ; F_
	dw $fd3b ; F#
	dw $fd63 ; G_
	dw $fd89 ; G#
	dw $fdac ; A_
	dw $fdcd ; A#
	dw $fded ; B_
;;;;;;;;;;
	assert_table_length NUM_NOTES * 2
