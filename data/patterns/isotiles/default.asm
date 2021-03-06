	ifnd H_ISOTILES_DEFAULT_SET
H_ISOTILES_DEFAULT_SET = 1

	include 'modules/block/block.asm'

ISOTILES_HEADER_SIZE = IsoTiles_default_dirt_Tiledata - IsoTiles_default_dirt

IsoTiles:
	; This table should correspond with the constant IDs in block.asm
	dc.l	IsoTiles_default_air
	dc.l	0
	dc.l	0
	dc.l	IsoTiles_default_dirt

IsoTiles_default_air:
	; 122 byte header
	dc.b BLOCK_AIR
	dc.b 1
	dc.b 'default:air         '		; 120 chars to skip
	dc.b 'Air: perfect for breathing, burning fire, and desperately needing when deep underwater.             '

	; Tiledata
	dc.w $0000
	dc.l IsoTiles_default_air_Palette
	rept 8
	dc.l $00000000
	endr

	; Palettes
IsoTiles_default_air_Palette:
	rept 16
	dc.w $0000
	endr

IsoTiles_default_dirt:
	dc.b BLOCK_DIRT					; Block ID (number)
	dc.b 1							; Number of different tile states
	dc.b 'default:dirt        '		; 120 chars to skip
	dc.b 'Good, old fashioned dirt. Ideal for growing grass, filling holes, and burying the dead.             '

	; Tiledata
IsoTiles_default_dirt_Tiledata:
	dc.w $0000						; Tiles for status flag
	dc.l IsoTiles_default_dirt_Palette
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000001
	dc.l $00000111
	dc.l $00011111
	dc.l $01111111

	dc.l $00000001
	dc.l $00000111
	dc.l $00011111
	dc.l $01111111
	dc.l $11111111
	dc.l $11111111
	dc.l $11111111
	dc.l $11111111

	dc.l $10000000
	dc.l $11100000
	dc.l $11111000
	dc.l $11111110
	dc.l $11111111
	dc.l $11111111
	dc.l $11111111
	dc.l $11111111

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $10000000
	dc.l $11100000
	dc.l $11111000
	dc.l $11111110

	dc.l $11111111
	dc.l $22111111
	dc.l $22221111
	dc.l $22222211
	dc.l $22222222
	dc.l $22222222
	dc.l $22222222
	dc.l $33322222

	dc.l $11111111
	dc.l $11111111
	dc.l $11111111
	dc.l $11111111
	dc.l $11111111
	dc.l $22111111
	dc.l $22221111
	dc.l $22222211

	dc.l $11111111
	dc.l $11111111
	dc.l $11111111
	dc.l $11111111
	dc.l $11111111
	dc.l $11111144
	dc.l $11114444
	dc.l $11444444

	dc.l $11111111
	dc.l $11111144
	dc.l $11114444
	dc.l $11444444
	dc.l $44444444
	dc.l $44444444
	dc.l $44444444
	dc.l $44444555

	dc.l $33333222
	dc.l $33333332
	dc.l $33333333
	dc.l $33333333
	dc.l $33333333
	dc.l $33333333
	dc.l $33333333
	dc.l $33333333

	dc.l $22222222
	dc.l $22222222
	dc.l $32222222
	dc.l $33322222
	dc.l $33333222
	dc.l $33333332
	dc.l $33333333
	dc.l $33333333

	dc.l $44444444
	dc.l $44444444
	dc.l $44444445
	dc.l $44444555
	dc.l $44455555
	dc.l $45555555
	dc.l $55555555
	dc.l $55555555

	dc.l $44455555
	dc.l $45555555
	dc.l $55555555
	dc.l $55555555
	dc.l $55555555
	dc.l $55555555
	dc.l $55555555
	dc.l $55555555

	dc.l $33333333
	dc.l $00333333
	dc.l $00003333
	dc.l $00000033
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $33333333
	dc.l $33333333
	dc.l $33333333
	dc.l $33333333
	dc.l $33333333
	dc.l $00333333
	dc.l $00003333
	dc.l $00000033

	dc.l $55555555
	dc.l $55555555
	dc.l $55555555
	dc.l $55555555
	dc.l $55555555
	dc.l $55555500
	dc.l $55550000
	dc.l $55000000

	dc.l $55555555
	dc.l $55555500
	dc.l $55550000
	dc.l $55000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	; Overlay masks
	; All these are always (32 * 16) bytes away from the current one
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFF0
	dc.l $FFFFF000
	dc.l $FFF00000
	dc.l $F0000000

	dc.l $FFFFFFF0
	dc.l $FFFFF000
	dc.l $FFF00000
	dc.l $F0000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $0FFFFFFF
	dc.l $000FFFFF
	dc.l $00000FFF
	dc.l $0000000F
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $0FFFFFFF
	dc.l $000FFFFF
	dc.l $00000FFF
	dc.l $0000000F

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000

	dc.l $00000000
	dc.l $FF000000
	dc.l $FFFF0000
	dc.l $FFFFFF00
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $FF000000
	dc.l $FFFF0000
	dc.l $FFFFFF00

	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $00000000
	dc.l $000000FF
	dc.l $0000FFFF
	dc.l $00FFFFFF

	dc.l $00000000
	dc.l $000000FF
	dc.l $0000FFFF
	dc.l $00FFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF
	dc.l $FFFFFFFF

	; Palettes
IsoTiles_default_dirt_Palette:
	dc.w $0000
	dc.w $0071
	dc.w $0051
	dc.w $0246
	dc.w $0041
	dc.w $0235
	rept 10
	dc.w $0000
	endr

	endif