; poison vs bug -> 2x -> bug+grass -> 4x

DEF CONVERT_GRASS_POISON    EQUS 252
DEF CONVERT_TRI_GRASS       EQUS 253
DEF CONVERT_TRI_BUG         EQUS 254
DEF CONVERT_TRI_FLYING      EQUS 255

; CONVERT: use tri attack when super effective

ConversionAttackTable:
	db MEGA_DRAIN            ; RHYDON
	db DIZZY_PUNCH           ; KANGASKHAN         
	db PSYCHIC               ; NIDORAN_M          
	db DIZZY_PUNCH           ; CLEFAIRY           
	db CONVERT_TRI_FLYING    ; SPEAROW            
	db EARTHQUAKE            ; VOLTORB            
	db ICE_BEAM              ; NIDOKING           
	db SOLARBEAM             ; SLOWBRO            
	db CONVERT_GRASS_POISON  ; IVYSAUR            
	db LEECH_LIFE            ; EXEGGUTOR          
	db DIZZY_PUNCH           ; LICKITUNG          
	db LEECH_LIFE            ; EXEGGCUTE          
	db PSYCHIC_M             ; GRIMER             
	db EARTHQUAKE            ; GENGAR             
	db PSYCHIC               ; NIDORAN_F          
	db ICE_BEAM              ; NIDOQUEEN          
	db ICE_BEAM              ; CUBONE             
	db MEGA_DRAIN            ; RHYHORN            
	db SOLARBEAM             ; LAPRAS             
	db SURF                  ; ARCANINE           
	db TWINEEDLE             ; MEW                
	db THUNDERBOLT           ; GYARADOS           
	db SOLARBEAM             ; SHELLDER           
	db EARTHQUAKE            ; TENTACOOL          
	db EARTHQUAKE            ; GASTLY             
	db SPIKE_CANNON          ; SCYTHER            
	db TWINEEDLE             ; STARYU             
	db SOLARBEAM             ; BLASTOISE          
	db DRILL_PECK            ; PINSIR             
	db CONVERT_TRI_GRASS     ; TANGELA            
	db 0
	db 0
	db SURF                  ; GROWLITHE          
	db RAZOR_LEAF            ; ONIX               
	db CONVERT_TRI_FLYING    ; FEAROW             
	db CONVERT_TRI_FLYING    ; PIDGEY             
	db SOLARBEAM             ; SLOWPOKE           
	db TWINEEDLE             ; KADABRA            
	db MEGA_DRAIN            ; GRAVELER           
	db DIZZY_PUNCH           ; CHANSEY            
	db PSYCHIC_M             ; MACHOKE            
	db BARRAGE               ; MR_MIME  ##Needs option remap  
	db PSYCHIC_M             ; HITMONLEE          
	db PSYCHIC_M             ; HITMONCHAN         
	db PSYCHIC_M             ; ARBOK              
	db CONVERT_TRI_BUG       ; PARASECT           
	db SOLARBEAM             ; PSYDUCK            
	db TWINEEDLE             ; DROWZEE            
	db MEGA_DRAIN            ; GOLEM              
	db 0        
	db SPIKE_CANNON          ; MAGMAR             
	const_skip               ; $34
	db EARTHQUAKE            ; ELECTABUZZ         
	db EARTHQUAKE            ; MAGNETON           
	db PSYCHIC_M             ; KOFFING            
	const_skip               ; $38
	db PSYCHIC_M             ; MANKEY             
	db SOLARBEAM             ; SEEL               
	db SOLARBEAM             ; DIGLETT            
	db DIZZY_PUNCH           ; TAUROS             
	const_skip               ; $3D
	const_skip               ; $3E
	const_skip               ; $3F
	db CONVERT_TRI_FLYING    ; FARFETCHD          
	db CONVERT_TRI_BUG       ; VENONAT            
	db ICE_BEAM              ; DRAGONITE          
	const_skip               ; $43
	const_skip               ; $44
	const_skip               ; $45
	db ICE_BEAM              ; DODUO              
	db SOLARBEAM             ; POLIWAG            
	db SPIKE_CANNON          ; JYNX               
	db SPIKE_CANNON          ; MOLTRES            
	db SPIKE_CANNON          ; ARTICUNO           
	db SPIKE_CANNON          ; ZAPDOS             
	db 0                     ; DITTO         ; TODO: ditto needs unique code to check what it transformed into           
	db DIZZY_PUNCH           ; MEOWTH             
	db SOLARBEAM             ; KRABBY             
	const_skip               ; $4F
	const_skip               ; $50
	const_skip               ; $51
	db SPIKE_CANNON          ; VULPIX             
	db SPIKE_CANNON          ; NINETALES          
	db EARTHQUAKE            ; PIKACHU            
	db EARTHQUAKE            ; RAICHU             
	const_skip               ; $56
	const_skip               ; $57
	db ICE_BEAM              ; DRATINI            
	db ICE_BEAM              ; DRAGONAIR          
	db SURF                  ; KABUTO             
	db SURF                  ; KABUTOPS           
	db SOLARBEAM             ; HORSEA             
	db EGG_BOMB              ; SEADRA             
	const_skip               ; $5E
	const_skip               ; $5F
	db SOLARBEAM             ; SANDSHREW          
	db SOLARBEAM             ; SANDSLASH          
	db MEGA_DRAIN            ; OMANYTE            
	db MEGA_DRAIN            ; OMASTAR            
	db DIZZY_PUNCH           ; JIGGLYPUFF         
	db DIZZY_PUNCH           ; WIGGLYTUFF         
	db DIZZY_PUNCH           ; EEVEE              
	db SPIKE_CANNON          ; FLAREON            
	db EARTHQUAKE            ; JOLTEON            
	db SOLARBEAM             ; VAPOREON           
	db PSYCHIC_M             ; MACHOP             
	db PSYCHIC_M             ; ZUBAT              
	db PSYCHIC_M             ; EKANS              
	db CONVERT_TRI_BUG       ; PARAS              
	db SOLARBEAM             ; POLIWHIRL          
	db SOLARBEAM             ; POLIWRATH          
	db CONVERT_TRI_BUG       ; WEEDLE             
	db CONVERT_TRI_BUG       ; KAKUNA             
	db CONVERT_TRI_BUG       ; BEEDRILL           
	const_skip               ; $73
	db ICE_BEAM              ; DODRIO             
	db PSYCHIC_M             ; PRIMEAPE           
	db SOLARBEAM             ; DUGTRIO            
	db CONVERT_TRI_BUG       ; VENOMOTH           
	db SOLARBEAM             ; DEWGONG            
	const_skip               ; $79
	const_skip               ; $7A
	db CONVERT_TRI_BUG       ; CATERPIE           
	db CONVERT_TRI_BUG       ; METAPOD            
	db CONVERT_TRI_BUG       ; BUTTERFREE         
	db PSYCHIC_M             ; MACHAMP            
	const_skip               ; $7F
	db SOLARBEAM             ; GOLDUCK            
	db TWINEEDLE             ; HYPNO              
	db CONVERT_TRI_FLYING    ; GOLBAT             
	db TWINEEDLE             ; MEWTWO             
	db DIZZY_PUNCH           ; SNORLAX            
	db SOLARBEAM             ; MAGIKARP           
	const_skip               ; $86
	const_skip               ; $87
	db PSYCHIC_M             ; MUK                
	const_skip               ; $89
	db MEGA_DRAIN            ; KINGLER            
	db SOLARBEAM             ; CLOYSTER           
	const_skip               ; $8C
	db EARTHQUAKE            ; ELECTRODE          
	db DIZZY_PUNCH           ; CLEFABLE           
	db PSYCHIC_M             ; WEEZING            
	db DIZZY_PUNCH           ; PERSIAN            
	db SOLARBEAM             ; MAROWAK            
	const_skip               ; $92
	db EARTHQUAKE            ; HAUNTER            
	db TWINEEDLE             ; ABRA               
	db TWINEEDLE             ; ALAKAZAM           
	db CONVERT_TRI_FLYING    ; PIDGEOTTO        ; thunderbolt if magneton
	db CONVERT_TRI_FLYING    ; PIDGEOT          ; thunderbolt if magneton  
	db SOLARBEAM             ; STARMIE            
	db CONVERT_GRASS_POISON  ; BULBASAUR          
	db CONVERT_GRASS_POISON  ; VENUSAUR           
	db EARTHQUAKE            ; TENTACRUEL         
	const_skip               ; $9C
	db SOLARBEAM             ; GOLDEEN            
	db SOLARBEAM             ; SEAKING            
	const_skip               ; $9F
	const_skip               ; $A0
	const_skip               ; $A1
	const_skip               ; $A2
	db SURF                  ; PONYTA             
	db SURF                  ; RAPIDASH           
	db DIZZY_PUNCH           ; RATTATA            
	db DIZZY_PUNCH           ; RATICATE           
	db PSYCHIC_M             ; NIDORINO           
	db PSYCHIC_M             ; NIDORINA           
	db MEGA_DRAIN            ; GEODUDE            
	db DIZZY_PUNCH           ; PORYGON            
	db THUNDERBOLT           ; AERODACTYL         
	db RAZOR_LEAF            ; HARDENED_ONIX      
	db EARTHQUAKE            ; MAGNEMITE          
	db TWINEEDLE             ; ARMORED_MEWTWO     
	db EARTHQUAKE            ; POWERED_HAUNTER    
	db SURF                  ; CHARMANDER         
	db SOLARBEAM             ; SQUIRTLE           
	db SURF                  ; CHARMELEON         
	db SOLARBEAM             ; WARTORTLE          
	db SPIKE_CANNON          ; CHARIZARD          
	db 0   ; MISSINGNO           ; missingno needs custom behaviour
	db 0             ; FOSSIL_KABUTOPS    
	db 0             ; FOSSIL_AERODACTYL  
	db 0             ; MON_GHOST          
	db CONVERT_GRASS_POISON  ; ODDISH             
	db CONVERT_GRASS_POISON  ; GLOOM              
	db CONVERT_GRASS_POISON  ; VILEPLUME          
	db CONVERT_GRASS_POISON  ; BELLSPROUT         
	db CONVERT_GRASS_POISON  ; WEEPINBELL         
	db ICE_BEAM              ; VICTREEBEL         

