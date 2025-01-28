
org $AF8000


%anchor($AF8000)
Tiles_Oum:
incbin "../data/Tiles_Oum.bin" ; $800 bytes

if !FEATURE_KEEP_UNREFERENCED
%anchor($AF8800)
UNUSED_Tiles_Gravy_AF8800:
incbin "../data/UNUSED_Tiles_Gravy_AF8800.bin" ; $A00 bytes
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($AF9200)
Tiles_Metaree:
incbin "../data/Tiles_Metaree.bin" ; $600 bytes

%anchor($AF9800)
Tiles_Bang:
incbin "../data/Tiles_Bang.bin" ; $1000 bytes

%anchor($AFA800)
Tiles_Fireflea:
incbin "../data/Tiles_Fireflea.bin" ; $600 bytes

%anchor($AFAE00)
Tiles_Reflec:
incbin "../data/Tiles_Reflec.bin" ; $600 bytes

%anchor($AFB400)
Tiles_Yard:
incbin "../data/Tiles_Yard.bin" ; $800 bytes

%anchor($AFBC00)
Tiles_Skultera:
incbin "../data/Tiles_Skultera.bin" ; $600 bytes

%anchor($AFC200)
Tiles_BombTorizo_GoldenTorizo:
incbin "../data/Tiles_BombTorizo_GoldenTorizo.bin" ; $2000 bytes

%anchor($AFE200)
Tiles_GoldenTorizoEgg:
incbin "../data/Tiles_GoldenTorizoEgg.bin" ; $600 bytes

%anchor($AFE800)
Tiles_Zoa:
incbin "../data/Tiles_Zoa.bin" ; $400 bytes

%anchor($AFEC00)
Freespace_BankAF_EC00:                                                   ;AFEC00;
; $1400 bytes
