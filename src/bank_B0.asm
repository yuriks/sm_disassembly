
org $B08000


%anchor($B08000)
Tiles_Debug_PaletteViewer:
incbin "../data/Tiles_Debug_PaletteViewer.bin" ; $1000 bytes

if !FEATURE_KEEP_UNREFERENCED
%anchor($B09000)
UNUSED_Tiles_SolidColor_B09000:
incbin "../data/UNUSED_Tiles_SolidColor_B09000.bin" ; $400 bytes
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($B09400)
Tiles_Ridley_0:
incbin "../data/Tiles_Ridley_0.bin" ; $440 bytes

%anchor($B09840)
Tiles_Ridley_1:
incbin "../data/Tiles_Ridley_1.bin" ; $200 bytes

%anchor($B09A40)
Tiles_Ridley_2:
incbin "../data/Tiles_Ridley_2.bin" ; $F40 bytes

%anchor($B0A980)
Tiles_Ridley_3:
incbin "../data/Tiles_Ridley_3.bin" ; $200 bytes

%anchor($B0AB80)
Tiles_Ridley_4:
incbin "../data/Tiles_Ridley_4.bin" ; $880 bytes

%anchor($B0B400)
Tiles_RidleyExplosion:
incbin "../data/Tiles_RidleyExplosion.bin" ; $400 bytes

%anchor($B0B800)
Tiles_RidleysRibsAndClaws_0:
incbin "../data/Tiles_RidleysRibsAndClaws_0.bin" ; $40 bytes

%anchor($B0B840)
Tiles_RidleysRibsAndClaws_1:
incbin "../data/Tiles_RidleysRibsAndClaws_1.bin" ; $40 bytes

%anchor($B0B880)
Tiles_RidleysRibsAndClaws_2:
incbin "../data/Tiles_RidleysRibsAndClaws_2.bin" ; $80 bytes

%anchor($B0B900)
Tiles_RidleysRibsAndClaws_3:
incbin "../data/Tiles_RidleysRibsAndClaws_3.bin" ; $40 bytes

%anchor($B0B940)
Tiles_RidleysRibsAndClaws_4:
incbin "../data/Tiles_RidleysRibsAndClaws_4.bin" ; $40 bytes

%anchor($B0B980)
Tiles_RidleysRibsAndClaws_5:
incbin "../data/Tiles_RidleysRibsAndClaws_5.bin" ; $80 bytes

%anchor($B0BA00)
Tiles_CeresDoor_0:
incbin "../data/Tiles_CeresDoor_0.bin" ; $200 bytes

%anchor($B0BC00)
Tiles_CeresDoor_1:
incbin "../data/Tiles_CeresDoor_1.bin" ; $200 bytes

%anchor($B0BE00)
Tiles_CeresDoor_2:
incbin "../data/Tiles_CeresDoor_2.bin" ; $200 bytes

%anchor($B0C000)
Tiles_EscapeTimer_0:
incbin "../data/Tiles_EscapeTimer_0.bin" ; $200 bytes

%anchor($B0C200)
Tiles_EscapeTimer_1:
incbin "../data/Tiles_EscapeTimer_1.bin" ; $200 bytes

%anchor($B0C400)
Tiles_CeresElevatorRoomDoor:
incbin "../data/Tiles_CeresElevatorRoomDoor.bin" ; $400 bytes

%anchor($B0C800)
Tiles_Draygon:
incbin "../data/Tiles_Draygon.bin" ; $2000 bytes

%anchor($B0E800)
Tiles_MotherBrainBody:
incbin "../data/Tiles_MotherBrainBody.bin" ; $600 bytes

%anchor($B0EE00)
Freespace_BankB0_EE00:                                                   ;B0EE00;
; $1200 bytes