; if magneton, use these moves instead of tri attack
SecondaryConversion:
	db FLAMETHROWER ; CONVERT_TRI_GRASS
	db FLAMETHROWER ; CONVERT_TRI_BUG
	db THUNDERBOLT  ; CONVERT_TRI_FLYING

; if CONVERT_GRASS_POISON, if bug SE against poison, choose LEECH_LIFE, otherwise choose DRILL_PECK if porygon, or FLAMETHROWER if magneton
; if missingno, use TRI ATTACK if porygon, THUNDERBOLT if magneton
; if ditto, and hasn't transformed yet, use earthquake with magneton, dizzy punch with porygon, if it has transformed, look up the pokemon it transformed into
; if mr mime, and ghost is SE against psychic, use BARRAGE (default), otherwise use tri attack if porygon, thunderbolt if magneton

; for some pokemon if they have their original typings, we need to tweak what conversion will use
ConversionTypeRemapTable:
	db BUTTERFREE, SPIKE_CANNON
	db FEAROW, CONVERT_TRI_FLYING
	db VICTREEBEL, CONVERT_GRASS_POISON
	db DODUO, CONVERT_TRI_FLYING
	db DODRIO, CONVERT_TRI_FLYING
	db SEADRA, SOLARBEAM
	db PINSIR, CONVERT_TRI_BUG
	db KABUTO, SOLARBEAM
	db KABUTOPS, SOLARBEAM
	db -1