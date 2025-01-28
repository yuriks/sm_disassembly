
org $838000

; FX format
;        _____________________________ 0: Door pointer
;       |      _______________________ 2: Base Y position
;       |     |      _________________ 4: Target Y position
;       |     |     |      ___________ 6: Y velocity
;       |     |     |     |
;       dddd, bbbb, tttt, vvvv
;        _____________________________ 8: Timer
;       |    _________________________ 9: Type (foreground layer 3)
;       |   |    _____________________ Ah: Default layer blending configuration (FX A)
;       |   |   |    _________________ Bh: FX layer 3 layer blending configuration (FX B)
;       |   |   |   |    _____________ Ch: FX liquid options (FX C)
;       |   |   |   |   |    _________ Dh: Palette FX bitset
;       |   |   |   |   |   |    _____ Eh: Animated tiles bitset
;       |   |   |   |   |   |   |    _ Fh: Palette blend
;       |   |   |   |   |   |   |   |
;       tt, ff, AA, BB, CC, pp, aa, bb
%anchor($838000)
FXHeader_LandingSite_State3:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838000;
    db $00,$00,$02,$02,$00,$06,$00,$00                                   ;838008;

%anchor($838010)
FXHeader_Parlor_State2:
    dw $0000,$04E8,$0010,$FF98                                           ;838010;
    db $00,$00,$02,$02,$00,$42,$00,$00                                   ;838018;

%anchor($838020)
FXHeader_Climb_State2:
    dw $0000,$08E8,$0010,$FF98                                           ;838020;
    db $28,$04,$02,$1E,$01,$38,$00,$00                                   ;838028;

%anchor($838030)
FXHeader_BombTorizo_State2:
    dw $0000,$00F0,$00B8,$FFF0                                           ;838030;
    db $30,$04,$02,$1E,$00,$00,$00,$00                                   ;838038;

%anchor($838040)
FXHeader_Flyway_State2:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838040;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;838048;

%anchor($838050)
FXHeader_Parlor_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838050;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;838058;

%anchor($838060)
FXHeader_Climb_State1:
    dw Door_TourianEscape4_1                                             ;838060;
    dw $0908,$0000,$FF80                                                 ;838062;
    db $20,$02,$02,$1E,$0B,$1F,$01,$02                                   ;838068;
    dw $0000,$FFFF,$FFFF,$0000                                           ;838070;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;838078;

%anchor($838080)
FXHeader_Pit_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838080;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;838088;

%anchor($838090)
FXHeader_ElevToBlueBrinstar_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838090;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;838098;

%anchor($8380A0)
FXHeader_FinalMissileBombway_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8380A0;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;8380A8;

%anchor($8380B0)
FXHeader_FinalMissile_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8380B0;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;8380B8;

%anchor($8380C0)
FXHeader_LandingSite_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8380C0;
    db $00,$0A,$02,$0E,$00,$01,$00,$22                                   ;8380C8;

%anchor($8380D0)
FXHeader_LandingSite_State2:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8380D0;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;8380D8;

%anchor($8380E0)
FXHeader_GauntletEntrance_State0_1:
    dw $0000,$00C8,$FFFF,$0000                                           ;8380E0;
    db $00,$04,$02,$1E,$42,$00,$00,$00                                   ;8380E8;

%anchor($8380F0)
FXHeader_Parlor_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8380F0;
    db $00,$00,$28,$02,$00,$00,$00,$62                                   ;8380F8;

%anchor($838100)
FXHeader_CrateriaPowerBombs:
    dw $0000,$00C0,$FFFF,$0000                                           ;838100;
    db $00,$04,$02,$1E,$42,$00,$02,$48                                   ;838108;

%anchor($838110)
FXHeader_CrateriaSave:
    dw $FFFF                                                             ;838110;

%anchor($838112)
FXHeader_WestOcean:
    dw $0000,$04F0,$FFFF,$0000                                           ;838112;
    db $00,$06,$02,$18,$01,$00,$06,$48                                   ;83811A;

%anchor($838122)
FXHeader_BowlingAlleyPath:
    dw $0000,$00B0,$FFFF,$0000                                           ;838122;
    db $00,$06,$02,$18,$83,$00,$00,$48                                   ;83812A;

%anchor($838132)
FXHeader_CrateriaKihunters:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838132;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;83813A;

%anchor($838142)
FXHeader_ForgottenHighwayElev:
    dw $FFFF                                                             ;838142;

%anchor($838144)
FXHeader_EastOcean:
    dw $0000,$04F0,$FFFF,$0000                                           ;838144;
    db $00,$06,$02,$18,$01,$00,$04,$48                                   ;83814C;

%anchor($838154)
FXHeader_ForgottenHighwayKagos:
    dw $FFFF                                                             ;838154;

%anchor($838156)
FXHeader_CrabMaze:
    dw $0000,$01B0,$FFFF,$0000                                           ;838156;
    db $00,$06,$02,$18,$03,$00,$00,$48                                   ;83815E;

%anchor($838166)
FXHeader_ForgottenHighwayElbow:
    dw $FFFF                                                             ;838166;

%anchor($838168)
FXHeader_CrateriaTube:
    dw $FFFF                                                             ;838168;

%anchor($83816A)
FXHeader_Moat:
    dw $0000,$00B0,$FFFF,$0000                                           ;83816A;
    db $00,$06,$02,$18,$01,$00,$06,$48                                   ;838172;

%anchor($83817A)
FXHeader_RedBrinstarElev:
    dw $FFFF                                                             ;83817A;

%anchor($83817C)
FXHeader_GauntletETank:
    dw $0000,$00C8,$FFFF,$0000                                           ;83817C;
    db $00,$04,$02,$1E,$42,$00,$02,$00                                   ;838184;

%anchor($83818C)
FXHeader_PreBowling:
    dw $FFFF                                                             ;83818C;

%anchor($83818E)
FXHeader_Climb_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83818E;
    db $00,$0C,$02,$30,$00,$00,$00,$62                                   ;838196;

%anchor($83819E)
FXHeader_Pit_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83819E;
    db $00,$0C,$02,$30,$00,$00,$00,$62                                   ;8381A6;

%anchor($8381AE)
FXHeader_ElevToBlueBrinstar_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8381AE;
    db $00,$00,$2A,$02,$00,$00,$00,$00                                   ;8381B6;

%anchor($8381BE)
FXHeader_BombTorizo_State0_1:
    dw $FFFF                                                             ;8381BE;

%anchor($8381C0)
FXHeader_Flyway_State0_1:
    dw $FFFF                                                             ;8381C0;

%anchor($8381C2)
FXHeader_VariousRooms_8381C2:
    dw $FFFF                                                             ;8381C2;

%anchor($8381C4)
FXHeader_CrateriaSuper:
    dw $0000,$07E0,$FFFF,$0000                                           ;8381C4;
    db $00,$04,$02,$1E,$40,$00,$02,$48                                   ;8381CC;

%anchor($8381D4)
FXHeader_FinalMissileBombway_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8381D4;
    db $00,$00,$28,$02,$00,$00,$00,$62                                   ;8381DC;

%anchor($8381E4)
FXHeader_FinalMissile_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8381E4;
    db $00,$00,$28,$02,$00,$00,$00,$62                                   ;8381EC;

%anchor($8381F4)
FXHeader_VariousRooms_8381F4:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8381F4;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;8381FC;

%anchor($838204)
FXHeader_GreenBrinstarMainShaft:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838204;
    db $00,$00,$02,$02,$00,$01,$00,$00                                   ;83820C;

%anchor($838214)
FXHeader_SporeSpawnSuper:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838214;
    db $00,$08,$02,$0A,$00,$00,$00,$00                                   ;83821C;

%anchor($838224)
FXHeader_BrinstarPreMap:
    dw $FFFF                                                             ;838224;

%anchor($838226)
FXHeader_EarlySupers:
    dw $FFFF                                                             ;838226;

%anchor($838228)
FXHeader_BrinstarReserveTank:
    dw $FFFF                                                             ;838228;

%anchor($83822A)
FXHeader_GreenBrinstarMap:
    dw $FFFF                                                             ;83822A;

%anchor($83822C)
FXHeader_GreenBrinstarFirefleas:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83822C;
    db $00,$24,$02,$02,$00,$00,$00,$00                                   ;838234;

%anchor($83823C)
FXHeader_GreenBrinstarMissileRefill:
    dw $FFFF                                                             ;83823C;

%anchor($83823E)
FXHeader_Dachora:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83823E;
    db $00,$08,$02,$0A,$00,$00,$00,$00                                   ;838246;

%anchor($83824E)
FXHeader_BigPink:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83824E;
    db $00,$08,$02,$0A,$00,$00,$01,$00                                   ;838256;

%anchor($83825E)
FXHeader_SporeSpawnKihunters:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83825E;
    db $00,$00,$02,$02,$00,$01,$00,$00                                   ;838266;

%anchor($83826E)
FXHeader_SporeSpawn_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83826E;
    db $00,$00,$02,$02,$00,$08,$00,$00                                   ;838276;

%anchor($83827E)
FXHeader_PinkBrinstarPowerBombs:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83827E;
    db $00,$00,$02,$02,$00,$00,$02,$00                                   ;838286;

%anchor($83828E)
FXHeader_GreenHillZone:
    dw $FFFF                                                             ;83828E;

%anchor($838290)
FXHeader_MorphBall_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838290;
    db $00,$00,$2A,$02,$00,$00,$00,$00                                   ;838298;

%anchor($8382A0)
FXHeader_ConstructionZone_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8382A0;
    db $00,$00,$2A,$02,$00,$00,$00,$00                                   ;8382A8;

%anchor($8382B0)
FXHeader_BlueBrinstarETank_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8382B0;
    db $00,$00,$2A,$02,$00,$00,$00,$00                                   ;8382B8;

%anchor($8382C0)
FXHeader_NoobBridge:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8382C0;
    db $00,$00,$02,$02,$00,$01,$02,$00                                   ;8382C8;

%anchor($8382D0)
FXHeader_GreenBrinstarBeetoms:
    dw $FFFF                                                             ;8382D0;

%anchor($8382D2)
FXHeader_EtecoonETank:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8382D2;
    db $00,$00,$02,$02,$00,$01,$00,$00                                   ;8382DA;

%anchor($8382E2)
FXHeader_EtecoonSuper:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8382E2;
    db $00,$00,$02,$02,$00,$01,$00,$00                                   ;8382EA;

%anchor($8382F2)
FXHeader_DachoraEnergyRefill:
    dw $FFFF                                                             ;8382F2;

%anchor($8382F4)
FXHeader_SporeSpawnFarming:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8382F4;
    db $00,$08,$02,$0A,$00,$00,$00,$00                                   ;8382FC;

%anchor($838304)
FXHeader_WaterwayETank:
    dw $0000,$00A8,$FFFF,$0000                                           ;838304;
    db $00,$06,$02,$18,$03,$00,$00,$48                                   ;83830C;

%anchor($838314)
FXHeader_FirstMissile:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838314;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;83831C;

%anchor($838324)
FXHeader_PinkBrinstarHoppers:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838324;
    db $00,$00,$02,$02,$00,$01,$03,$00                                   ;83832C;

%anchor($838334)
FXHeader_HopperETank:
    dw $FFFF                                                             ;838334;

%anchor($838336)
FXHeader_BigPinkSaveRoom:
    dw $FFFF                                                             ;838336;

%anchor($838338)
FXHeader_BlueBrinstarBoulders:
    dw $0000,$00B0,$FFFF,$0000                                           ;838338;
    db $00,$06,$02,$18,$83,$00,$02,$48                                   ;838340;

%anchor($838348)
FXHeader_BillyMays:
    dw $FFFF                                                             ;838348;

%anchor($83834A)
FXHeader_GreenBrinstarSave:
    dw $FFFF                                                             ;83834A;

%anchor($83834C)
FXHeader_EtecoonSave:
    dw $FFFF                                                             ;83834C;

%anchor($83834E)
FXHeader_RedTower:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83834E;
    db $00,$00,$02,$02,$00,$06,$03,$00                                   ;838356;

%anchor($83835E)
FXHeader_RedBrinstarFirefleas:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83835E;
    db $00,$24,$02,$02,$00,$00,$02,$00                                   ;838366;

%anchor($83836E)
FXHeader_XrayScope:
    dw $FFFF                                                             ;83836E;

%anchor($838370)
FXHeader_Hellway:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838370;
    db $00,$00,$02,$02,$00,$02,$04,$00                                   ;838378;

%anchor($838380)
FXHeader_Caterpillar:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838380;
    db $00,$00,$02,$02,$00,$06,$00,$00                                   ;838388;

%anchor($838390)
FXHeader_BetaPowerBomb:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838390;
    db $00,$00,$02,$02,$00,$00,$04,$00                                   ;838398;

%anchor($8383A0)
FXHeader_AlphaPowerBomb:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8383A0;
    db $00,$00,$02,$02,$00,$00,$04,$00                                   ;8383A8;

%anchor($8383B0)
FXHeader_SkreeBoost:
    dw $0000,$00BE,$FFFF,$0000                                           ;8383B0;
    db $00,$06,$02,$18,$03,$00,$00,$48                                   ;8383B8;

%anchor($8383C0)
FXHeader_BelowSpazer:
    dw $0000,$01BE,$FFFF,$0000                                           ;8383C0;
    db $00,$06,$02,$18,$03,$00,$01,$48                                   ;8383C8;

%anchor($8383D0)
FXHeader_Spazer:
    dw $FFFF                                                             ;8383D0;

%anchor($8383D2)
FXHeader_VariousRooms_8383D2:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8383D2;
    db $00,$00,$02,$02,$00,$04,$00,$00                                   ;8383DA;

%anchor($8383E2)
FXHeader_MiniKraid_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8383E2;
    db $00,$00,$02,$02,$00,$00,$02,$00                                   ;8383EA;

%anchor($8383F2)
FXHeader_KraidEyeDoor:
    dw $FFFF                                                             ;8383F2;

%anchor($8383F4)
FXHeader_Kraid_State0:
    dw $FFFF                                                             ;8383F4;

%anchor($8383F6)
FXHeader_Kraid_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8383F6;
    db $00,$0C,$02,$30,$00,$80,$00,$62                                   ;8383FE;

%anchor($838406)
FXHeader_RedTowerRefill:
    dw $FFFF                                                             ;838406;

%anchor($838408)
FXHeader_KraidRefill:
    dw $FFFF                                                             ;838408;

%anchor($83840A)
FXHeader_Statues:
    dw $0000,$00B0,$01FF,$0000                                           ;83840A;
    db $00,$26,$02,$18,$01,$00,$00,$48                                   ;838412;

%anchor($83841A)
FXHeader_WarehouseEntrance:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83841A;
    db $00,$00,$2A,$02,$00,$00,$00,$00                                   ;838422;

%anchor($83842A)
FXHeader_VariaSuit:
    dw $FFFF                                                             ;83842A;

%anchor($83842C)
FXHeader_WarehouseSave:
    dw $FFFF                                                             ;83842C;

%anchor($83842E)
FXHeader_RedBrinstarSave:
    dw $FFFF                                                             ;83842E;

%anchor($838430)
FXHeader_IceBeamAcid:
    dw $0000,$00B8,$FFFF,$0000                                           ;838430;
    db $00,$02,$02,$1E,$0B,$1F,$02,$02                                   ;838438;

%anchor($838440)
FXHeader_Cathedral:
    dw $0000,$01B1,$FFFF,$0000                                           ;838440;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;838448;

%anchor($838450)
FXHeader_CathedralEntrance:
    dw $0000,$01D0,$FFFF,$0000                                           ;838450;
    db $00,$02,$02,$1E,$0B,$1F,$03,$02                                   ;838458;

%anchor($838460)
FXHeader_BusinessCenter:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838460;
    db $00,$02,$02,$1E,$00,$00,$00,$02                                   ;838468;

%anchor($838470)
FXHeader_IceBeamGate:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838470;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;838478;

%anchor($838480)
FXHeader_IceBeamTutorial:
    dw $0000,$00B2,$FFFF,$0000                                           ;838480;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;838488;

%anchor($838490)
FXHeader_IceBeam:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838490;
    db $00,$02,$02,$1E,$00,$00,$00,$02                                   ;838498;

%anchor($8384A0)
FXHeader_IceBeamSnake:
    dw $0000,$02B8,$FFFF,$0000                                           ;8384A0;
    db $00,$02,$02,$1E,$03,$1F,$03,$02                                   ;8384A8;

%anchor($8384B0)
FXHeader_CrumbleShaft:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8384B0;
    db $00,$02,$02,$1E,$03,$1F,$00,$02                                   ;8384B8;

%anchor($8384C0)
FXHeader_CrocomireSpeedway:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8384C0;
    db $00,$02,$02,$1E,$0B,$1F,$02,$02                                   ;8384C8;

%anchor($8384D0)
FXHeader_Crocomire_State0_1:
    dw $0000,$00C6,$FFFF,$0000                                           ;8384D0;
    db $00,$04,$02,$1E,$81,$00,$01,$02                                   ;8384D8;

%anchor($8384E0)
FXHeader_HiJumpBoots:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8384E0;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;8384E8;

%anchor($8384F0)
FXHeader_CrocomireEscape:
    dw $0000,$01B8,$FFFF,$0000                                           ;8384F0;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;8384F8;

%anchor($838500)
FXHeader_HiJumpETank:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838500;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;838508;

%anchor($838510)
FXHeader_PostCrocFarming:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838510;
    db $00,$00,$02,$02,$03,$00,$00,$02                                   ;838518;

%anchor($838520)
FXHeader_PostCrocSave:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838520;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;838528;

%anchor($838530)
FXHeader_PostCrocPowerBombs:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838530;
    db $00,$02,$02,$1E,$03,$1F,$00,$02                                   ;838538;

%anchor($838540)
FXHeader_PostCrocShaft:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838540;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;838548;

%anchor($838550)
FXHeader_PostCrocMissile:
    dw $0000,$00C8,$FFFF,$0000                                           ;838550;
    db $00,$04,$02,$1E,$41,$00,$02,$00                                   ;838558;

%anchor($838560)
FXHeader_GrappleTutorial3:
    dw $0000,$00B8,$FFFF,$0000                                           ;838560;
    db $00,$06,$02,$18,$83,$00,$00,$48                                   ;838568;

%anchor($838570)
FXHeader_PostCrocJump:
    dw $0000,$02B4,$FFFF,$0000                                           ;838570;
    db $00,$04,$02,$1E,$80,$00,$00,$00                                   ;838578;

%anchor($838580)
FXHeader_GrappleTutorial2:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838580;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;838588;

%anchor($838590)
FXHeader_GrappleTutorial1:
    dw $0000,$00C0,$FFFF,$0000                                           ;838590;
    db $00,$06,$02,$18,$83,$00,$00,$48                                   ;838598;

%anchor($8385A0)
FXHeader_GrappleBeam:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8385A0;
    db $00,$00,$02,$02,$00,$00,$03,$00                                   ;8385A8;

%anchor($8385B0)
FXHeader_NorfairReserveTank:
    dw $0000,$00C7,$FFFF,$0000                                           ;8385B0;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;8385B8;

%anchor($8385C0)
FXHeader_GreenBubblesMissiles:
    dw $0000,$00C6,$FFFF,$0000                                           ;8385C0;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;8385C8;

%anchor($8385D0)
FXHeader_BubbleMountain:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8385D0;
    db $00,$02,$02,$1E,$03,$00,$02,$02                                   ;8385D8;

%anchor($8385E0)
FXHeader_SpeedBoosterHall:
    dw Door_SpeedBooster_0                                               ;8385E0;
    dw $01DA,$00B0,$0000                                                 ;8385E2;
    db $F0,$02,$02,$1E,$0B,$1F,$02,$02                                   ;8385E8;
    dw $0000,$01DA,$FFFF,$0000                                           ;8385F0;
    db $00,$02,$02,$1E,$0B,$1F,$02,$02                                   ;8385F8;

%anchor($838600)
FXHeader_SpeedBooster:
    dw $0000,$00DA,$0000,$0000                                           ;838600;
    db $20,$02,$02,$1E,$0B,$1F,$00,$02                                   ;838608;

%anchor($838610)
FXHeader_SingleChamber:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838610;
    db $00,$02,$02,$1E,$03,$1F,$02,$02                                   ;838618;

%anchor($838620)
FXHeader_DoubleChamber:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838620;
    db $00,$02,$02,$1E,$03,$1F,$02,$02                                   ;838628;

%anchor($838630)
FXHeader_WaveBeam:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838630;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;838638;

%anchor($838640)
FXHeader_SpikyPlatformsTunnel:
    dw $0000,$00C0,$FFFF,$0000                                           ;838640;
    db $00,$02,$02,$1E,$03,$1F,$02,$02                                   ;838648;

%anchor($838650)
FXHeader_Volcano:
    dw $9672,$02E0,$0260,$FFF6                                           ;838650;
    db $40,$02,$02,$1E,$0B,$1F,$00,$02                                   ;838658;
    dw $0000,$0268,$FFFF,$0000                                           ;838660;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;838668;

%anchor($838670)
FXHeader_KronicBoost:
    dw $0000,$02D4,$FFFF,$0000                                           ;838670;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;838678;

%anchor($838680)
FXHeader_MagdolliteTunnel:
    dw $0000,$00BE,$FFFF,$0000                                           ;838680;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;838688;

%anchor($838690)
FXHeader_PurpleShaft:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838690;
    db $00,$02,$02,$1E,$03,$1F,$03,$02                                   ;838698;

%anchor($8386A0)
FXHeader_LavaDive:
    dw $0000,$00D0,$FFFF,$0000                                           ;8386A0;
    db $00,$02,$02,$1E,$0B,$1F,$03,$02                                   ;8386A8;

%anchor($8386B0)
FXHeader_LowerNorfairElev:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8386B0;
    db $00,$02,$02,$1E,$03,$1F,$00,$02                                   ;8386B8;

%anchor($8386C0)
FXHeader_UpperNorfairFarming:
    dw $0000,$01C0,$FFFF,$0000                                           ;8386C0;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;8386C8;

%anchor($8386D0)
FXHeader_RisingTide:
    dw Door_Cathedral_1                                                  ;8386D0;
    dw $0108,$00C0,$FFE0                                                 ;8386D2;
    db $40,$02,$02,$1E,$0B,$1F,$00,$02                                   ;8386D8;
    dw $0000,$00C8,$FFFF,$0000                                           ;8386E0;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;8386E8;

%anchor($8386F0)
FXHeader_AcidSnakesTunnel:
    dw $0000,$00C5,$FFFF,$0000                                           ;8386F0;
    db $00,$02,$02,$1E,$0B,$1F,$00,$02                                   ;8386F8;

%anchor($838700)
FXHeader_SpikyAcidSnakesTunnel:
    dw $0000,$00C6,$FFFF,$0000                                           ;838700;
    db $00,$02,$02,$1E,$03,$1F,$02,$02                                   ;838708;

%anchor($838710)
FXHeader_UpperNorfairRefill:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838710;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;838718;

%anchor($838720)
FXHeader_PurpleFarming:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838720;
    db $00,$02,$02,$1E,$03,$1F,$00,$02                                   ;838728;

%anchor($838730)
FXHeader_BatCave:
    dw $0000,$01B4,$FFFF,$0000                                           ;838730;
    db $00,$02,$02,$1E,$03,$1F,$00,$02                                   ;838738;

%anchor($838740)
FXHeader_NorfairMap:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838740;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;838748;

%anchor($838750)
FXHeader_BubbleMountainSave:
    dw $0000,$FFFF,$FFFF,$0000                                           ;838750;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;838758;

%anchor($838760)
FXHeader_FrogSpeedway:
    dw $FFFF                                                             ;838760;

%anchor($838762)
FXHeader_RedPirateShaft:
    dw $FFFF                                                             ;838762;

%anchor($838764)
FXHeader_FrogSave:
    dw $FFFF                                                             ;838764;

%anchor($838766)
FXHeader_CrocomireSave:
    dw $FFFF                                                             ;838766;

%anchor($838768)
FXHeader_LNElevSave:
    dw $FFFF                                                             ;838768;

%anchor($83876A)
FXHeader_AcidStatue:
    dw $9876,$02D2,$FFFF,$0000                                           ;83876A;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;838772;
    dw $0000,$00C8,$02D2,$0000                                           ;83877A;
    db $00,$04,$02,$1E,$02,$1F,$00,$00                                   ;838782;

%anchor($83878A)
FXHeader_MainHall:
    dw $0000,$02C1,$FFFF,$0000                                           ;83878A;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;838792;

%anchor($83879A)
FXHeader_GoldenTorizo_State0_1:
    dw $0000,$02C6,$FFFF,$0000                                           ;83879A;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;8387A2;

%anchor($8387AA)
FXHeader_FastRipper:
    dw $0000,$00B8,$FFFF,$0000                                           ;8387AA;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;8387B2;

%anchor($8387BA)
FXHeader_GTEnergyRefill:
    dw $FFFF                                                             ;8387BA;

%anchor($8387BC)
FXHeader_Ridley_State0_1:
    dw $0000,$0210,$01D0,$0000                                           ;8387BC;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;8387C4;

%anchor($8387CC)
FXHeader_LNFarming:
    dw $0000,$00D0,$FFFF,$0000                                           ;8387CC;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;8387D4;

%anchor($8387DC)
FXHeader_FastPillarsSetup:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8387DC;
    db $00,$04,$02,$1E,$02,$1F,$00,$00                                   ;8387E4;

if !FEATURE_KEEP_UNREFERENCED
%anchor($8387EC)
UNUSED_FXHeader_8387EC:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8387EC;
    db $00,$04,$02,$1E,$02,$1F,$00,$00                                   ;8387F4;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($8387FC)
FXHeader_MickeyMouse:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8387FC;
    db $00,$04,$02,$1E,$02,$1F,$00,$00                                   ;838804;

%anchor($83880C)
FXHeader_Pillar:
    dw $0000,$00E8,$0010,$FFE0                                           ;83880C;
    db $50,$04,$02,$1E,$82,$1F,$00,$00                                   ;838814;

%anchor($83881C)
FXHeader_Plowerhouse:
    dw $0000,$00CD,$FFFF,$0000                                           ;83881C;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;838824;

%anchor($83882C)
FXHeader_WorstRoomInTheGame:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83882C;
    db $20,$04,$02,$1E,$02,$1F,$02,$00                                   ;838834;

%anchor($83883C)
FXHeader_Amphitheatre:
    dw $99F6,$00D0,$FFFF,$0000                                           ;83883C;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;838844;
    dw $0000,$04E8,$00D0,$FF80                                           ;83884C;
    db $60,$04,$02,$1E,$82,$1F,$02,$00                                   ;838854;

%anchor($83885C)
FXHeader_LNSpringballMaze:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83885C;
    db $00,$04,$02,$1E,$02,$1F,$02,$00                                   ;838864;

%anchor($83886C)
FXHeader_LNEscapePowerBombs:
    dw $0000,$00B3,$FFFF,$0000                                           ;83886C;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;838874;

%anchor($83887C)
FXHeader_RedKihunterShaft:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83887C;
    db $00,$04,$02,$1E,$02,$1F,$00,$00                                   ;838884;

%anchor($83888C)
FXHeader_Wasteland:
    dw $0000,$02C0,$FFFF,$0000                                           ;83888C;
    db $00,$04,$02,$1E,$02,$1F,$03,$00                                   ;838894;

%anchor($83889C)
FXHeader_MetalPirates:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83889C;
    db $00,$04,$02,$1E,$02,$1F,$00,$00                                   ;8388A4;

%anchor($8388AC)
FXHeader_ThreeMusketeers:
    dw $0000,$02D0,$FFFF,$0000                                           ;8388AC;
    db $00,$04,$02,$1E,$42,$1F,$00,$00                                   ;8388B4;

%anchor($8388BC)
FXHeader_RidleyETank:
    dw $0000,$00DD,$FFFF,$0000                                           ;8388BC;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;8388C4;

%anchor($8388CC)
FXHeader_ScrewAttack:
    dw $0000,$02DD,$FFFF,$0000                                           ;8388CC;
    db $00,$04,$02,$1E,$82,$1F,$00,$00                                   ;8388D4;

%anchor($8388DC)
FXHeader_LNFireflea:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8388DC;
    db $00,$24,$02,$02,$00,$00,$02,$00                                   ;8388E4;

%anchor($8388EC)
FXHeader_LNSave:
    dw $0000,$FFFF,$FFFF,$0000                                           ;8388EC;
    db $00,$02,$02,$1E,$01,$00,$00,$02                                   ;8388F4;


; Door header format
;        _____________________________ 0: Destination room header pointer (bank $8F)
;       |     ________________________ 2: Elevator properties
;       |    |   _____________________ 3: Direction
;       |    |  |   __________________ 4: Doorcap X position in blocks
;       |    |  |  |   _______________ 5: Doorcap Y position in blocks
;       |    |  |  |  |   ____________ 6: X screen
;       |    |  |  |  |  |   _________ 7: Y screen
;       |    |  |  |  |  |  |   ______ 8: Distance from door to spawn Samus
;       |    |  |  |  |  |  |  |     _ Ah: Custom door ASM to execute (bank $8F)
;       |    |  |  |  |  |  |  |    |
;       rrrr ee oo xx yy XX YY dddd aaaa
%anchor($8388FC)
Door_VariousRooms_Elevator:
    db $00,$00                                                           ;8388FC;

%anchor($8388FE)
Door_LandingSite_LandingCutscene:
    dw RoomHeader_LandingSite                                            ;8388FE;
    db $00,$03,$00,$00,$04,$00                                           ;838900;
    dw $8000,$0000                                                       ;838906;

%anchor($83890A)
Door_DemoSet3_0_2_4:
    dw RoomHeader_LandingSite                                            ;83890A;
    db $00,$03,$00,$00,$04,$02                                           ;83890C;
    dw $8000,$0000                                                       ;838912;

%anchor($838916)
Door_LandingSite_0:
    dw RoomHeader_Parlor                                                 ;838916;
    db $00,$05,$4E,$06,$04,$00                                           ;838918;
    dw $8000,$0000                                                       ;83891E;

%anchor($838922)
Door_LandingSite_1:
    dw RoomHeader_CrateriaTube                                           ;838922;
    db $00,$00,$00,$00,$00,$00                                           ;838924;
    dw $8000,$0000                                                       ;83892A;

%anchor($83892E)
Door_LandingSite_2:
    dw RoomHeader_GauntletEntrance                                       ;83892E;
    db $00,$05,$4E,$06,$04,$00                                           ;838930;
    dw $8000,$0000                                                       ;838936;

%anchor($83893A)
Door_LandingSite_3:
    dw RoomHeader_CrateriaPowerBombs                                     ;83893A;
    db $00,$04,$01,$06,$00,$00                                           ;83893C;
    dw $8000,$0000                                                       ;838942;

%anchor($838946)
Door_GauntletEntrance_0:
    dw RoomHeader_LandingSite                                            ;838946;
    db $00,$04,$01,$26,$00,$02                                           ;838948;
    dw $8000                                                             ;83894E;
    dw DoorASM_Scroll_13_Blue                                            ;838950;

%anchor($838952)
Door_GauntletEntrance_1:
    dw RoomHeader_GauntletETank                                          ;838952;
    db $00,$05,$5E,$06,$05,$00                                           ;838954;
    dw $8000,$0000                                                       ;83895A;

%anchor($83895E)
Door_Parlor_0:
    dw RoomHeader_Terminator                                             ;83895E;
    db $00,$05,$5E,$06,$05,$00                                           ;838960;
    dw $8000,$0000                                                       ;838966;

%anchor($83896A)
Door_Parlor_1:
    dw RoomHeader_LandingSite                                            ;83896A;
    db $00,$04,$01,$46,$00,$04                                           ;83896C;
    dw $8000,$0000                                                       ;838972;

%anchor($838976)
Door_Parlor_2:
    dw RoomHeader_PreMapFlyway                                           ;838976;
    db $00,$04,$01,$06,$00,$00                                           ;838978;
    dw $8000,$0000                                                       ;83897E;

%anchor($838982)
Door_Parlor_3:
    dw RoomHeader_Flyway                                                 ;838982;
    db $00,$04,$01,$06,$00,$00                                           ;838984;
    dw $8000,$0000                                                       ;83898A;

%anchor($83898E)
Door_Parlor_4:
    dw RoomHeader_Climb                                                  ;83898E;
    db $00,$06,$16,$02,$01,$00                                           ;838990;
    dw $8000,$0000                                                       ;838996;

%anchor($83899A)
Door_Parlor_5:
    dw RoomHeader_CrateriaSave                                           ;83899A;
    db $00,$05,$0E,$06,$00,$00                                           ;83899C;
    dw $8000,$0000                                                       ;8389A2;

%anchor($8389A6)
Door_Parlor_6:
    dw RoomHeader_FinalMissileBombway                                    ;8389A6;
    db $00,$05,$1E,$06,$01,$00                                           ;8389A8;
    dw $8000,$0000                                                       ;8389AE;

%anchor($8389B2)
Door_CrateriaPowerBombs_0:
    dw RoomHeader_LandingSite                                            ;8389B2;
    db $00,$05,$8E,$16,$08,$01                                           ;8389B4;
    dw $8000,$0000                                                       ;8389BA;

%anchor($8389BE)
Door_CrateriaSave_0:
    dw RoomHeader_Parlor                                                 ;8389BE;
    db $00,$04,$11,$26,$01,$02                                           ;8389C0;
    dw $8000                                                             ;8389C6;
    dw DoorASM_Scroll_6_Green                                            ;8389C8;

%anchor($8389CA)
Door_WestOcean_0:
    dw RoomHeader_Moat                                                   ;8389CA;
    db $00,$05,$1E,$06,$01,$00                                           ;8389CC;
    dw $8000,$0000                                                       ;8389D2;

%anchor($8389D6)
Door_WestOcean_1:
    dw RoomHeader_WreckedShipEntrance                                    ;8389D6;
    db $50,$04,$01,$06,$00,$00                                           ;8389D8;
    dw $8000                                                             ;8389DE;
    dw DoorASM_StartWreckedShipTreadmillWestEntrance                     ;8389E0;

%anchor($8389E2)
Door_WestOcean_2:
    dw RoomHeader_BowlingAlleyPath                                       ;8389E2;
    db $00,$04,$01,$06,$00,$00                                           ;8389E4;
    dw $8000,$0000                                                       ;8389EA;

%anchor($8389EE)
Door_WestOcean_3:
    dw RoomHeader_Attic                                                  ;8389EE;
    db $40,$04,$01,$06,$00,$00                                           ;8389F0;
    dw $8000,$0000                                                       ;8389F6;

%anchor($8389FA)
Door_WestOcean_4:
    dw RoomHeader_BowlingAlley                                           ;8389FA;
    db $40,$04,$21,$06,$02,$00                                           ;8389FC;
    dw $8000                                                             ;838A02;
    dw DoorASM_Scroll_8_9_A_B_Red                                        ;838A04;

%anchor($838A06)
Door_WestOcean_5:
    dw RoomHeader_GravitySuit                                            ;838A06;
    db $40,$04,$01,$06,$00,$00                                           ;838A08;
    dw $8000,$0000                                                       ;838A0E;

%anchor($838A12)
Door_BowlingAlleyPath_0:
    dw RoomHeader_WestOcean                                              ;838A12;
    db $00,$05,$2E,$26,$02,$02                                           ;838A14;
    dw $8000,$0000                                                       ;838A1A;

%anchor($838A1E)
Door_BowlingAlleyPath_1:
    dw RoomHeader_PreBowling                                             ;838A1E;
    db $00,$04,$01,$06,$00,$00                                           ;838A20;
    dw $8000,$0000                                                       ;838A26;

%anchor($838A2A)
Door_CrateriaKihunter_0:
    dw RoomHeader_CrateriaTube                                           ;838A2A;
    db $00,$01,$00,$00,$00,$00                                           ;838A2C;
    dw $8000,$0000                                                       ;838A32;

%anchor($838A36)
Door_CrateriaKihunter_1:
    dw RoomHeader_Moat                                                   ;838A36;
    db $00,$04,$01,$06,$00,$00                                           ;838A38;
    dw $8000,$0000                                                       ;838A3E;

%anchor($838A42)
Door_CrateriaKihunter_2:
    dw RoomHeader_RedBinstarElev                                         ;838A42;
    db $00,$06,$06,$02,$00,$00                                           ;838A44;
    dw $8000,$0000                                                       ;838A4A;

%anchor($838A4E)
Door_ForgottenHighwayElev_0:
    dw RoomHeader_ForgottenHighwayElbow                                  ;838A4E;
    db $00,$07,$06,$0D,$00,$00                                           ;838A50;
    dw $01C0,$0000                                                       ;838A56;

%anchor($838A5A)
Door_ForgottenHighwayElev_1:
    dw RoomHeader_MaridiaElev                                            ;838A5A;
    db $D0,$02,$00,$00,$00,$00                                           ;838A5C;
    dw $0000,$0000                                                       ;838A62;

%anchor($838A66)
Door_EastOcean_0:
    dw RoomHeader_ElectricDeath                                          ;838A66;
    db $40,$05,$0E,$16,$00,$01                                           ;838A68;
    dw $8000,$0000                                                       ;838A6E;

%anchor($838A72)
Door_EastOcean_1:
    dw RoomHeader_ForgottenHighwayKagos                                  ;838A72;
    db $00,$04,$01,$06,$00,$00                                           ;838A74;
    dw $8000,$0000                                                       ;838A7A;

%anchor($838A7E)
Door_ForgottenHighwayKagos_0:
    dw RoomHeader_EastOcean                                              ;838A7E;
    db $00,$05,$6E,$46,$06,$04                                           ;838A80;
    dw $8000,$0000                                                       ;838A86;

%anchor($838A8A)
Door_ForgottenHighwayKagos_1:
    dw RoomHeader_CrabMaze                                               ;838A8A;
    db $00,$06,$36,$02,$03,$00                                           ;838A8C;
    dw $8000,$0000                                                       ;838A92;

%anchor($838A96)
Door_CrabMaze_0:
    dw RoomHeader_ForgottenHighwayKagos                                  ;838A96;
    db $00,$07,$06,$3D,$00,$03                                           ;838A98;
    dw $01C0,$0000                                                       ;838A9E;

%anchor($838AA2)
Door_ForgottenHighwayElbow_0:
    dw RoomHeader_CrabMaze                                               ;838AA2;
    db $00,$04,$01,$16,$00,$01                                           ;838AA4;
    dw $8000,$0000                                                       ;838AAA;

%anchor($838AAE)
Door_CrabMaze_1:
    dw RoomHeader_ForgottenHighwayElbow                                  ;838AAE;
    db $00,$05,$0E,$06,$00,$00                                           ;838AB0;
    dw $8000,$0000                                                       ;838AB6;

%anchor($838ABA)
Door_ForgottenHighwayElbow_1:
    dw RoomHeader_ForgottenHighwayElev                                   ;838ABA;
    db $00,$06,$06,$02,$00,$00                                           ;838ABC;
    dw $8000,$0000                                                       ;838AC2;

%anchor($838AC6)
Door_CrateriaTube_0:
    dw RoomHeader_LandingSite                                            ;838AC6;
    db $00,$05,$8E,$46,$08,$04                                           ;838AC8;
    dw $8000,$0000                                                       ;838ACE;

%anchor($838AD2)
Door_CrateriaTube_1:
    dw RoomHeader_CrateriaKihunter                                       ;838AD2;
    db $00,$04,$01,$06,$00,$00                                           ;838AD4;
    dw $8000,$0000                                                       ;838ADA;

%anchor($838ADE)
Door_Moat_0:
    dw RoomHeader_CrateriaKihunter                                       ;838ADE;
    db $00,$05,$2E,$06,$02,$00                                           ;838AE0;
    dw $8000,$0000                                                       ;838AE6;

%anchor($838AEA)
Door_Moat_1:
    dw RoomHeader_WestOcean                                              ;838AEA;
    db $00,$04,$01,$46,$00,$04                                           ;838AEC;
    dw $8000,$0000                                                       ;838AF2;

%anchor($838AF6)
Door_RedBinstarElev_0:
    dw RoomHeader_CrateriaKihunter                                       ;838AF6;
    db $00,$07,$16,$2D,$01,$02                                           ;838AF8;
    dw $01C0                                                             ;838AFE;
    dw DoorASM_Scroll_1_4_Green                                          ;838B00;

%anchor($838B02)
Door_RedBinstarElev_1:
    dw RoomHeader_Caterpillar                                            ;838B02;
    db $E0,$02,$00,$00,$00,$00                                           ;838B04;
    dw $0000                                                             ;838B0A;
    dw DoorASM_Scroll_6_Green_duplicate                                  ;838B0C;

%anchor($838B0E)
Door_GauntletETank_0:
    dw RoomHeader_GauntletEntrance                                       ;838B0E;
    db $00,$04,$01,$06,$00,$00                                           ;838B10;
    dw $8000,$0000                                                       ;838B16;

%anchor($838B1A)
Door_GauntletETank_1:
    dw RoomHeader_GreenPiratesShaft                                      ;838B1A;
    db $00,$05,$0E,$06,$00,$00                                           ;838B1C;
    dw $8000                                                             ;838B22;
    dw DoorASM_Scroll_3_Green                                            ;838B24;

%anchor($838B26)
Door_PreBowling_0:
    dw RoomHeader_BowlingAlleyPath                                       ;838B26;
    db $00,$05,$1E,$06,$01,$00                                           ;838B28;
    dw $8000,$0000                                                       ;838B2E;

%anchor($838B32)
Door_PreBowling_1:
    dw RoomHeader_BowlingAlley                                           ;838B32;
    db $40,$04,$01,$16,$00,$01                                           ;838B34;
    dw $00A0                                                             ;838B3A;
    dw DoorASM_Scroll_2_3_4_5_B_C_D_11_Red                               ;838B3C;

%anchor($838B3E)
Door_Climb_0:
    dw RoomHeader_Parlor                                                 ;838B3E;
    db $00,$07,$16,$4D,$01,$04                                           ;838B40;
    dw $01C0                                                             ;838B46;
    dw DoorASM_Scroll_6_Green                                            ;838B48;

%anchor($838B4A)
Door_Climb_1:
    dw RoomHeader_CrateriaSuper                                          ;838B4A;
    db $00,$04,$01,$06,$00,$00                                           ;838B4C;
    dw $8000,$0000                                                       ;838B52;

%anchor($838B56)
Door_Climb_2:
    dw RoomHeader_CrateriaSuper                                          ;838B56;
    db $00,$04,$01,$76,$00,$07                                           ;838B58;
    dw $8000,$0000                                                       ;838B5E;

%anchor($838B62)
Door_Climb_3:
    dw RoomHeader_Pit                                                    ;838B62;
    db $00,$04,$01,$06,$00,$00                                           ;838B64;
    dw $8000,$0000                                                       ;838B6A;

%anchor($838B6E)
Door_Climb_4:
    dw RoomHeader_TourianEscape4                                         ;838B6E;
    db $00,$05,$2E,$16,$02,$01                                           ;838B70;
    dw $8000,$0000                                                       ;838B76;

%anchor($838B7A)
Door_Pit_0:
    dw RoomHeader_Climb                                                  ;838B7A;
    db $00,$05,$1E,$86,$01,$08                                           ;838B7C;
    dw $8000,$0000                                                       ;838B82;

%anchor($838B86)
Door_Pit_1:
    dw RoomHeader_ElevToBlueBrinstar                                     ;838B86;
    db $00,$04,$01,$06,$00,$00                                           ;838B88;
    dw $8000,$0000                                                       ;838B8E;

%anchor($838B92)
Door_ElevToBlueBrinstar_0:
    dw RoomHeader_Pit                                                    ;838B92;
    db $00,$05,$2E,$06,$02,$00                                           ;838B94;
    dw $8000,$0000                                                       ;838B9A;

%anchor($838B9E)
Door_ElevToBlueBrinstar_1:
    dw RoomHeader_MorphBall                                              ;838B9E;
    db $F0,$02,$00,$00,$05,$00                                           ;838BA0;
    dw $0000,$0000                                                       ;838BA6;

%anchor($838BAA)
Door_BombTorizo_0:
    dw RoomHeader_Flyway                                                 ;838BAA;
    db $00,$05,$2E,$06,$02,$00                                           ;838BAC;
    dw $8000,$0000                                                       ;838BB2;

%anchor($838BB6)
Door_Flyway_0:
    dw RoomHeader_Parlor                                                 ;838BB6;
    db $00,$05,$3E,$26,$03,$02                                           ;838BB8;
    dw $8000                                                             ;838BBE;
    dw DoorASM_Scroll_4_Red_8_Green                                      ;838BC0;

%anchor($838BC2)
Door_Flyway_1:
    dw RoomHeader_BombTorizo                                             ;838BC2;
    db $00,$04,$01,$06,$00,$00                                           ;838BC4;
    dw $8000,$0000                                                       ;838BCA;

%anchor($838BCE)
Door_PreMapFlyway_0:
    dw RoomHeader_Parlor                                                 ;838BCE;
    db $00,$05,$1E,$36,$01,$03                                           ;838BD0;
    dw $8000                                                             ;838BD6;
    dw DoorASM_Scroll_6_Green                                            ;838BD8;

%anchor($838BDA)
Door_PreMapFlyway_1:
    dw RoomHeader_CrateriaMap                                            ;838BDA;
    db $00,$04,$01,$06,$00,$00                                           ;838BDC;
    dw $8000,$0000                                                       ;838BE2;

%anchor($838BE6)
Door_Terminator_0:
    dw RoomHeader_GreenPiratesShaft                                      ;838BE6;
    db $00,$05,$0E,$46,$00,$04                                           ;838BE8;
    dw $8000,$0000                                                       ;838BEE;

%anchor($838BF2)
Door_Terminator_1:
    dw RoomHeader_Parlor                                                 ;838BF2;
    db $00,$04,$01,$06,$00,$00                                           ;838BF4;
    dw $8000                                                             ;838BFA;
    dw DoorASM_Scroll_0_Blue                                             ;838BFC;

%anchor($838BFE)
Door_GreenBrinstarElev_:
    dw RoomHeader_LowerMushrooms                                         ;838BFE;
    db $00,$04,$01,$06,$00,$00                                           ;838C00;
    dw $8000,$0000                                                       ;838C06;

%anchor($838C0A)
Door_GreenBrinstarElev_1:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838C0A;
    db $C0,$02,$00,$00,$00,$00                                           ;838C0C;
    dw $0000                                                             ;838C12;
    dw DoorASM_Scroll_1D_Blue                                            ;838C14;

%anchor($838C16)
Door_LowerMushrooms_0:
    dw RoomHeader_GreenPiratesShaft                                      ;838C16;
    db $00,$04,$01,$66,$00,$06                                           ;838C18;
    dw $8000,$0000                                                       ;838C1E;

%anchor($838C22)
Door_LowerMushrooms_1:
    dw RoomHeader_GreenBrinstarElev                                      ;838C22;
    db $00,$05,$0E,$06,$00,$00                                           ;838C24;
    dw $8000,$0000                                                       ;838C2A;

%anchor($838C2E)
Door_CrateriaMap_0:
    dw RoomHeader_PreMapFlyway                                           ;838C2E;
    db $00,$05,$2E,$06,$02,$00                                           ;838C30;
    dw $8000,$0000                                                       ;838C36;

%anchor($838C3A)
Door_GreenPiratesShaft_0:
    dw RoomHeader_Terminator                                             ;838C3A;
    db $00,$04,$01,$26,$00,$02                                           ;838C3C;
    dw $8000,$0000                                                       ;838C42;

%anchor($838C46)
Door_GreenPiratesShaft_1:
    dw RoomHeader_LowerMushrooms                                         ;838C46;
    db $00,$05,$3E,$06,$03,$00                                           ;838C48;
    dw $8000,$0000                                                       ;838C4E;

%anchor($838C52)
Door_GreenPiratesShaft_2:
    dw RoomHeader_StatuesHallway                                         ;838C52;
    db $00,$04,$01,$06,$00,$00                                           ;838C54;
    dw $8000,$0000                                                       ;838C5A;

%anchor($838C5E)
Door_GreenPiratesShaft_3:
    dw RoomHeader_GauntletETank                                          ;838C5E;
    db $00,$04,$01,$06,$00,$00                                           ;838C60;
    dw $8000                                                             ;838C66;
    dw DoorASM_Scroll_4_Blue                                             ;838C68;

%anchor($838C6A)
Door_CrateriaSuper_0:
    dw RoomHeader_Climb                                                  ;838C6A;
    db $00,$05,$2E,$06,$02,$00                                           ;838C6C;
    dw $8000                                                             ;838C72;
    dw DoorASM_Scroll_2_Blue                                             ;838C74;

%anchor($838C76)
Door_CrateriaSuper_1:
    dw RoomHeader_Climb                                                  ;838C76;
    db $00,$05,$2E,$76,$02,$07                                           ;838C78;
    dw $8000                                                             ;838C7E;
    dw DoorASM_Scroll_17_Blue                                            ;838C80;

%anchor($838C82)
Door_FinalMissileBombway_0:
    dw RoomHeader_FinalMissile                                           ;838C82;
    db $00,$05,$0E,$06,$00,$00                                           ;838C84;
    dw $8000,$0000                                                       ;838C8A;

%anchor($838C8E)
Door_FinalMissileBombway_1:
    dw RoomHeader_Parlor                                                 ;838C8E;
    db $00,$04,$11,$36,$01,$03                                           ;838C90;
    dw $8000                                                             ;838C96;
    dw DoorASM_Scroll_6_Green                                            ;838C98;

%anchor($838C9A)
Door_FinalMissile_0:
    dw RoomHeader_FinalMissileBombway                                    ;838C9A;
    db $00,$04,$01,$06,$00,$00                                           ;838C9C;
    dw $8000,$0000                                                       ;838CA2;

%anchor($838CA6)
Door_GreenBrinstarMainShaft_0:
    dw RoomHeader_GreenBrinstarElev                                      ;838CA6;
    db $D0,$03,$00,$00,$00,$00                                           ;838CA8;
    dw $0000                                                             ;838CAE;
    dw DoorASM_Scroll_2_Green                                            ;838CB0;

%anchor($838CB2)
Door_GreenBrinstarMainShaft_1:
    dw RoomHeader_BrinstarPreMap                                         ;838CB2;
    db $00,$05,$2E,$06,$02,$00                                           ;838CB4;
    dw $8000,$0000                                                       ;838CBA;

%anchor($838CBE)
Door_GreenBrinstarMainShaft_2:
    dw RoomHeader_GreenBrinstarBeetoms                                   ;838CBE;
    db $00,$05,$0E,$06,$00,$00                                           ;838CC0;
    dw $8000,$0000                                                       ;838CC6;

%anchor($838CCA)
Door_GreenBrinstarMainShaft_3:
    dw RoomHeader_GreenBrinstarFirefleas                                 ;838CCA;
    db $00,$05,$2E,$06,$02,$00                                           ;838CCC;
    dw $8000,$0000                                                       ;838CD2;

%anchor($838CD6)
Door_GreenBrinstarMainShaft_4:
    dw RoomHeader_EarlySupers                                            ;838CD6;
    db $00,$04,$01,$16,$00,$01                                           ;838CD8;
    dw $8000,$0000                                                       ;838CDE;

%anchor($838CE2)
Door_GreenBrinstarMainShaft_5:
    dw RoomHeader_Dachora                                                ;838CE2;
    db $00,$04,$01,$06                                                   ;838CE4;
    dw $0000,$8000                                                       ;838CE8;
    dw DoorASM_Scroll_4_Red                                              ;838CEC;

%anchor($838CEE)
Door_GreenBrinstarMainShaft_6:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838CEE;
    db $00,$04,$01,$76,$01,$07                                           ;838CF0;
    dw $8000                                                             ;838CF6;
    dw DoorASM_Scroll_1D_Blue                                            ;838CF8;

%anchor($838CFA)
Door_GreenBrinstarMainShaft_7:
    dw RoomHeader_EtecoonETank                                           ;838CFA;
    db $00,$05,$4E,$16,$04,$01                                           ;838CFC;
    dw $8000                                                             ;838D02;
    dw DoorASM_Scroll_5_6_Blue                                           ;838D04;

%anchor($838D06)
Door_GreenBrinstarMainShaft_8:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838D06;
    db $00,$05,$0E,$76,$00,$07                                           ;838D08;
    dw $8000                                                             ;838D0E;
    dw DoorASM_Scroll_18_1C_Green                                        ;838D10;

%anchor($838D12)
Door_GreenBrinstarMainShaft_A:
    dw RoomHeader_GreenBrinstarSave                                      ;838D12;
    db $00,$05,$0E,$06,$00,$00                                           ;838D14;
    dw $8000,$0000                                                       ;838D1A;

%anchor($838D1E)
Door_SporeSpawnSuper_0:
    dw RoomHeader_SporeSpawnFarming                                      ;838D1E;
    db $00,$05,$2E,$06,$02,$00                                           ;838D20;
    dw $8000,$0000                                                       ;838D26;

%anchor($838D2A)
Door_SporeSpawnSuper_1:
    dw RoomHeader_SporeSpawn                                             ;838D2A;
    db $00,$05,$0E,$06,$00,$00                                           ;838D2C;
    dw $8000,$0000                                                       ;838D32;

%anchor($838D36)
Door_BrinstarPreMap_0:
    dw RoomHeader_GreenBrinstarMap                                       ;838D36;
    db $00,$05,$0E,$06,$00,$00                                           ;838D38;
    dw $8000,$0000                                                       ;838D3E;

%anchor($838D42)
Door_BrinstarPreMap_1:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838D42;
    db $00,$04,$01,$46,$00,$04                                           ;838D44;
    dw $8000,$0000                                                       ;838D4A;

%anchor($838D4E)
Door_EarlySupers_0:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838D4E;
    db $00,$05,$0E,$46,$00,$04                                           ;838D50;
    dw $8000,$0000                                                       ;838D56;

%anchor($838D5A)
Door_EarlySupers_1:
    dw RoomHeader_BrinstarReserveTank                                    ;838D5A;
    db $00,$04,$01,$06,$00,$00                                           ;838D5C;
    dw $8000,$0000                                                       ;838D62;

%anchor($838D66)
Door_BrinstarReserveTank_0:
    dw RoomHeader_EarlySupers                                            ;838D66;
    db $00,$05,$2E,$16,$02,$01                                           ;838D68;
    dw $8000,$0000                                                       ;838D6E;

%anchor($838D72)
Door_GreenBrinstarMap_0:
    dw RoomHeader_BrinstarPreMap                                         ;838D72;
    db $00,$04,$01,$06,$00,$00                                           ;838D74;
    dw $8000,$0000                                                       ;838D7A;

%anchor($838D7E)
Door_GreenBrinstarFirefleas_0:
    dw RoomHeader_GreenBrinstarMissileRefill                             ;838D7E;
    db $00,$05,$0E,$06,$00,$00                                           ;838D80;
    dw $8000,$0000                                                       ;838D86;

%anchor($838D8A)
Door_GreenBrinstarFirefleas_1:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838D8A;
    db $00,$04,$01,$66,$00,$06                                           ;838D8C;
    dw $8000,$0000                                                       ;838D92;

%anchor($838D96)
Door_GreenBrinstarMissileRefill_0:
    dw RoomHeader_GreenBrinstarFirefleas                                 ;838D96;
    db $00,$04,$01,$16,$00,$01                                           ;838D98;
    dw $8000,$0000                                                       ;838D9E;

%anchor($838DA2)
Door_Dachora_0:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838DA2;
    db $00,$05,$0E,$66,$00,$06                                           ;838DA4;
    dw $8000,$0000                                                       ;838DAA;

%anchor($838DAE)
Door_Dachora_1:
    dw RoomHeader_BigPink                                                ;838DAE;
    db $00,$04,$21,$26,$02,$02                                           ;838DB0;
    dw $8000,$0000                                                       ;838DB6;

%anchor($838DBA)
Door_Dachora_2:
    dw RoomHeader_DachoraEnergyRefill                                    ;838DBA;
    db $00,$05,$0E,$06,$00,$00                                           ;838DBC;
    dw $8000,$0000                                                       ;838DC2;

%anchor($838DC6)
Door_BigPink_0:
    dw RoomHeader_SporeSpawnKihunters                                    ;838DC6;
    db $00,$04,$01,$06,$00,$00                                           ;838DC8;
    dw $8000,$0000                                                       ;838DCE;

%anchor($838DD2)
Door_BigPink_1:
    dw RoomHeader_Dachora                                                ;838DD2;
    db $00,$05,$6E,$06,$06,$00                                           ;838DD4;
    dw $8000,$0000                                                       ;838DDA;

%anchor($838DDE)
Door_BigPink_2:
    dw RoomHeader_PinkBrinstarPowerBombs                                 ;838DDE;
    db $00,$05,$1E,$16,$01,$01                                           ;838DE0;
    dw $8000                                                             ;838DE6;
    dw DoorASM_Scroll_2_3_Green                                          ;838DE8;

%anchor($838DEA)
Door_BigPink_3:
    dw RoomHeader_GreenHillZone                                          ;838DEA;
    db $00,$04,$01,$06,$00,$00                                           ;838DEC;
    dw $8000,$0000                                                       ;838DF2;

%anchor($838DF6)
Door_BigPink_4:
    dw RoomHeader_BigPinkSaveRoom                                        ;838DF6;
    db $00,$05,$0E,$06,$00,$00                                           ;838DF8;
    dw $8000,$0000                                                       ;838DFE;

%anchor($838E02)
Door_BigPink_5:
    dw RoomHeader_PinkBrinstarPowerBombs                                 ;838E02;
    db $00,$01,$1E,$06,$01,$00                                           ;838E04;
    dw $8000,$0000                                                       ;838E0A;

%anchor($838E0E)
Door_BigPink_6:
    dw RoomHeader_WaterwayETank                                          ;838E0E;
    db $00,$05,$6E,$06,$06,$00                                           ;838E10;
    dw $8000,$0000                                                       ;838E16;

%anchor($838E1A)
Door_BigPink_7:
    dw RoomHeader_PinkBrinstarHoppers                                    ;838E1A;
    db $00,$04,$01,$16,$00,$01                                           ;838E1C;
    dw $8000,$0000                                                       ;838E22;

%anchor($838E26)
Door_BigPink_8:
    dw RoomHeader_SporeSpawnFarming                                      ;838E26;
    db $00,$04,$01,$06,$00,$00                                           ;838E28;
    dw $8000,$0000                                                       ;838E2E;

%anchor($838E32)
Door_SporeSpawnKihunters_0:
    dw RoomHeader_BigPink                                                ;838E32;
    db $00,$05,$3E,$06,$03,$00                                           ;838E34;
    dw $8000,$0000                                                       ;838E3A;

%anchor($838E3E)
Door_SporeSpawnKihunters_1:
    dw RoomHeader_SporeSpawn                                             ;838E3E;
    db $00,$07,$06,$2E,$00,$02                                           ;838E40;
    dw $8000,$0000                                                       ;838E46;

%anchor($838E4A)
Door_SporeSpawn_0:
    dw RoomHeader_SporeSpawnSuper                                        ;838E4A;
    db $00,$04,$01,$06,$00,$00                                           ;838E4C;
    dw $8000                                                             ;838E52;
    dw DoorASM_Scroll_1_Blue_3_Red                                       ;838E54;

%anchor($838E56)
Door_SporeSpawn_1:
    dw RoomHeader_SporeSpawnKihunters                                    ;838E56;
    db $00,$06,$36,$03,$03,$00                                           ;838E58;
    dw $8000,$0000                                                       ;838E5E;

%anchor($838E62)
Door_PinkBrinstarPowerBombs_0:
    dw RoomHeader_BigPink                                                ;838E62;
    db $00,$00,$00,$00,$02,$03                                           ;838E64;
    dw $8000,$0000                                                       ;838E6A;

%anchor($838E6E)
Door_PinkBrinstarPowerBombs_1:
    dw RoomHeader_BigPink                                                ;838E6E;
    db $00,$04,$21,$46,$02,$04                                           ;838E70;
    dw $8000,$0000                                                       ;838E76;

%anchor($838E7A)
Door_GreenHillZone_0:
    dw RoomHeader_BigPink                                                ;838E7A;
    db $00,$05,$3E,$66,$03,$06                                           ;838E7C;
    dw $8000,$0000                                                       ;838E82;

%anchor($838E86)
Door_GreenHillZone_1:
    dw RoomHeader_MorphBall                                              ;838E86;
    db $00,$04,$01,$26,$00,$02                                           ;838E88;
    dw $8000,$0000                                                       ;838E8E;

%anchor($838E92)
Door_GreenHillZone_2:
    dw RoomHeader_NoobBridge                                             ;838E92;
    db $00,$04,$01,$06,$00,$00                                           ;838E94;
    dw $8000,$0000                                                       ;838E9A;

%anchor($838E9E)
Door_MorphBall_0:
    dw RoomHeader_GreenHillZone                                          ;838E9E;
    db $00,$05,$1E,$06,$01,$00                                           ;838EA0;
    dw $8000,$0000                                                       ;838EA6;

%anchor($838EAA)
Door_MorphBall_1:
    dw RoomHeader_ConstructionZone                                       ;838EAA;
    db $00,$04,$01,$06,$00,$00                                           ;838EAC;
    dw $8000,$0000                                                       ;838EB2;

%anchor($838EB6)
Door_MorphBall_2:
    dw RoomHeader_ElevToBlueBrinstar                                     ;838EB6;
    db $E0,$03,$00,$00,$00,$00                                           ;838EB8;
    dw $0000,$0000                                                       ;838EBE;

%anchor($838EC2)
Door_ConstructionZone_0:
    dw RoomHeader_MorphBall                                              ;838EC2;
    db $00,$05,$7E,$26,$07,$02                                           ;838EC4;
    dw $8000,$0000                                                       ;838ECA;

%anchor($838ECE)
Door_ConstructionZone_1:
    dw RoomHeader_BlueBrinstarETank                                      ;838ECE;
    db $00,$04,$01,$26,$00,$02                                           ;838ED0;
    dw $8000,$0000                                                       ;838ED6;

%anchor($838EDA)
Door_ConstructionZone_2:
    dw RoomHeader_FirstMissile                                           ;838EDA;
    db $00,$05,$0E,$06,$00,$00                                           ;838EDC;
    dw $8000,$0000                                                       ;838EE2;

%anchor($838EE6)
Door_BlueBrinstarETank_0:
    dw RoomHeader_ConstructionZone                                       ;838EE6;
    db $00,$05,$0E,$06,$00,$00                                           ;838EE8;
    dw $8000,$0000                                                       ;838EEE;

%anchor($838EF2)
Door_BlueBrinstarETank_1:
    dw RoomHeader_BlueBrinstarBoulders                                   ;838EF2;
    db $00,$05,$1E,$06,$01,$00                                           ;838EF4;
    dw $8000,$0000                                                       ;838EFA;

%anchor($838EFE)
Door_NoobBridge_0:
    dw RoomHeader_GreenHillZone                                          ;838EFE;
    db $00,$05,$7E,$36,$07,$03                                           ;838F00;
    dw $8000,$0000                                                       ;838F06;

%anchor($838F0A)
Door_NoobBridge_1:
    dw RoomHeader_RedTower                                               ;838F0A;
    db $00,$04,$01,$46,$00,$04                                           ;838F0C;
    dw $8000,$0000                                                       ;838F12;

%anchor($838F16)
Door_GreenBrinstarBeetoms_0:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838F16;
    db $00,$04,$01,$A6,$00,$0A                                           ;838F18;
    dw $8000                                                             ;838F1E;
    dw DoorASM_Scroll_18_1C_Green                                        ;838F20;

%anchor($838F22)
Door_GreenBrinstarBeetoms_1:
    dw RoomHeader_EtecoonETank                                           ;838F22;
    db $00,$05,$1E,$06,$01,$00                                           ;838F24;
    dw $8000,$0000                                                       ;838F2A;

%anchor($838F2E)
Door_EtecoonETank_0:
    dw RoomHeader_GreenBrinstarBeetoms                                   ;838F2E;
    db $00,$04,$01,$06,$00,$00                                           ;838F30;
    dw $8000,$0000                                                       ;838F36;

%anchor($838F3A)
Door_EtecoonETank_1:
    dw RoomHeader_EtecoonSuper                                           ;838F3A;
    db $00,$05,$0E,$06,$00,$00                                           ;838F3C;
    dw $8000,$0000                                                       ;838F42;

%anchor($838F46)
Door_EtecoonETank_2:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;838F46;
    db $00,$04,$21,$B6,$02,$0B                                           ;838F48;
    dw $8000                                                             ;838F4E;
    dw DoorASM_Scroll_1D_Blue                                            ;838F50;

%anchor($838F52)
Door_EtecoonETank_3:
    dw RoomHeader_EtecoonSave                                            ;838F52;
    db $00,$05,$0E,$06,$00,$00                                           ;838F54;
    dw $8000,$0000                                                       ;838F5A;

%anchor($838F5E)
Door_EtecoonSuper_0:
    dw RoomHeader_EtecoonETank                                           ;838F5E;
    db $00,$04,$01,$06,$00,$00                                           ;838F60;
    dw $8000,$0000                                                       ;838F66;

%anchor($838F6A)
Door_DachoraEnergyRefill_0:
    dw RoomHeader_Dachora                                                ;838F6A;
    db $00,$04,$01,$66,$00,$06                                           ;838F6C;
    dw $8000                                                             ;838F72;
    dw DoorASM_Scroll_B_Green                                            ;838F74;

%anchor($838F76)
Door_SporeSpawnFarming_0:
    dw RoomHeader_SporeSpawnSuper                                        ;838F76;
    db $00,$04,$01,$86,$00,$08                                           ;838F78;
    dw $8000,$0000                                                       ;838F7E;

%anchor($838F82)
Door_SporeSpawnFarming_1:
    dw RoomHeader_BigPink                                                ;838F82;
    db $00,$05,$4E,$56,$04,$05                                           ;838F84;
    dw $8000                                                             ;838F8A;
    dw DoorASM_Scroll_Scroll_1C_Red_1D_Blue                              ;838F8C;

%anchor($838F8E)
Door_WaterwayETank_0:
    dw RoomHeader_BigPink                                                ;838F8E;
    db $00,$04,$01,$96,$00,$09                                           ;838F90;
    dw $8000                                                             ;838F96;
    dw DoorASM_Scroll_20_24_25_Green                                     ;838F98;

%anchor($838F9A)
Door_WaterwayETank_1:
    dw RoomHeader_KraidRefill                                            ;838F9A;
    db $00,$06,$16,$03,$01,$00                                           ;838F9C;
    dw $8000,$0000                                                       ;838FA2;

%anchor($838FA6)
Door_FirstMissile_0:
    dw RoomHeader_ConstructionZone                                       ;838FA6;
    db $00,$04,$01,$16                                                   ;838FA8;
    dw $0100,$8000                                                       ;838FAC;
    dw DoorASM_Scroll_0_Green_1_Blue                                     ;838FB0;

%anchor($838FB2)
Door_PinkBrinstarHoppers_0:
    dw RoomHeader_BigPink                                                ;838FB2;
    db $00,$05,$3E,$46,$03,$04                                           ;838FB4;
    dw $8000,$0000                                                       ;838FBA;

%anchor($838FBE)
Door_PinkBrinstarHoppers_1:
    dw RoomHeader_HopperETank                                            ;838FBE;
    db $00,$04,$01,$06,$00,$00                                           ;838FC0;
    dw $8000,$0000                                                       ;838FC6;

%anchor($838FCA)
Door_HopperETank_0:
    dw RoomHeader_PinkBrinstarHoppers                                    ;838FCA;
    db $00,$05,$1E,$16,$01,$01                                           ;838FCC;
    dw $8000,$0000                                                       ;838FD2;

%anchor($838FD6)
Door_BigPinkSaveRoom_0:
    dw RoomHeader_BigPink                                                ;838FD6;
    db $00,$04,$11,$06,$01,$00                                           ;838FD8;
    dw $8000                                                             ;838FDE;
    dw DoorASM_Scroll_1_Green                                            ;838FE0;

%anchor($838FE2)
Door_BlueBrinstarBoulders_0:
    dw RoomHeader_BlueBrinstarETank                                      ;838FE2;
    db $00,$04,$21,$06,$02,$00                                           ;838FE4;
    dw $8000                                                             ;838FEA;
    dw DoorASM_Scroll_2_Blue_duplicate                                   ;838FEC;

%anchor($838FEE)
Door_BlueBrinstarBoulders_1:
    dw RoomHeader_BillyMays                                              ;838FEE;
    db $00,$05,$0E,$06,$00,$00                                           ;838FF0;
    dw $8000,$0000                                                       ;838FF6;

%anchor($838FFA)
Door_BillyMays_0:
    dw RoomHeader_BlueBrinstarBoulders                                   ;838FFA;
    db $00,$04,$01,$06,$00,$00                                           ;838FFC;
    dw $8000,$0000                                                       ;839002;

%anchor($839006)
Door_GreenBrinstarSave_0:
    dw RoomHeader_GreenBrinstarMainShaft                                 ;839006;
    db $00,$04,$01,$56,$00,$05                                           ;839008;
    dw $8000,$0000                                                       ;83900E;

%anchor($839012)
Door_EtecoonSave_0:
    dw RoomHeader_EtecoonETank                                           ;839012;
    db $00,$04,$01,$16,$00,$01                                           ;839014;
    dw $8000                                                             ;83901A;
    dw DoorASM_Scroll_5_6_Blue                                           ;83901C;

%anchor($83901E)
Door_RedTower_0:
    dw RoomHeader_Hellway                                                ;83901E;
    db $00,$04,$01,$06,$00,$00                                           ;839020;
    dw $8000,$0000                                                       ;839026;

%anchor($83902A)
Door_RedTower_1:
    dw RoomHeader_NoobBridge                                             ;83902A;
    db $00,$05,$5E,$06,$05,$00                                           ;83902C;
    dw $8000,$0000                                                       ;839032;

%anchor($839036)
Door_RedTower_2:
    dw RoomHeader_RedBrinstarFirefleas                                   ;839036;
    db $00,$05,$7E,$06,$07,$00                                           ;839038;
    dw $8000,$0000                                                       ;83903E;

%anchor($839042)
Door_RedTower_3:
    dw RoomHeader_SkreeBoost                                             ;839042;
    db $00,$04,$01,$06,$00,$00                                           ;839044;
    dw $8000,$0000                                                       ;83904A;

%anchor($83904E)
Door_RedTower_4:
    dw RoomHeader_RedTowerRefill                                         ;83904E;
    db $00,$05,$0E,$06,$00,$00                                           ;839050;
    dw $8000,$0000                                                       ;839056;

%anchor($83905A)
Door_RedBrinstarFirefleas_0:
    dw RoomHeader_XrayScope                                              ;83905A;
    db $00,$05,$1E,$06,$01,$00                                           ;83905C;
    dw $8000,$0000                                                       ;839062;

%anchor($839066)
Door_RedBrinstarFirefleas_1:
    dw RoomHeader_RedTower                                               ;839066;
    db $00,$04,$01,$66,$00,$06                                           ;839068;
    dw $8000,$0000                                                       ;83906E;

%anchor($839072)
Door_XrayScope_0:
    dw RoomHeader_RedBrinstarFirefleas                                   ;839072;
    db $00,$04,$01,$06,$00,$00                                           ;839074;
    dw $8000,$0000                                                       ;83907A;

%anchor($83907E)
Door_Hellway_0:
    dw RoomHeader_RedTower                                               ;83907E;
    db $00,$05,$0E,$06,$00,$00                                           ;839080;
    dw $8000,$0000                                                       ;839086;

%anchor($83908A)
Door_Hellway_1:
    dw RoomHeader_Caterpillar                                            ;83908A;
    db $00,$04,$01,$56,$00,$05                                           ;83908C;
    dw $8000                                                             ;839092;
    dw DoorASM_Scroll_6_Green_duplicate_again                            ;839094;

%anchor($839096)
Door_Caterpillar_0:
    dw RoomHeader_AlphaPowerBomb                                         ;839096;
    db $00,$05,$2E,$06,$02,$00                                           ;839098;
    dw $8000,$0000                                                       ;83909E;

%anchor($8390A2)
Door_Caterpillar_1:
    dw RoomHeader_BetaPowerBomb                                          ;8390A2;
    db $00,$05,$1E,$06,$01,$00                                           ;8390A4;
    dw $8000,$0000                                                       ;8390AA;

%anchor($8390AE)
Door_Caterpillar_2:
    dw RoomHeader_Hellway                                                ;8390AE;
    db $00,$05,$2E,$06,$02,$00                                           ;8390B0;
    dw $8000,$0000                                                       ;8390B6;

%anchor($8390BA)
Door_Caterpillar_3:
    dw RoomHeader_RedBinstarElev                                         ;8390BA;
    db $F0,$03,$00,$00,$00,$00                                           ;8390BC;
    dw $0000,$0000                                                       ;8390C2;

%anchor($8390C6)
Door_Caterpillar_4:
    dw RoomHeader_RedFish                                                ;8390C6;
    db $40,$04,$01,$06,$00,$00                                           ;8390C8;
    dw $8000                                                             ;8390CE;
    dw DoorASM_Scroll_1_Blue_2_Red                                       ;8390D0;

%anchor($8390D2)
Door_Caterpillar_6:
    dw RoomHeader_RedBrinstarSave                                        ;8390D2;
    db $00,$04,$01,$06,$00,$00                                           ;8390D4;
    dw $8000,$0000                                                       ;8390DA;

%anchor($8390DE)
Door_BetaPowerBomb_0:
    dw RoomHeader_Caterpillar                                            ;8390DE;
    db $00,$04,$01,$36,$00,$03                                           ;8390E0;
    dw $8000,$0000                                                       ;8390E6;

%anchor($8390EA)
Door_AlphaPowerBomb_0:
    dw RoomHeader_Caterpillar                                            ;8390EA;
    db $00,$04,$01,$76,$00,$07                                           ;8390EC;
    dw $8000                                                             ;8390F2;
    dw DoorASM_Scroll_F_12_Green                                         ;8390F4;

%anchor($8390F6)
Door_SkreeBoost_0:
    dw RoomHeader_RedTower                                               ;8390F6;
    db $00,$05,$0E,$96,$00,$09                                           ;8390F8;
    dw $8000                                                             ;8390FE;
    dw DoorASM_Scroll_6_7_Green                                          ;839100;

%anchor($839102)
Door_SkreeBoost_1:
    dw RoomHeader_BelowSpazer                                            ;839102;
    db $00,$04,$01,$16,$00,$01                                           ;839104;
    dw $8000,$0000                                                       ;83910A;

%anchor($83910E)
Door_BelowSpazer_0:
    dw RoomHeader_SkreeBoost                                             ;83910E;
    db $00,$05,$1E,$06,$01,$00                                           ;839110;
    dw $8000,$0000                                                       ;839116;

%anchor($83911A)
Door_BelowSpazer_1:
    dw RoomHeader_WestTunnel                                             ;83911A;
    db $40,$04,$01,$06,$00,$00                                           ;83911C;
    dw $8000,$0000                                                       ;839122;

%anchor($839126)
Door_BelowSpazer_2:
    dw RoomHeader_Spazer                                                 ;839126;
    db $00,$04,$01,$06,$00,$00                                           ;839128;
    dw $8000,$0000                                                       ;83912E;

%anchor($839132)
Door_Spazer_0:
    dw RoomHeader_BelowSpazer                                            ;839132;
    db $00,$05,$1E,$06,$01,$00                                           ;839134;
    dw $8000                                                             ;83913A;
    dw DoorASM_Scroll_0_1_Green                                          ;83913C;

%anchor($83913E)
Door_WarehouseZeela_0:
    dw RoomHeader_WarehouseEntrance                                      ;83913E;
    db $00,$05,$2E,$06,$02,$00                                           ;839140;
    dw $8000                                                             ;839146;
    dw DoorASM_Scroll_0_Red_1_Green                                      ;839148;

%anchor($83914A)
Door_WarehouseZeela_1:
    dw RoomHeader_WarehouseETank                                         ;83914A;
    db $00,$05,$0E,$06,$00,$00                                           ;83914C;
    dw $8000,$0000                                                       ;839152;

%anchor($839156)
Door_WarehouseZeela_2:
    dw RoomHeader_WarehouseKihunter                                      ;839156;
    db $00,$07,$06,$0C,$00,$00                                           ;839158;
    dw $0240,$0000                                                       ;83915E;

%anchor($839162)
Door_WarehouseETank_0:
    dw RoomHeader_WarehouseZeela                                         ;839162;
    db $00,$04,$01,$16,$00,$01                                           ;839164;
    dw $8000,$0000                                                       ;83916A;

%anchor($83916E)
Door_WarehouseKihunter_0:
    dw RoomHeader_WarehouseZeela                                         ;83916E;
    db $00,$06,$16,$13,$01,$01                                           ;839170;
    dw $01C0,$0000                                                       ;839176;

%anchor($83917A)
Door_WarehouseKihunter_1:
    dw RoomHeader_MiniKraid                                              ;83917A;
    db $00,$04,$01,$06,$00,$00                                           ;83917C;
    dw $8000,$0000                                                       ;839182;

%anchor($839186)
Door_WarehouseKihunter_2:
    dw RoomHeader_WarehouseSave                                          ;839186;
    db $00,$04,$01,$06,$00,$00                                           ;839188;
    dw $8000,$0000                                                       ;83918E;

%anchor($839192)
Door_MiniKraid_0:
    dw RoomHeader_WarehouseKihunter                                      ;839192;
    db $00,$05,$1E,$16,$01,$01                                           ;839194;
    dw $8000,$0000                                                       ;83919A;

%anchor($83919E)
Door_MiniKraid_1:
    dw RoomHeader_KraidEyeDoor                                           ;83919E;
    db $00,$04,$01,$16,$00,$01                                           ;8391A0;
    dw $8000,$0000                                                       ;8391A6;

%anchor($8391AA)
Door_KraidEyeDoor_0:
    dw RoomHeader_MiniKraid                                              ;8391AA;
    db $00,$05,$5E,$06,$05,$00                                           ;8391AC;
    dw $8000,$0000                                                       ;8391B2;

%anchor($8391B6)
Door_KraidEyeDoor_1:
    dw RoomHeader_Kraid                                                  ;8391B6;
    db $00,$04,$01,$16,$00,$01                                           ;8391B8;
    dw $8000,$0000                                                       ;8391BE;

%anchor($8391C2)
Door_KraidEyeDoor_2:
    dw RoomHeader_KraidRefill                                            ;8391C2;
    db $00,$04,$01,$06,$00,$00                                           ;8391C4;
    dw $8000,$0000                                                       ;8391CA;

%anchor($8391CE)
Door_Kraid_0:
    dw RoomHeader_KraidEyeDoor                                           ;8391CE;
    db $00,$05,$1E,$16,$01,$01                                           ;8391D0;
    dw $8000,$0000                                                       ;8391D6;

%anchor($8391DA)
Door_Kraid_1:
    dw RoomHeader_VariaSuit                                              ;8391DA;
    db $00,$04,$01,$06,$00,$00                                           ;8391DC;
    dw $8000,$0000                                                       ;8391E2;

%anchor($8391E6)
Door_StatuesHallway_0:
    dw RoomHeader_GreenPiratesShaft                                      ;8391E6;
    db $00,$05,$0E,$66,$00,$06                                           ;8391E8;
    dw $8000,$0000                                                       ;8391EE;

%anchor($8391F2)
Door_StatuesHallway_1:
    dw RoomHeader_Statues                                                ;8391F2;
    db $00,$04,$01,$06,$00,$00                                           ;8391F4;
    dw $8000,$0000                                                       ;8391FA;

%anchor($8391FE)
Door_RedTowerRefill_0:
    dw RoomHeader_RedTower                                               ;8391FE;
    db $00,$04,$01,$96,$00,$09                                           ;839200;
    dw $8000                                                             ;839206;
    dw DoorASM_Scroll_6_7_Green                                          ;839208;

%anchor($83920A)
Door_KraidRefill_0:
    dw RoomHeader_KraidEyeDoor                                           ;83920A;
    db $00,$05,$0E,$06,$00,$00                                           ;83920C;
    dw $8000                                                             ;839212;
    dw DoorASM_Scroll_0_Green                                            ;839214;

%anchor($839216)
Door_Statues_0:
    dw RoomHeader_StatuesHallway                                         ;839216;
    db $00,$05,$4E,$06,$04,$00                                           ;839218;
    dw $8000,$0000                                                       ;83921E;

%anchor($839222)
Door_Statues_1:
    dw RoomHeader_TourianFirst                                           ;839222;
    db $D0,$02,$00,$00,$00,$00                                           ;839224;
    dw $0000,$0000                                                       ;83922A;

%anchor($83922E)
Door_WarehouseEntrance_0:
    dw RoomHeader_EastTunnel                                             ;83922E;
    db $40,$05,$0E,$16,$00,$01                                           ;839230;
    dw $8000                                                             ;839236;
    dw DoorASM_Scroll_0_Red_4_Blue                                       ;839238;

%anchor($83923A)
Door_WarehouseEntrance_1:
    dw RoomHeader_WarehouseZeela                                         ;83923A;
    db $00,$04,$01,$06,$00,$00                                           ;83923C;
    dw $8000,$0000                                                       ;839242;

%anchor($839246)
Door_WarehouseEntrance_2:
    dw RoomHeader_BusinessCenter                                         ;839246;
    db $C0,$02,$00,$00,$00,$00                                           ;839248;
    dw $0000,$0000                                                       ;83924E;

%anchor($839252)
Door_VariaSuit_0:
    dw RoomHeader_Kraid                                                  ;839252;
    db $00,$05,$1E,$16,$01,$01                                           ;839254;
    dw $8000,$0000                                                       ;83925A;

%anchor($83925E)
Door_WarehouseSave_0:
    dw RoomHeader_WarehouseKihunter                                      ;83925E;
    db $00,$05,$3E,$06,$03,$00                                           ;839260;
    dw $8000                                                             ;839266;
    dw DoorASM_Scroll_2_3_Blue                                           ;839268;

%anchor($83926A)
Door_RedBrinstarSave_0:
    dw RoomHeader_Caterpillar                                            ;83926A;
    db $00,$05,$0E,$46,$00,$04                                           ;83926C;
    dw $8000,$0000                                                       ;839272;

%anchor($839276)
Door_IceBeamAcid_0:
    dw RoomHeader_IceBeamGate                                            ;839276;
    db $00,$04,$31,$26,$03,$02                                           ;839278;
    dw $8000,$0000                                                       ;83927E;

%anchor($839282)
Door_IceBeamAcid_1:
    dw RoomHeader_IceBeamSnake                                           ;839282;
    db $00,$05,$0E,$26,$00,$02                                           ;839284;
    dw $8000,$0000                                                       ;83928A;

%anchor($83928E)
Door_Cathedral_0:
    dw RoomHeader_CathedralEntrance                                      ;83928E;
    db $00,$05,$2E,$06,$02,$00                                           ;839290;
    dw $8000,$0000                                                       ;839296;

%anchor($83929A)
Door_Cathedral_1:
    dw RoomHeader_RisingTide                                             ;83929A;
    db $00,$04,$01,$06,$00,$00                                           ;83929C;
    dw $8000,$0000                                                       ;8392A2;

%anchor($8392A6)
Door_CathedralEntrance_0:
    dw RoomHeader_BusinessCenter                                         ;8392A6;
    db $00,$05,$0E,$36,$00,$03                                           ;8392A8;
    dw $8000,$0000                                                       ;8392AE;

%anchor($8392B2)
Door_CathedralEntrance_1:
    dw RoomHeader_Cathedral                                              ;8392B2;
    db $00,$04,$01,$06,$00,$00                                           ;8392B4;
    dw $8000,$0000                                                       ;8392BA;

%anchor($8392BE)
Door_BusinessCenter_0:
    dw RoomHeader_IceBeamGate                                            ;8392BE;
    db $00,$05,$6E,$26,$06,$02                                           ;8392C0;
    dw $8000,$0000                                                       ;8392C6;

%anchor($8392CA)
Door_BusinessCenter_1:
    dw RoomHeader_CathedralEntrance                                      ;8392CA;
    db $00,$04,$01,$06,$00,$00                                           ;8392CC;
    dw $8000,$0000                                                       ;8392D2;

%anchor($8392D6)
Door_BusinessCenter_2:
    dw RoomHeader_HiJumpETank                                            ;8392D6;
    db $00,$05,$1E,$06,$01,$00                                           ;8392D8;
    dw $8000,$0000                                                       ;8392DE;

%anchor($8392E2)
Door_BusinessCenter_3:
    dw RoomHeader_CrocomireEscape                                        ;8392E2;
    db $00,$04,$01,$06,$00,$00                                           ;8392E4;
    dw $8000,$0000                                                       ;8392EA;

%anchor($8392EE)
Door_BusinessCenter_4:
    dw RoomHeader_WarehouseEntrance                                      ;8392EE;
    db $D0,$03,$00,$00,$00,$00                                           ;8392F0;
    dw $0000,$0000                                                       ;8392F6;

%anchor($8392FA)
Door_BusinessCenter_6:
    dw RoomHeader_FrogSave                                               ;8392FA;
    db $00,$04,$01,$06,$00,$00                                           ;8392FC;
    dw $8000,$0000                                                       ;839302;

%anchor($839306)
Door_BusinessCenter_7:
    dw RoomHeader_NorfairMap                                             ;839306;
    db $00,$05,$0E,$06,$00,$00                                           ;839308;
    dw $8000,$0000                                                       ;83930E;

%anchor($839312)
Door_IceBeamGate_0:
    dw RoomHeader_IceBeamTutorial                                        ;839312;
    db $00,$05,$1E,$06,$01,$00                                           ;839314;
    dw $8000,$0000                                                       ;83931A;

%anchor($83931E)
Door_IceBeamGate_1:
    dw RoomHeader_IceBeamAcid                                            ;83931E;
    db $00,$05,$1E,$06,$01,$00                                           ;839320;
    dw $8000,$0000                                                       ;839326;

%anchor($83932A)
Door_IceBeamGate_2:
    dw RoomHeader_BusinessCenter                                         ;83932A;
    db $00,$04,$01,$36,$00,$03                                           ;83932C;
    dw $8000,$0000                                                       ;839332;

%anchor($839336)
Door_IceBeamGate_3:
    dw RoomHeader_CrumbleShaft                                           ;839336;
    db $00,$05,$0E,$06,$00,$00                                           ;839338;
    dw $8000,$0000                                                       ;83933E;

%anchor($839342)
Door_IceBeamTutorial_0:
    dw RoomHeader_IceBeamSnake                                           ;839342;
    db $00,$05,$0E,$06,$00,$00                                           ;839344;
    dw $8000,$0000                                                       ;83934A;

%anchor($83934E)
Door_IceBeamTutorial_1:
    dw RoomHeader_IceBeamGate                                            ;83934E;
    db $00,$04,$31,$06,$03,$00                                           ;839350;
    dw $8000                                                             ;839356;
    dw DoorASM_Scroll_A_Green                                            ;839358;

%anchor($83935A)
Door_IceBeam_0:
    dw RoomHeader_IceBeamSnake                                           ;83935A;
    db $00,$05,$1E,$16,$01,$01                                           ;83935C;
    dw $8000                                                             ;839362;
    dw DoorASM_Scroll_2_Red_3_Blue                                       ;839364;

%anchor($839366)
Door_IceBeamSnake_0:
    dw RoomHeader_IceBeamAcid                                            ;839366;
    db $00,$04,$01,$06,$00,$00                                           ;839368;
    dw $8000,$0000                                                       ;83936E;

%anchor($839372)
Door_IceBeamSnake_1:
    dw RoomHeader_IceBeamTutorial                                        ;839372;
    db $00,$04,$01,$06,$00,$00                                           ;839374;
    dw $8000,$0000                                                       ;83937A;

%anchor($83937E)
Door_IceBeamSnake_2:
    dw RoomHeader_IceBeam                                                ;83937E;
    db $00,$04,$01,$06,$00,$00                                           ;839380;
    dw $8000,$0000                                                       ;839386;

%anchor($83938A)
Door_CrumbleShaft_0:
    dw RoomHeader_IceBeamGate                                            ;83938A;
    db $00,$04,$01,$36,$00,$03                                           ;83938C;
    dw $8000                                                             ;839392;
    dw DoorASM_Scroll_18_Blue                                            ;839394;

%anchor($839396)
Door_CrumbleShaft_1:
    dw RoomHeader_CrocomireSpeedway                                      ;839396;
    db $00,$04,$01,$06,$00,$00                                           ;839398;
    dw $8000,$0000                                                       ;83939E;

%anchor($8393A2)
Door_CrocomireSpeedway_0:
    dw RoomHeader_CrumbleShaft                                           ;8393A2;
    db $00,$05,$0E,$36,$00,$03                                           ;8393A4;
    dw $8000,$0000                                                       ;8393AA;

%anchor($8393AE)
Door_CrocomireSpeedway_1:
    dw RoomHeader_CrocomireEscape                                        ;8393AE;
    db $00,$05,$3E,$16,$03,$01                                           ;8393B0;
    dw $8000,$0000                                                       ;8393B6;

%anchor($8393BA)
Door_CrocomireSpeedway_2:
    dw RoomHeader_CrocomireSave                                          ;8393BA;
    db $00,$04,$01,$06,$00,$00                                           ;8393BC;
    dw $8000,$0000                                                       ;8393C2;

%anchor($8393C6)
Door_CrocomireSpeedway_3:
    dw RoomHeader_AcidSnakesTunnel                                       ;8393C6;
    db $00,$04,$01,$06,$00,$00                                           ;8393C8;
    dw $8000,$0000                                                       ;8393CE;

%anchor($8393D2)
Door_CrocomireSpeedway_4:
    dw RoomHeader_Crocomire                                              ;8393D2;
    db $00,$06,$36,$02,$03,$00                                           ;8393D4;
    dw $8000,$0000                                                       ;8393DA;

%anchor($8393DE)
Door_Crocomire_0:
    dw RoomHeader_PostCrocFarming                                        ;8393DE;
    db $00,$05,$1E,$06,$01,$00                                           ;8393E0;
    dw $8000,$0000                                                       ;8393E6;

%anchor($8393EA)
Door_Crocomire_1:
    dw RoomHeader_CrocomireSpeedway                                      ;8393EA;
    db $00,$07,$C6,$2D,$0C,$02                                           ;8393EC;
    dw $01C0,$0000                                                       ;8393F2;

%anchor($8393F6)
Door_HiJumpBoots_0:
    dw RoomHeader_HiJumpETank                                            ;8393F6;
    db $00,$04,$01,$16,$00,$01                                           ;8393F8;
    dw $8000                                                             ;8393FE;
    dw DoorASM_Scroll_0_2_Green                                          ;839400;

%anchor($839402)
Door_CrocomireEscape_0:
    dw RoomHeader_BusinessCenter                                         ;839402;
    db $00,$05,$0E,$66,$00,$06                                           ;839404;
    dw $8000,$0000                                                       ;83940A;

%anchor($83940E)
Door_CrocomireEscape_1:
    dw RoomHeader_CrocomireSpeedway                                      ;83940E;
    db $00,$04,$C1,$06,$0C,$00                                           ;839410;
    dw $8000,$0000                                                       ;839416;

%anchor($83941A)
Door_HiJumpETank_0:
    dw RoomHeader_BusinessCenter                                         ;83941A;
    db $00,$04,$01,$56,$00,$05                                           ;83941C;
    dw $8000,$0000                                                       ;839422;

%anchor($839426)
Door_HiJumpETank_1:
    dw RoomHeader_HiJumpBoots                                            ;839426;
    db $00,$05,$0E,$06,$00,$00                                           ;839428;
    dw $8000,$0000                                                       ;83942E;

%anchor($839432)
Door_PostCrocFarming_0:
    dw RoomHeader_Crocomire                                              ;839432;
    db $00,$04,$01,$06,$00,$00                                           ;839434;
    dw $8000                                                             ;83943A;
    dw DoorASM_Scroll_0_1_Blue                                           ;83943C;

%anchor($83943E)
Door_PostCrocFarming_1:
    dw RoomHeader_PostCrocPowerBombs                                     ;83943E;
    db $00,$05,$0E,$06,$00,$00                                           ;839440;
    dw $8000,$0000                                                       ;839446;

%anchor($83944A)
Door_PostCrocFarming_2:
    dw RoomHeader_PostCrocShaft                                          ;83944A;
    db $00,$06,$06,$02,$00,$00                                           ;83944C;
    dw $8000,$0000                                                       ;839452;

%anchor($839456)
Door_PostCrocFarming_3:
    dw RoomHeader_PostCrocSave                                           ;839456;
    db $00,$04,$01,$06,$00,$00                                           ;839458;
    dw $8000,$0000                                                       ;83945E;

%anchor($839462)
Door_PostCrocSave_0:
    dw RoomHeader_PostCrocFarming                                        ;839462;
    db $00,$05,$1E,$16,$01,$01                                           ;839464;
    dw $8000,$0000                                                       ;83946A;

%anchor($83946E)
Door_PostCrocPowerBombs_0:
    dw RoomHeader_PostCrocFarming                                        ;83946E;
    db $00,$04,$01,$06,$00,$00                                           ;839470;
    dw $8000,$0000                                                       ;839476;

%anchor($83947A)
Door_PostCrocShaft_0:
    dw RoomHeader_PostCrocFarming                                        ;83947A;
    db $00,$07,$06,$1D,$00,$01                                           ;83947C;
    dw $01C0,$0000                                                       ;839482;

%anchor($839486)
Door_PostCrocShaft_1:
    dw RoomHeader_GrappleTutorial3                                       ;839486;
    db $00,$05,$2E,$06,$02,$00                                           ;839488;
    dw $8000,$0000                                                       ;83948E;

%anchor($839492)
Door_PostCrocShaft_2:
    dw RoomHeader_PostCrocMissile                                        ;839492;
    db $00,$04,$01,$06,$00,$00                                           ;839494;
    dw $8000,$0000                                                       ;83949A;

%anchor($83949E)
Door_PostCrocShaft_3:
    dw RoomHeader_PostCrocJump                                           ;83949E;
    db $00,$06,$66,$22,$06,$02                                           ;8394A0;
    dw $0140,$0000                                                       ;8394A6;

%anchor($8394AA)
Door_PostCrocMissile_0:
    dw RoomHeader_PostCrocShaft                                          ;8394AA;
    db $00,$05,$0E,$36,$00,$03                                           ;8394AC;
    dw $8000,$0000                                                       ;8394B2;

%anchor($8394B6)
Door_GrappleTutorial3_0:
    dw RoomHeader_GrappleTutorial2                                       ;8394B6;
    db $00,$05,$0E,$06,$00,$00                                           ;8394B8;
    dw $8000,$0000                                                       ;8394BE;

%anchor($8394C2)
Door_GrappleTutorial3_1:
    dw RoomHeader_PostCrocShaft                                          ;8394C2;
    db $00,$04,$01,$06,$00,$00                                           ;8394C4;
    dw $8000,$0000                                                       ;8394CA;

%anchor($8394CE)
Door_PostCrocJump_0:
    dw RoomHeader_PostCrocShaft                                          ;8394CE;
    db $00,$07,$06,$4D,$00,$04                                           ;8394D0;
    dw $01C0,$0000                                                       ;8394D6;

%anchor($8394DA)
Door_PostCrocJump_1:
    dw RoomHeader_GrappleBeam                                            ;8394DA;
    db $00,$05,$0E,$26,$00,$02                                           ;8394DC;
    dw $8000,$0000                                                       ;8394E2;

%anchor($8394E6)
Door_GrappleTutorial2_0:
    dw RoomHeader_GrappleTutorial1                                       ;8394E6;
    db $00,$05,$1E,$06,$01,$00                                           ;8394E8;
    dw $8000,$0000                                                       ;8394EE;

%anchor($8394F2)
Door_GrappleTutorial2_1:
    dw RoomHeader_GrappleTutorial3                                       ;8394F2;
    db $00,$04,$01,$06,$00,$00                                           ;8394F4;
    dw $8000,$0000                                                       ;8394FA;

%anchor($8394FE)
Door_GrappleTutorial1_0:
    dw RoomHeader_GrappleBeam                                            ;8394FE;
    db $00,$05,$0E,$06,$00,$00                                           ;839500;
    dw $8000,$0000                                                       ;839506;

%anchor($83950A)
Door_GrappleTutorial1_1:
    dw RoomHeader_GrappleTutorial2                                       ;83950A;
    db $00,$04,$01,$26,$00,$02                                           ;83950C;
    dw $8000,$0000                                                       ;839512;

%anchor($839516)
Door_GrappleBeam_0:
    dw RoomHeader_PostCrocJump                                           ;839516;
    db $00,$04,$01,$16,$00,$01                                           ;839518;
    dw $8000,$0000                                                       ;83951E;

%anchor($839522)
Door_GrappleBeam_1:
    dw RoomHeader_GrappleTutorial1                                       ;839522;
    db $00,$04,$01,$06,$00,$00                                           ;839524;
    dw $8000,$0000                                                       ;83952A;

%anchor($83952E)
Door_NorfairReserveTank:
    dw RoomHeader_GreenBubblesMissiles                                   ;83952E;
    db $00,$04,$01,$06,$00,$00                                           ;839530;
    dw $8000                                                             ;839536;
    dw DoorASM_Scroll_0_Blue_duplicate                                   ;839538;

%anchor($83953A)
Door_GreenBubblesMissiles_0:
    dw RoomHeader_BubbleMountain                                         ;83953A;
    db $00,$04,$01,$06,$00,$00                                           ;83953C;
    dw $8000,$0000                                                       ;839542;

%anchor($839546)
Door_GreenBubblesMissiles_1:
    dw RoomHeader_NorfairReserveTank                                     ;839546;
    db $00,$05,$1E,$06,$01,$00                                           ;839548;
    dw $8000,$0000                                                       ;83954E;

%anchor($839552)
Door_BubbleMountain_0:
    dw RoomHeader_GreenBubblesMissiles                                   ;839552;
    db $00,$05,$1E,$06,$01,$00                                           ;839554;
    dw $8000,$0000                                                       ;83955A;

%anchor($83955E)
Door_BubbleMountain_1:
    dw RoomHeader_RisingTide                                             ;83955E;
    db $00,$05,$4E,$06,$04,$00                                           ;839560;
    dw $8000,$0000                                                       ;839566;

%anchor($83956A)
Door_BubbleMountain_2:
    dw RoomHeader_UpperNorfairFarming                                    ;83956A;
    db $00,$05,$1E,$06,$01,$00                                           ;83956C;
    dw $8000,$0000                                                       ;839572;

%anchor($839576)
Door_BubbleMountain_3:
    dw RoomHeader_PurpleShaft                                            ;839576;
    db $00,$06,$06,$02,$00,$00                                           ;839578;
    dw $8000                                                             ;83957E;
    dw DoorASM_Scroll_0_Blue_1_Red_duplicate                             ;839580;

%anchor($839582)
Door_BubbleMountain_4:
    dw RoomHeader_SingleChamber                                          ;839582;
    db $00,$04,$01,$06,$00,$00                                           ;839584;
    dw $8000,$0000                                                       ;83958A;

%anchor($83958E)
Door_BubbleMountain_5:
    dw RoomHeader_BatCave                                                ;83958E;
    db $00,$04,$01,$16,$00,$01                                           ;839590;
    dw $8000,$0000                                                       ;839596;

%anchor($83959A)
Door_BubbleMountain_6:
    dw RoomHeader_BubbleMountainSave                                     ;83959A;
    db $00,$05,$0E,$06,$00,$00                                           ;83959C;
    dw $8000,$0000                                                       ;8395A2;

%anchor($8395A6)
Door_SpeedBoosterHall_0:
    dw RoomHeader_BatCave                                                ;8395A6;
    db $00,$05,$0E,$06,$00,$00                                           ;8395A8;
    dw $8000                                                             ;8395AE;
    dw DoorASM_Scroll_0_Blue_1_Red                                       ;8395B0;

%anchor($8395B2)
Door_SpeedBoosterHall_1:
    dw RoomHeader_SpeedBooster                                           ;8395B2;
    db $00,$04,$01,$06,$00,$00                                           ;8395B4;
    dw $8000,$0000                                                       ;8395BA;

%anchor($8395BE)
Door_SpeedBooster_0:
    dw RoomHeader_SpeedBoosterHall                                       ;8395BE;
    db $00,$05,$BE,$16,$0B,$01                                           ;8395C0;
    dw $8000,$0000                                                       ;8395C6;

%anchor($8395CA)
Door_SingleChamber_0:
    dw RoomHeader_BubbleMountain                                         ;8395CA;
    db $00,$05,$1E,$16,$01,$01                                           ;8395CC;
    dw $8000,$0000                                                       ;8395D2;

%anchor($8395D6)
Door_SingleChamber_1:
    dw RoomHeader_DoubleChamber                                          ;8395D6;
    db $00,$04,$01,$06,$00,$00                                           ;8395D8;
    dw $8000,$0000                                                       ;8395DE;

%anchor($8395E2)
Door_SingleChamber_2:
    dw RoomHeader_DoubleChamber                                          ;8395E2;
    db $00,$04,$01,$16,$00,$01                                           ;8395E4;
    dw $8000,$0000                                                       ;8395EA;

%anchor($8395EE)
Door_SingleChamber_3:
    dw RoomHeader_SpikyPlatformsTunnel                                   ;8395EE;
    db $00,$04,$01,$06,$00,$00                                           ;8395F0;
    dw $8000,$0000                                                       ;8395F6;

%anchor($8395FA)
Door_SingleChamber_4:
    dw RoomHeader_ThreeMusketeers                                        ;8395FA;
    db $00,$04,$11,$06,$01,$00                                           ;8395FC;
    dw $8000,$0000                                                       ;839602;

%anchor($839606)
Door_DoubleChamber_0:
    dw RoomHeader_SingleChamber                                          ;839606;
    db $00,$05,$0E,$16,$00,$01                                           ;839608;
    dw $8000,$0000                                                       ;83960E;

%anchor($839612)
Door_DoubleChamber_1:
    dw RoomHeader_SingleChamber                                          ;839612;
    db $00,$05,$0E,$26,$00,$02                                           ;839614;
    dw $8000,$0000                                                       ;83961A;

%anchor($83961E)
Door_DoubleChamber_2:
    dw RoomHeader_WaveBeam                                               ;83961E;
    db $00,$04,$01,$06,$00,$00                                           ;839620;
    dw $8000,$0000                                                       ;839626;

%anchor($83962A)
Door_WaveBeam_0:
    dw RoomHeader_DoubleChamber                                          ;83962A;
    db $00,$05,$3E,$06,$03,$00                                           ;83962C;
    dw $8000,$0000                                                       ;839632;

%anchor($839636)
Door_SpikyPlatformsTunnel_0:
    dw RoomHeader_SingleChamber                                          ;839636;
    db $00,$05,$0E,$36,$00,$03                                           ;839638;
    dw $8000,$0000                                                       ;83963E;

%anchor($839642)
Door_SpikyPlatformsTunnel_1:
    dw RoomHeader_Volcano                                                ;839642;
    db $00,$04,$21,$06,$02,$00                                           ;839644;
    dw $8000,$0000                                                       ;83964A;

%anchor($83964E)
Door_Volcano_0:
    dw RoomHeader_SpikyPlatformsTunnel                                   ;83964E;
    db $00,$05,$3E,$06,$03,$00                                           ;839650;
    dw $8000,$0000                                                       ;839656;

%anchor($83965A)
Door_Volcano_1:
    dw RoomHeader_KronicBoost                                            ;83965A;
    db $00,$05,$1E,$06,$01,$00                                           ;83965C;
    dw $8000,$0000                                                       ;839662;

%anchor($839666)
Door_KronicBoost_0:
    dw RoomHeader_MagdolliteTunnel                                       ;839666;
    db $00,$05,$2E,$06,$02,$00                                           ;839668;
    dw $8000,$0000                                                       ;83966E;

%anchor($839672)
Door_KronicBoost_1:
    dw RoomHeader_Volcano                                                ;839672;
    db $00,$04,$01,$26,$00,$02                                           ;839674;
    dw $8000                                                             ;83967A;
    dw DoorASM_Scroll_6_7_Blue_8_Red                                     ;83967C;

%anchor($83967E)
Door_KronicBoost_2:
    dw RoomHeader_LavaDive                                               ;83967E;
    db $00,$05,$3E,$06,$03,$00                                           ;839680;
    dw $8000,$0000                                                       ;839686;

%anchor($83968A)
Door_KronicBoost_3:
    dw RoomHeader_SpikyAcidSnakesTunnel                                  ;83968A;
    db $00,$05,$3E,$06,$03,$00                                           ;83968C;
    dw $8000,$0000                                                       ;839692;

%anchor($839696)
Door_MagdolliteTunnel_0:
    dw RoomHeader_PurpleShaft                                            ;839696;
    db $00,$05,$0E,$26,$00,$02                                           ;839698;
    dw $8000,$0000                                                       ;83969E;

%anchor($8396A2)
Door_MagdolliteTunnel_1:
    dw RoomHeader_KronicBoost                                            ;8396A2;
    db $00,$04,$11,$06,$01,$00                                           ;8396A4;
    dw $8000,$0000                                                       ;8396AA;

%anchor($8396AE)
Door_PurpleShaft_0:
    dw RoomHeader_BubbleMountain                                         ;8396AE;
    db $00,$07,$06,$3D,$00,$03                                           ;8396B0;
    dw $01C0,$0000                                                       ;8396B6;

%anchor($8396BA)
Door_PurpleShaft_1:
    dw RoomHeader_MagdolliteTunnel                                       ;8396BA;
    db $00,$04,$01,$06,$00,$00                                           ;8396BC;
    dw $8000,$0000                                                       ;8396C2;

%anchor($8396C6)
Door_PurpleShaft_2:
    dw RoomHeader_PurpleFarming                                          ;8396C6;
    db $00,$04,$01,$06,$00,$00                                           ;8396C8;
    dw $8000,$0000                                                       ;8396CE;

%anchor($8396D2)
Door_LavaDive_0:
    dw RoomHeader_KronicBoost                                            ;8396D2;
    db $00,$04,$11,$26,$01,$02                                           ;8396D4;
    dw $8000,$0000                                                       ;8396DA;

%anchor($8396DE)
Door_LavaDive_1:
    dw RoomHeader_LowerNorfairElev                                       ;8396DE;
    db $00,$05,$0E,$06,$00,$00                                           ;8396E0;
    dw $8000,$0000                                                       ;8396E6;

%anchor($8396EA)
Door_LowerNorfairElev_0:
    dw RoomHeader_LavaDive                                               ;8396EA;
    db $00,$04,$01,$06,$00,$00                                           ;8396EC;
    dw $8000,$0000                                                       ;8396F2;

%anchor($8396F6)
Door_LowerNorfairElev_1:
    dw RoomHeader_MainHall                                               ;8396F6;
    db $A0,$02,$00,$00,$04,$00                                           ;8396F8;
    dw $0000,$0000                                                       ;8396FE;

%anchor($839702)
Door_LowerNorfairElev_3:
    dw RoomHeader_LNElevSave                                             ;839702;
    db $00,$05,$0E,$06,$00,$00                                           ;839704;
    dw $8000,$0000                                                       ;83970A;

%anchor($83970E)
Door_UpperNorfairFarming_0:
    dw RoomHeader_FrogSpeedway                                           ;83970E;
    db $00,$05,$7E,$06,$07,$00                                           ;839710;
    dw $8000,$0000                                                       ;839716;

%anchor($83971A)
Door_UpperNorfairFarming_1:
    dw RoomHeader_BubbleMountain                                         ;83971A;
    db $00,$04,$01,$36,$00,$03                                           ;83971C;
    dw $8000,$0000                                                       ;839722;

%anchor($839726)
Door_UpperNorfairFarming_2:
    dw RoomHeader_RedPirateShaft                                         ;839726;
    db $00,$05,$0E,$06,$00,$00                                           ;839728;
    dw $8000,$0000                                                       ;83972E;

%anchor($839732)
Door_RisingTide_0:
    dw RoomHeader_Cathedral                                              ;839732;
    db $00,$05,$2E,$16,$02,$01                                           ;839734;
    dw $8000,$0000                                                       ;83973A;

%anchor($83973E)
Door_RisingTide_1:
    dw RoomHeader_BubbleMountain                                         ;83973E;
    db $00,$04,$01,$26,$00,$02                                           ;839740;
    dw $8000,$0000                                                       ;839746;

%anchor($83974A)
Door_AcidSnakesTunnel_0:
    dw RoomHeader_CrocomireSpeedway                                      ;83974A;
    db $00,$05,$CE,$26,$0C,$02                                           ;83974C;
    dw $8000,$0000                                                       ;839752;

%anchor($839756)
Door_AcidSnakesTunnel_1:
    dw RoomHeader_UpperNorfairRefill                                     ;839756;
    db $00,$04,$01,$06,$00,$00                                           ;839758;
    dw $8000,$0000                                                       ;83975E;

%anchor($839762)
Door_AcidSnakesTunnel_2:
    dw RoomHeader_RedPirateShaft                                         ;839762;
    db $00,$07,$06,$2D,$00,$02                                           ;839764;
    dw $0200,$0000                                                       ;83976A;

%anchor($83976E)
Door_SpikyAcidSnakesTunnel_0:
    dw RoomHeader_UpperNorfairRefill                                     ;83976E;
    db $00,$05,$0E,$06,$00,$00                                           ;839770;
    dw $8000,$0000                                                       ;839776;

%anchor($83977A)
Door_SpikyAcidSnakesTunnel_1:
    dw RoomHeader_KronicBoost                                            ;83977A;
    db $00,$04,$01,$16,$00,$01                                           ;83977C;
    dw $8000                                                             ;839782;
    dw DoorASM_Scroll_2_Blue_3_Red                                       ;839784;

%anchor($839786)
Door_UpperNorfairRefill_0:
    dw RoomHeader_AcidSnakesTunnel                                       ;839786;
    db $00,$05,$3E,$06,$03,$00                                           ;839788;
    dw $8000,$0000                                                       ;83978E;

%anchor($839792)
Door_UpperNorfairRefill_1:
    dw RoomHeader_SpikyAcidSnakesTunnel                                  ;839792;
    db $00,$04,$01,$06,$00,$00                                           ;839794;
    dw $8000,$0000                                                       ;83979A;

%anchor($83979E)
Door_PurpleFarming_0:
    dw RoomHeader_PurpleShaft                                            ;83979E;
    db $00,$05,$0E,$16,$00,$01                                           ;8397A0;
    dw $8000,$0000                                                       ;8397A6;

%anchor($8397AA)
Door_BatCave_0:
    dw RoomHeader_BubbleMountain                                         ;8397AA;
    db $00,$05,$1E,$06,$01,$00                                           ;8397AC;
    dw $8000,$0000                                                       ;8397B2;

%anchor($8397B6)
Door_BatCave_1:
    dw RoomHeader_SpeedBoosterHall                                       ;8397B6;
    db $00,$04,$01,$06,$00,$00                                           ;8397B8;
    dw $8000,$0000                                                       ;8397BE;

%anchor($8397C2)
Door_NorfairMap_0:
    dw RoomHeader_BusinessCenter                                         ;8397C2;
    db $00,$04,$01,$46,$00,$04                                           ;8397C4;
    dw $8000,$0000                                                       ;8397CA;

%anchor($8397CE)
Door_BubbleMountainSave_0:
    dw RoomHeader_BubbleMountain                                         ;8397CE;
    db $00,$04,$01,$16,$00,$01                                           ;8397D0;
    dw $8000,$0000                                                       ;8397D6;

%anchor($8397DA)
Door_FrogSpeedway_0:
    dw RoomHeader_FrogSave                                               ;8397DA;
    db $00,$05,$0E,$06,$00,$00                                           ;8397DC;
    dw $8000,$0000                                                       ;8397E2;

%anchor($8397E6)
Door_FrogSpeedway_1:
    dw RoomHeader_UpperNorfairFarming                                    ;8397E6;
    db $00,$04,$01,$06,$00,$00                                           ;8397E8;
    dw $8000,$0000                                                       ;8397EE;

%anchor($8397F2)
Door_RedPirateShaft_0:
    dw RoomHeader_UpperNorfairFarming                                    ;8397F2;
    db $00,$04,$01,$16,$00,$01                                           ;8397F4;
    dw $8000,$0000                                                       ;8397FA;

%anchor($8397FE)
Door_RedPirateShaft_1:
    dw RoomHeader_AcidSnakesTunnel                                       ;8397FE;
    db $00,$06,$36,$02,$03,$00                                           ;839800;
    dw $0140,$0000                                                       ;839806;

%anchor($83980A)
Door_FrogSave_0:
    dw RoomHeader_FrogSpeedway                                           ;83980A;
    db $00,$04,$01,$06,$00,$00                                           ;83980C;
    dw $8000,$0000                                                       ;839812;

%anchor($839816)
Door_FrogSave_1:
    dw RoomHeader_BusinessCenter                                         ;839816;
    db $00,$05,$0E,$56,$00,$05                                           ;839818;
    dw $8000,$0000                                                       ;83981E;

%anchor($839822)
Door_CrocomireSave_0:
    dw RoomHeader_CrocomireSpeedway                                      ;839822;
    db $00,$05,$AE,$16,$0C,$01                                           ;839824;
    dw $8000,$0000                                                       ;83982A;

%anchor($83982E)
Door_LNElevSave_0:
    dw RoomHeader_LowerNorfairElev                                       ;83982E;
    db $00,$04,$01,$06,$00,$00                                           ;839830;
    dw $8000,$0000                                                       ;839836;

%anchor($83983A)
Door_AcidStatue_0:
    dw RoomHeader_GoldenTorizo                                           ;83983A;
    db $00,$04,$01,$06,$00,$00                                           ;83983C;
    dw $8000                                                             ;839842;
    dw DoorASM_Scroll_0_Blue_1_2_3_Red                                   ;839844;

%anchor($839846)
Door_AcidStatue_1:
    dw RoomHeader_MainHall                                               ;839846;
    db $00,$04,$01,$26,$00,$02                                           ;839848;
    dw $8000,$0000                                                       ;83984E;

%anchor($839852)
Door_MainHall_0:
    dw RoomHeader_AcidStatue                                             ;839852;
    db $00,$05,$1E,$06,$01,$00                                           ;839854;
    dw $8000,$0000                                                       ;83985A;

%anchor($83985E)
Door_MainHall_1:
    dw RoomHeader_FastPillarsSetup                                       ;83985E;
    db $00,$04,$01,$16,$00,$01                                           ;839860;
    dw $8000,$0000                                                       ;839866;

%anchor($83986A)
Door_MainHall_2:
    dw RoomHeader_LowerNorfairElev                                       ;83986A;
    db $B0,$03,$00,$00,$00,$00                                           ;83986C;
    dw $0000,$0000                                                       ;839872;

%anchor($839876)
Door_GoldenTorizo_0:
    dw RoomHeader_AcidStatue                                             ;839876;
    db $00,$05,$2E,$26,$02,$02                                           ;839878;
    dw $8000                                                             ;83987E;
    dw DoorASM_Scroll_3_4_Red_6_7_8_Blue                                 ;839880;

%anchor($839882)
Door_GoldenTorizo_1:
    dw RoomHeader_ScrewAttack                                            ;839882;
    db $00,$04,$01,$26,$00,$02                                           ;839884;
    dw $8000,$0000                                                       ;83988A;

%anchor($83988E)
Door_FastRipper_0:
    dw RoomHeader_ScrewAttack                                            ;83988E;
    db $00,$05,$0E,$06,$00,$00                                           ;839890;
    dw $8000,$0000                                                       ;839896;

%anchor($83989A)
Door_FastRipper_1:
    dw RoomHeader_FastPillarsSetup                                       ;83989A;
    db $00,$04,$01,$26,$00,$02                                           ;83989C;
    dw $8000                                                             ;8398A2;
    dw DoorASM_Scroll_1_Red_2_Blue                                       ;8398A4;

%anchor($8398A6)
Door_GTEnergyRefill_0:
    dw RoomHeader_ScrewAttack                                            ;8398A6;
    db $00,$05,$0E,$16,$00,$01                                           ;8398A8;
    dw $8000,$0000                                                       ;8398AE;

%anchor($8398B2)
Door_Ridley_0:
    dw RoomHeader_RidleyETank                                            ;8398B2;
    db $00,$05,$0E,$06,$00,$00                                           ;8398B4;
    dw $8000,$0000                                                       ;8398BA;

%anchor($8398BE)
Door_Ridley_1:
    dw RoomHeader_LNFarming                                              ;8398BE;
    db $00,$04,$01,$06,$00,$00                                           ;8398C0;
    dw $8000,$0000                                                       ;8398C6;

%anchor($8398CA)
Door_LNFarming_0:
    dw RoomHeader_Ridley                                                 ;8398CA;
    db $00,$05,$0E,$06,$00,$00                                           ;8398CC;
    dw $8000,$0000                                                       ;8398D2;

%anchor($8398D6)
Door_LNFarming_1:
    dw RoomHeader_Plowerhouse                                            ;8398D6;
    db $00,$04,$01,$06,$00,$00                                           ;8398D8;
    dw $8000,$0000                                                       ;8398DE;

%anchor($8398E2)
Door_FastPillarsSetup_0:
    dw RoomHeader_MainHall                                               ;8398E2;
    db $00,$05,$7E,$26,$07,$02                                           ;8398E4;
    dw $8000,$0000                                                       ;8398EA;

%anchor($8398EE)
Door_FastPillarsSetup_1:
    dw RoomHeader_MickeyMouse                                            ;8398EE;
    db $00,$04,$01,$36,$00,$03                                           ;8398F0;
    dw $8000,$0000                                                       ;8398F6;

%anchor($8398FA)
Door_FastPillarsSetup_2:
    dw RoomHeader_MainHall                                               ;8398FA;
    db $00,$05,$7E,$26,$07,$02                                           ;8398FC;
    dw $8000,$0000                                                       ;839902;

%anchor($839906)
Door_FastPillarsSetup_3:
    dw RoomHeader_FastRipper                                             ;839906;
    db $00,$05,$3E,$06,$03,$00                                           ;839908;
    dw $8000,$0000                                                       ;83990E;

%anchor($839912)
Door_FastPillarsSetup_4:
    dw RoomHeader_Pillar                                                 ;839912;
    db $00,$04,$01,$06,$00,$00                                           ;839914;
    dw $8000,$0000                                                       ;83991A;

if !FEATURE_KEEP_UNREFERENCED
%anchor($83991E)
UNUSED_Door_83991E:
    dw RoomHeader_FastPillarsSetup                                       ;83991E;
    db $00,$05,$0E,$06,$00,$00                                           ;839920;
    dw $8000,$0000                                                       ;839926;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($83992A)
Door_MickeyMouse_0:
    dw RoomHeader_FastPillarsSetup                                       ;83992A;
    db $00,$05,$0E,$06,$00,$00                                           ;83992C;
    dw $8000,$0000                                                       ;839932;

%anchor($839936)
Door_MickeyMouse_1:
    dw RoomHeader_WorstRoomInTheGame                                     ;839936;
    db $00,$04,$01,$06,$00,$00                                           ;839938;
    dw $8000                                                             ;83993E;
    dw DoorASM_Scroll_0_Green_duplicate                                  ;839940;

%anchor($839942)
Door_Pillar_0:
    dw RoomHeader_FastPillarsSetup                                       ;839942;
    db $00,$05,$0E,$26,$00,$02                                           ;839944;
    dw $8000                                                             ;83994A;
    dw DoorASM_Scroll_1_Red_2_Blue                                       ;83994C;

%anchor($83994E)
Door_Pillar_1:
    dw RoomHeader_WorstRoomInTheGame                                     ;83994E;
    db $00,$04,$01,$56,$00,$05                                           ;839950;
    dw $8000,$0000                                                       ;839956;

%anchor($83995A)
Door_Plowerhouse_0:
    dw RoomHeader_LNFarming                                              ;83995A;
    db $00,$05,$2E,$06,$02,$00                                           ;83995C;
    dw $8000,$0000                                                       ;839962;

%anchor($839966)
Door_Plowerhouse_1:
    dw RoomHeader_MetalPirates                                           ;839966;
    db $00,$04,$01,$06,$00,$00                                           ;839968;
    dw $8000,$0000                                                       ;83996E;

%anchor($839972)
Door_WorstRoomInTheGame_0:
    dw RoomHeader_MickeyMouse                                            ;839972;
    db $00,$05,$3E,$06,$03,$00                                           ;839974;
    dw $8000                                                             ;83997A;
    dw DoorASM_Scroll_E_Red                                              ;83997C;

%anchor($83997E)
Door_WorstRoomInTheGame_1:
    dw RoomHeader_Amphitheatre                                           ;83997E;
    db $00,$04,$01,$16,$00,$01                                           ;839980;
    dw $8000,$0000                                                       ;839986;

%anchor($83998A)
Door_WorstRoomInTheGame_2:
    dw RoomHeader_Pillar                                                 ;83998A;
    db $00,$05,$3E,$06,$03,$00                                           ;83998C;
    dw $8000,$0000                                                       ;839992;

%anchor($839996)
Door_Amphitheatre_0:
    dw RoomHeader_WorstRoomInTheGame                                     ;839996;
    db $00,$05,$0E,$16,$00,$01                                           ;839998;
    dw $8000,$0000                                                       ;83999E;

%anchor($8399A2)
Door_Amphitheatre_1:
    dw RoomHeader_RedKihunterShaft                                       ;8399A2;
    db $00,$04,$01,$06,$00,$00                                           ;8399A4;
    dw $8000                                                             ;8399AA;
    dw DoorASM_Scroll_0_Blue_3_Red                                       ;8399AC;

%anchor($8399AE)
Door_LNSpringBallMaze_0:
    dw RoomHeader_ThreeMusketeers                                        ;8399AE;
    db $00,$05,$3E,$26,$03,$02                                           ;8399B0;
    dw $8000,$0000                                                       ;8399B6;

%anchor($8399BA)
Door_LNSpringBallMaze_1:
    dw RoomHeader_LNFireflea                                             ;8399BA;
    db $00,$04,$01,$06,$00,$00                                           ;8399BC;
    dw $8000                                                             ;8399C2;
    dw DoorASM_Scroll_0_1_Blue_4_Red                                     ;8399C4;

%anchor($8399C6)
Door_LNSpringBallMaze_2:
    dw RoomHeader_LNEscapePowerBombs                                     ;8399C6;
    db $00,$06,$06,$02,$00,$00                                           ;8399C8;
    dw $8000,$0000                                                       ;8399CE;

%anchor($8399D2)
Door_LNEscapePowerBombs_0:
    dw RoomHeader_LNFireflea                                             ;8399D2;
    db $00,$05,$1E,$06,$01,$00                                           ;8399D4;
    dw $8000                                                             ;8399DA;
    dw DoorASM_Scroll_1_Blue_4_Red                                       ;8399DC;

%anchor($8399DE)
Door_LNEscapePowerBombs_1:
    dw RoomHeader_LNSpringBallMaze                                       ;8399DE;
    db $00,$07,$46,$0D,$04,$00                                           ;8399E0;
    dw $01C0                                                             ;8399E6;
    dw DoorASM_Scroll_1_2_3_Blue_4_Green_6_Red                           ;8399E8;

%anchor($8399EA)
Door_RedKihunterShaft_0:
    dw RoomHeader_Wasteland                                              ;8399EA;
    db $00,$06,$56,$02,$05,$00                                           ;8399EC;
    dw $8000,$0000                                                       ;8399F2;

%anchor($8399F6)
Door_RedKihunterShaft_1:
    dw RoomHeader_Amphitheatre                                           ;8399F6;
    db $00,$05,$3E,$06,$03,$00                                           ;8399F8;
    dw $8000,$0000                                                       ;8399FE;

%anchor($839A02)
Door_RedKihunterShaft_2:
    dw RoomHeader_LNFireflea                                             ;839A02;
    db $00,$04,$11,$36,$01,$03                                           ;839A04;
    dw $8000,$0000                                                       ;839A0A;

%anchor($839A0E)
Door_RedKihunterShaft_3:
    dw RoomHeader_LNSave                                                 ;839A0E;
    db $00,$04,$01,$06,$00,$00                                           ;839A10;
    dw $8000,$0000                                                       ;839A16;

%anchor($839A1A)
Door_Wasteland_0:
    dw RoomHeader_MetalPirates                                           ;839A1A;
    db $00,$05,$2E,$06,$02,$00                                           ;839A1C;
    dw $8000,$0000                                                       ;839A22;

%anchor($839A26)
Door_Wasteland_1:
    dw RoomHeader_RedKihunterShaft                                       ;839A26;
    db $00,$07,$26,$4D,$02,$04                                           ;839A28;
    dw $0200,$0000                                                       ;839A2E;

%anchor($839A32)
Door_MetalPirates_0:
    dw RoomHeader_Plowerhouse                                            ;839A32;
    db $00,$05,$2E,$06,$02,$00                                           ;839A34;
    dw $8000,$0000                                                       ;839A3A;

%anchor($839A3E)
Door_MetalPirates_1:
    dw RoomHeader_Wasteland                                              ;839A3E;
    db $00,$04,$11,$26,$01,$02                                           ;839A40;
    dw $8000                                                             ;839A46;
    dw DoorASM_Scroll_7_Green                                            ;839A48;

%anchor($839A4A)
Door_ThreeMusketeers_0:
    dw RoomHeader_SingleChamber                                          ;839A4A;
    db $00,$05,$5E,$06,$05,$00                                           ;839A4C;
    dw $8000,$0000                                                       ;839A52;

%anchor($839A56)
Door_ThreeMusketeers_1:
    dw RoomHeader_LNSpringBallMaze                                       ;839A56;
    db $00,$04,$01,$06,$00,$00                                           ;839A58;
    dw $8000,$0000                                                       ;839A5E;

%anchor($839A62)
Door_RidleyETank_0:
    dw RoomHeader_Ridley                                                 ;839A62;
    db $00,$04,$01,$16,$00,$01                                           ;839A64;
    dw $8000,$0000                                                       ;839A6A;

%anchor($839A6E)
Door_ScrewAttack_0:
    dw RoomHeader_FastRipper                                             ;839A6E;
    db $00,$04,$01,$06,$00,$00                                           ;839A70;
    dw $8000,$0000                                                       ;839A76;

%anchor($839A7A)
Door_ScrewAttack_1:
    dw RoomHeader_GTEnergyRefill                                         ;839A7A;
    db $00,$04,$01,$06,$00,$00                                           ;839A7C;
    dw $8000,$0000                                                       ;839A82;

%anchor($839A86)
Door_ScrewAttack_2:
    dw RoomHeader_GoldenTorizo                                           ;839A86;
    db $00,$05,$1E,$16,$01,$01                                           ;839A88;
    dw $8000,$0000                                                       ;839A8E;

%anchor($839A92)
Door_LNFireflea_0:
    dw RoomHeader_LNSpringBallMaze                                       ;839A92;
    db $00,$05,$1E,$16,$01,$01                                           ;839A94;
    dw $8000,$0000                                                       ;839A9A;

%anchor($839A9E)
Door_LNFireflea_1:
    dw RoomHeader_LNEscapePowerBombs                                     ;839A9E;
    db $00,$04,$01,$06,$00,$00                                           ;839AA0;
    dw $8000,$0000                                                       ;839AA6;

%anchor($839AAA)
Door_LNFireflea_2:
    dw RoomHeader_RedKihunterShaft                                       ;839AAA;
    db $00,$05,$0E,$06,$00,$00                                           ;839AAC;
    dw $8000                                                             ;839AB2;
    dw DoorASM_Scroll_0_Blue_3_Red_duplicate                             ;839AB4;

%anchor($839AB6)
Door_LNSave_0:
    dw RoomHeader_RedKihunterShaft                                       ;839AB6;
    db $00,$05,$0E,$36,$00,$03                                           ;839AB8;
    dw $8000,$0000                                                       ;839ABE;


; FX format
;        _____________________________ 0: Door pointer
;       |      _______________________ 2: Base Y position
;       |     |      _________________ 4: Target Y position
;       |     |     |      ___________ 6: Y velocity
;       |     |     |     |
;       dddd, bbbb, tttt, vvvv
;        _____________________________ 8: Timer
;       |    _________________________ 9: Type (foreground layer 3)
;       |   |    _____________________ Ah: Default layer blending configuration (FX A)
;       |   |   |    _________________ Bh: FX layer 3 layer blending configuration (FX B)
;       |   |   |   |    _____________ Ch: FX liquid options (FX C)
;       |   |   |   |   |    _________ Dh: Palette FX bitset
;       |   |   |   |   |   |    _____ Eh: Animated tiles bitset
;       |   |   |   |   |   |   |    _ Fh: Palette blend
;       |   |   |   |   |   |   |   |
;       tt, ff, AA, BB, CC, pp, aa, bb
%anchor($839AC2)
FXHeader_BowlingAlley_State1:
    dw $0000,$01B0,$FFFF,$0000                                           ;839AC2;
    db $00,$00,$02,$02,$00,$01,$0B,$00                                   ;839ACA;

%anchor($839AD2)
FXHeader_WreckedShipEntrance_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839AD2;
    db $00,$00,$02,$02,$00,$01,$00,$00                                   ;839ADA;

%anchor($839AE2)
FXHeader_Attic_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839AE2;
    db $00,$00,$02,$02,$00,$01,$10,$00                                   ;839AEA;

%anchor($839AF2)
FXHeader_AssemblyLine_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839AF2;
    db $00,$00,$02,$02,$00,$01,$18,$00                                   ;839AFA;

%anchor($839B02)
FXHeader_WreckedShipMainShaft_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839B02;
    db $00,$00,$02,$02,$00,$01,$06,$00                                   ;839B0A;

%anchor($839B12)
FXHeader_SpikyDeath_State1:
    dw $0000,$00A8,$FFFF,$0000                                           ;839B12;
    db $00,$06,$02,$18,$03,$01,$0A,$48                                   ;839B1A;

%anchor($839B22)
FXHeader_ElectricDeath_State1:
    dw $0000,$02A8,$FFFF,$0000                                           ;839B22;
    db $00,$06,$02,$18,$03,$01,$02,$48                                   ;839B2A;

%anchor($839B32)
FXHeader_WreckedShipETank_State1:
    dw $0000,$00B0,$FFFF,$0000                                           ;839B32;
    db $00,$06,$02,$18,$83,$01,$06,$48                                   ;839B3A;

%anchor($839B42)
FXHeader_Basement_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839B42;
    db $00,$00,$02,$02,$00,$01,$00,$00                                   ;839B4A;

%anchor($839B52)
FXHeader_WreckedShipMap_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839B52;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839B5A;

%anchor($839B62)
FXHeader_Phantoon_State1:
    dw $FFFF                                                             ;839B62;

%anchor($839B64)
FXHeader_SpongeBath_State1:
    dw $0000,$00A8,$FFFF,$0000                                           ;839B64;
    db $00,$06,$02,$18,$03,$00,$00,$48                                   ;839B6C;

%anchor($839B74)
FXHeader_WSWestSuper_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839B74;
    db $00,$00,$02,$02,$00,$01,$00,$00                                   ;839B7C;

%anchor($839B84)
FXHeader_WSEastSuper_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839B84;
    db $00,$00,$02,$02,$00,$01,$09,$00                                   ;839B8C;

%anchor($839B94)
FXHeader_GravitySuit_State1_WreckedShipSave_State1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839B94;
    db $00,$00,$02,$02,$00,$01,$00,$00                                   ;839B9C;

%anchor($839BA4)
FXHeader_BowlingAlley_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839BA4;
    db $00,$00,$28,$02,$00,$00,$00,$00                                   ;839BAC;

%anchor($839BB4)
FXHeader_WreckedShipEntrance_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839BB4;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839BBC;

%anchor($839BC4)
FXHeader_Attic_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839BC4;
    db $00,$00,$08,$02,$00,$00,$00,$00                                   ;839BCC;

%anchor($839BD4)
FXHeader_AssemblyLine_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839BD4;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839BDC;

%anchor($839BE4)
FXHeader_WreckedShipMainShaft_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839BE4;
    db $00,$00,$08,$02,$00,$00,$00,$00                                   ;839BEC;

%anchor($839BF4)
FXHeader_SpikyDeath_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839BF4;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839BFC;

%anchor($839C04)
FXHeader_ElectricDeath_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839C04;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839C0C;

%anchor($839C14)
FXHeader_WreckedShipETank_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839C14;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839C1C;

%anchor($839C24)
FXHeader_Basement_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839C24;
    db $00,$00,$28,$02,$00,$00,$00,$00                                   ;839C2C;

%anchor($839C34)
FXHeader_WreckedShipMap_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839C34;
    db $00,$00,$08,$02,$00,$00,$00,$00                                   ;839C3C;

%anchor($839C44)
FXHeader_Phantoon_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839C44;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839C4C;

%anchor($839C54)
FXHeader_SpongeBath_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839C54;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839C5C;

%anchor($839C64)
FXHeader_WSWestSuper_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839C64;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839C6C;

%anchor($839C74)
FXHeader_VariousRooms_State0_839C74:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839C74;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;839C7C;

%anchor($839C84)
FXHeader_GlassTunnelSave:
    dw $0000,$0010,$FFFF,$0000                                           ;839C84;
    db $00,$06,$02,$14,$82,$00,$00,$E2                                   ;839C8C;

%anchor($839C94)
FXHeader_GlassTunnel_State0_1:
    dw $0000,$0010,$FFFF,$0000                                           ;839C94;
    db $00,$06,$02,$14,$84,$00,$00,$E2                                   ;839C9C;

%anchor($839CA4)
FXHeader_WestTunnel:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839CA4;
    db $00,$00,$2A,$02,$00,$00,$00,$00                                   ;839CAC;

%anchor($839CB4)
FXHeader_EastTunnel:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839CB4;
    db $00,$00,$2A,$02,$00,$00,$00,$00                                   ;839CBC;

%anchor($839CC4)
FXHeader_MainStreet:
    dw $0000,$0010,$FFFF,$0000                                           ;839CC4;
    db $00,$06,$02,$14,$83,$00,$00,$E2                                   ;839CCC;

%anchor($839CD4)
FXHeader_FishTank:
    dw $0000,$0010,$FFFF,$0000                                           ;839CD4;
    db $00,$06,$02,$14,$83,$00,$00,$E2                                   ;839CDC;

%anchor($839CE4)
FXHeader_MamaTurtle:
    dw $0000,$02BA,$FFFF,$0000                                           ;839CE4;
    db $00,$06,$02,$14,$80,$00,$00,$E2                                   ;839CEC;

%anchor($839CF4)
FXHeader_CrabTunnel:
    dw $0000,$0010,$FFFF,$0000                                           ;839CF4;
    db $00,$06,$02,$14,$80,$00,$00,$E2                                   ;839CFC;

%anchor($839D04)
FXHeader_MtEverest:
    dw $0000,$0010,$FFFF,$0000                                           ;839D04;
    db $00,$06,$02,$14,$83,$00,$00,$E2                                   ;839D0C;

%anchor($839D14)
FXHeader_RedFish:
    dw $0000,$0180,$FFFF,$0000                                           ;839D14;
    db $00,$06,$02,$14,$81,$00,$00,$E2                                   ;839D1C;

%anchor($839D24)
FXHeader_WateringHole:
    dw $0000,$01B5,$FFFF,$0000                                           ;839D24;
    db $00,$06,$02,$14,$83,$00,$00,$42                                   ;839D2C;

%anchor($839D34)
FXHeader_NWestMaridiaBug:
    dw $0000,$01B5,$FFFF,$0000                                           ;839D34;
    db $00,$06,$02,$14,$83,$00,$00,$42                                   ;839D3C;

%anchor($839D44)
FXHeader_CrabShaft:
    dw $0000,$0010,$FFFF,$0000                                           ;839D44;
    db $00,$06,$02,$14,$81,$00,$00,$E2                                   ;839D4C;

%anchor($839D54)
FXHeader_PseudoPlasmaSpark:
    dw $0000,$01B5,$FFFF,$0000                                           ;839D54;
    db $00,$06,$02,$14,$83,$00,$00,$42                                   ;839D5C;

%anchor($839D64)
FXHeader_CrabHole:
    dw $0000,$0010,$FFFF,$0000                                           ;839D64;
    db $00,$06,$02,$14,$80,$00,$00,$E2                                   ;839D6C;

%anchor($839D74)
FXHeader_WestSandHallTunnel:
    dw $0000,$0010,$FFFF,$0000                                           ;839D74;
    db $00,$06,$02,$14,$80,$00,$00,$E2                                   ;839D7C;

%anchor($839D84)
FXHeader_PlasmaTutorial:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839D84;
    db $00,$00,$28,$02,$00,$00,$00,$42                                   ;839D8C;

%anchor($839D94)
FXHeader_Plasma:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839D94;
    db $00,$00,$2A,$02,$00,$00,$00,$42                                   ;839D9C;

%anchor($839DA4)
FXHeader_ThreadTheNeedle:
    dw $0000,$00B5,$FFFF,$0000                                           ;839DA4;
    db $00,$06,$02,$14,$83,$00,$00,$42                                   ;839DAC;

%anchor($839DB4)
FXHeader_MaridiaElev:
    dw $0000,$05B5,$FFFF,$0000                                           ;839DB4;
    db $00,$06,$02,$14,$83,$00,$02,$42                                   ;839DBC;

%anchor($839DC4)
FXHeader_PlasmaSpark:
    dw $0000,$03B4,$FFFF,$0000                                           ;839DC4;
    db $00,$06,$02,$14,$83,$00,$00,$42                                   ;839DCC;

%anchor($839DD4)
FXHeader_Kassiuz:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839DD4;
    db $00,$00,$28,$02,$00,$00,$00,$42                                   ;839DDC;

%anchor($839DE4)
FXHeader_MaridiaMap:
    dw $0000,$0010,$FFFF,$0000                                           ;839DE4;
    db $00,$06,$02,$14,$82,$00,$00,$E2                                   ;839DEC;

%anchor($839DF4)
FXHeader_ForgottenHighwaySave:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839DF4;
    db $00,$00,$02,$02,$00,$00,$00,$42                                   ;839DFC;

%anchor($839E04)
FXHeader_Toilet:
    dw Door_PlasmaSpark_1                                                ;839E04;
    dw $0080,$FFFF,$0000                                                 ;839E06;
    db $00,$06,$02,$14,$85,$00,$00,$E8                                   ;839E0C;
    dw Door_Oasis_2                                                      ;839E14;
    dw $0080,$FFFF,$0000                                                 ;839E16;
    db $00,$06,$02,$14,$85,$00,$00,$E8                                   ;839E1C;
    dw $0000,$0080,$FFFF,$0000                                           ;839E24;
    db $00,$06,$02,$14,$81,$00,$00,$E8                                   ;839E2C;

%anchor($839E34)
FXHeader_BugSandHole:
    dw $0000,$00B5,$FFFF,$0000                                           ;839E34;
    db $00,$06,$02,$14,$83,$01,$00,$42                                   ;839E3C;

%anchor($839E44)
FXHeader_WestSandHall:
    dw $0000,$0010,$FFFF,$0000                                           ;839E44;
    db $00,$06,$02,$14,$82,$01,$0C,$E8                                   ;839E4C;

%anchor($839E54)
FXHeader_Oasis:
    dw $0000,$0010,$FFFF,$0000                                           ;839E54;
    db $00,$06,$02,$14,$82,$01,$00,$E8                                   ;839E5C;

%anchor($839E64)
FXHeader_EastSandHall:
    dw $0000,$0010,$FFFF,$0000                                           ;839E64;
    db $00,$06,$02,$14,$82,$01,$0C,$E8                                   ;839E6C;

%anchor($839E74)
FXHeader_WestSandHole:
    dw $0000,$00D6,$FFFF,$0000                                           ;839E74;
    db $00,$06,$02,$14,$03,$01,$0C,$EE                                   ;839E7C;

%anchor($839E84)
FXHeader_EastSandHole:
    dw $0000,$00D6,$FFFF,$0000                                           ;839E84;
    db $00,$06,$02,$14,$03,$01,$0C,$EE                                   ;839E8C;

%anchor($839E94)
FXHeader_EastAqueductQuicksand_WestAqueductQuicksand:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839E94;
    db $00,$00,$2A,$02,$00,$02,$00,$00                                   ;839E9C;

%anchor($839EA4)
FXHeader_Aqueduct:
    dw $0000,$0010,$FFFF,$0000                                           ;839EA4;
    db $00,$06,$02,$14,$83,$01,$00,$EE                                   ;839EAC;

%anchor($839EB4)
FXHeader_Butterfly:
    dw $0000,$0049,$FFFF,$0000                                           ;839EB4;
    db $00,$06,$02,$14,$83,$01,$0C,$42                                   ;839EBC;

%anchor($839EC4)
FXHeader_BotwoonHallway:
    dw $0000,$0010,$FFFF,$0000                                           ;839EC4;
    db $00,$06,$02,$14,$83,$00,$00,$EE                                   ;839ECC;

%anchor($839ED4)
FXHeader_Pants:
    dw $0000,$02B0,$FFFF,$0000                                           ;839ED4;
    db $00,$06,$02,$14,$82,$01,$00,$E8                                   ;839EDC;

%anchor($839EE4)
FXHeader_EastPants:
    dw $0000,$00B0,$FFFF,$0000                                           ;839EE4;
    db $00,$06,$02,$14,$82,$01,$00,$E8                                   ;839EEC;

%anchor($839EF4)
FXHeader_Springball:
    dw $0000,$00B0,$FFFF,$0000                                           ;839EF4;
    db $00,$06,$02,$14,$82,$01,$00,$E8                                   ;839EFC;

%anchor($839F04)
FXHeader_BelowBotwoonETank:
    dw $0000,$0048,$FFFF,$0000                                           ;839F04;
    db $00,$06,$02,$14,$03,$01,$0C,$EE                                   ;839F0C;

%anchor($839F14)
FXHeader_Colosseum:
    dw $0000,$0117,$FFFF,$0000                                           ;839F14;
    db $00,$06,$02,$16,$01,$05,$02,$EE                                   ;839F1C;

%anchor($839F24)
FXHeader_AqueductSave:
    dw $0000,$0010,$FFFF,$0000                                           ;839F24;
    db $00,$06,$02,$14,$82,$02,$00,$42                                   ;839F2C;

%anchor($839F34)
FXHeader_ThePrecious_State0_1:
    dw $0000,$00BF,$FFFF,$0000                                           ;839F34;
    db $00,$06,$02,$14,$83,$00,$00,$EE                                   ;839F3C;

%anchor($839F44)
FXHeader_BotwoonETank:
    dw $0000,$0010,$FFFF,$0000                                           ;839F44;
    db $00,$06,$02,$14,$83,$01,$00,$EE                                   ;839F4C;

%anchor($839F54)
FXHeader_DraygonSave:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839F54;
    db $00,$00,$02,$02,$00,$00,$00,$EE                                   ;839F5C;

%anchor($839F64)
FXHeader_MaridiaMissileRefill:
    dw $0000,$0000,$FFFF,$0000                                           ;839F64;
    db $00,$06,$02,$14,$03,$00,$00,$EE                                   ;839F6C;

%anchor($839F74)
FXHeader_PlasmaBeachQuicksand_BotwoonQuicksand:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839F74;
    db $00,$00,$2A,$02,$00,$02,$00,$00                                   ;839F7C;

%anchor($839F84)
FXHeader_Shaktool_State0_1:
    dw $0000,$00B0,$FFFF,$0000                                           ;839F84;
    db $00,$06,$02,$14,$82,$00,$00,$E8                                   ;839F8C;

%anchor($839F94)
FXHeader_HalfieClimb:
    dw $0000,$0135,$FFFF,$0000                                           ;839F94;
    db $00,$06,$02,$16,$03,$04,$02,$EE                                   ;839F9C;

%anchor($839FA4)
FXHeader_Botwoon_State0_1:
    dw $0000,$0010,$FFFF,$0000                                           ;839FA4;
    db $00,$06,$02,$14,$83,$02,$00,$EE                                   ;839FAC;

%anchor($839FB4)
FXHeader_SpaceJump:
    dw $0000,$0010,$FFFF,$0000                                           ;839FB4;
    db $00,$06,$02,$14,$83,$00,$00,$EE                                   ;839FBC;

%anchor($839FC4)
FXHeader_MaridiaEnergyRefill:
    dw $0000,$FFFF,$FFFF,$0000                                           ;839FC4;
    db $00,$00,$02,$02,$00,$00,$00,$EE                                   ;839FCC;

%anchor($839FD4)
FXHeader_WestCactusAlley:
    dw $0000,$00B9,$FFFF,$0000                                           ;839FD4;
    db $00,$06,$02,$14,$83,$00,$00,$EE                                   ;839FDC;

%anchor($839FE4)
FXHeader_EastCactusAlley:
    dw $0000,$0135,$FFFF,$0000                                           ;839FE4;
    db $00,$06,$02,$16,$01,$04,$02,$EE                                   ;839FEC;

%anchor($839FF4)
FXHeader_Draygon_State0_1:
    dw $0000,$0010,$FFFF,$0000                                           ;839FF4;
    db $00,$06,$02,$14,$81,$00,$00,$42                                   ;839FFC;

%anchor($83A004)
FXHeader_TourianFirst:
    dw $0000,$03BC,$FFFF,$0000                                           ;83A004;
    db $00,$04,$02,$1E,$01,$02,$00,$02                                   ;83A00C;

%anchor($83A014)
FXHeader_Metroids1_State0_1:
    dw $0000,$00D0,$FFFF,$0000                                           ;83A014;
    db $10,$04,$02,$1E,$01,$02,$00,$02                                   ;83A01C;

%anchor($83A024)
FXHeader_Metroids2_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A024;
    db $00,$00,$02,$02,$00,$02,$00,$00                                   ;83A02C;

%anchor($83A034)
FXHeader_Metroids3_State0_1:
    dw $0000,$00D0,$FFFF,$0000                                           ;83A034;
    db $10,$04,$02,$1E,$01,$02,$00,$02                                   ;83A03C;

%anchor($83A044)
FXHeader_Metroids4_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A044;
    db $00,$00,$02,$02,$00,$02,$00,$00                                   ;83A04C;

%anchor($83A054)
FXHeader_BlueHopper_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A054;
    db $00,$00,$02,$02,$00,$02,$00,$00                                   ;83A05C;

%anchor($83A064)
FXHeader_DustTorizo_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A064;
    db $00,$00,$02,$02,$00,$02,$00,$00                                   ;83A06C;

%anchor($83A074)
FXHeader_BigBoy_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A074;
    db $00,$00,$02,$02,$00,$02,$00,$00                                   ;83A07C;

%anchor($83A084)
FXHeader_Seaweed:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A084;
    db $00,$00,$02,$02,$00,$02,$00,$00                                   ;83A08C;

%anchor($83A094)
FXHeader_TourianRecharge:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A094;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;83A09C;

%anchor($83A0A4)
FXHeader_MotherBrain_State0_1:
    dw $0000,$00E8,$FFFF,$0000                                           ;83A0A4;
    db $10,$04,$02,$1E,$01,$02,$00,$02                                   ;83A0AC;

%anchor($83A0B4)
FXHeader_SetByMotherBrain_0:
    dw $0000,$00E8,$00B8,$FFF0                                           ;83A0B4;
    db $10,$04,$02,$1E,$01,$02,$00,$02                                   ;83A0BC;

%anchor($83A0C4)
FXHeader_SetByMotherBrain_1:
    dw $0000,$00B8,$00E8,$0030                                           ;83A0C4;
    db $10,$04,$02,$1E,$01,$02,$00,$02                                   ;83A0CC;

%anchor($83A0D4)
FXHeader_TourianEyeDoor:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A0D4;
    db $00,$00,$02,$02,$00,$02,$00,$00                                   ;83A0DC;

%anchor($83A0E4)
FXHeader_RinkaShaft:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A0E4;
    db $00,$00,$02,$02,$00,$02,$00,$00                                   ;83A0EC;

%anchor($83A0F4)
FXHeader_MotherBrainSave:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A0F4;
    db $00,$00,$02,$02,$00,$00,$00,$00                                   ;83A0FC;

%anchor($83A104)
FXHeader_TourianEscape1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A104;
    db $00,$00,$02,$02,$00,$78,$00,$00                                   ;83A10C;

%anchor($83A114)
FXHeader_TourianEscape2:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A114;
    db $00,$00,$02,$02,$00,$70,$00,$00                                   ;83A11C;

%anchor($83A124)
FXHeader_TourianEscape3:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A124;
    db $00,$00,$02,$02,$00,$70,$00,$00                                   ;83A12C;

%anchor($83A134)
FXHeader_ToruianEscaper4:
    dw $0000,$05E0,$0010,$0000                                           ;83A134;
    db $40,$04,$02,$1E,$01,$70,$02,$00                                   ;83A13C;

%anchor($83A144)
FXHeader_UpperTourianSave:
    dw $FFFF                                                             ;83A144;

%anchor($83A146)
FXHeader_CeresElev_State0_1:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A146;
    db $00,$2A,$02,$02,$00,$00,$00,$00                                   ;83A14E;

%anchor($83A156)
FXHeader_FallingTile_State0:
    dw $FFFF                                                             ;83A156;

%anchor($83A158)
FXHeader_MagnetStairs_State0:
    dw $FFFF                                                             ;83A158;

%anchor($83A15A)
FXHeader_DeadScientist_State0:
    dw $FFFF                                                             ;83A15A;

%anchor($83A15C)
FXHeader_58Escape_State0:
    dw $FFFF                                                             ;83A15C;

%anchor($83A15E)
FXHeader_CeresRidley_State0:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A15E;
    db $00,$28,$02,$02,$00,$00,$00,$00                                   ;83A166;

if !FEATURE_KEEP_UNREFERENCED
%anchor($83A16E)
UNUSED_FXHeader_83A16E:
    dw $0000,$FFFF,$FFFF,$0000                                           ;83A16E;
    db $00,$2A,$02,$02,$00,$00,$00,$00                                   ;83A176;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($83A17E)
FXHeader_FallingTile_State1:
    dw $FFFF                                                             ;83A17E;

%anchor($83A180)
FXHeader_MagnetStairs_State1:
    dw $FFFF                                                             ;83A180;

%anchor($83A182)
FXHeader_DeadScientist_State1:
    dw $FFFF                                                             ;83A182;

%anchor($83A184)
FXHeader_58Escape_State1:
    dw $FFFF                                                             ;83A184;

%anchor($83A186)
FXHeader_CeresRidley_State1:
    dw $FFFF                                                             ;83A186;

%anchor($83A188)
FXHeader_Debug_MotherBrain_State2:
    dw $FFFF                                                             ;83A188;

%anchor($83A18A)
Door_MaridiaElev_3_TourianFirst_2:
    dw $0000                                                             ;83A18A;


; Door header format
;        _____________________________ 0: Destination room header pointer (bank $8F)
;       |     ________________________ 2: Elevator properties
;       |    |   _____________________ 3: Direction
;       |    |  |   __________________ 4: Doorcap X position in blocks
;       |    |  |  |   _______________ 5: Doorcap Y position in blocks
;       |    |  |  |  |   ____________ 6: X screen
;       |    |  |  |  |  |   _________ 7: Y screen
;       |    |  |  |  |  |  |   ______ 8: Distance from door to spawn Samus
;       |    |  |  |  |  |  |  |     _ Ah: Custom door ASM to execute (bank $8F)
;       |    |  |  |  |  |  |  |    |
;       rrrr ee oo xx yy XX YY dddd aaaa
%anchor($83A18C)
Door_BowlingAlley_0:
    dw RoomHeader_WestOcean                                              ;83A18C;
    db $40,$05,$7E,$16,$07,$01                                           ;83A18E;
    dw $8000,$0000                                                       ;83A194;

%anchor($83A198)
Door_BowlingAlley_1:
    dw RoomHeader_PreBowling                                             ;83A198;
    db $40,$05,$0E,$06,$00,$00                                           ;83A19A;
    dw $8000,$0000                                                       ;83A1A0;

%anchor($83A1A4)
Door_BowlingAlley_2:
    dw RoomHeader_GravitySuit                                            ;83A1A4;
    db $00,$05,$0E,$06,$00,$00                                           ;83A1A6;
    dw $8000,$0000                                                       ;83A1AC;

%anchor($83A1B0)
Door_WreckedShipEntrance_0:
    dw RoomHeader_WestOcean                                              ;83A1B0;
    db $40,$05,$7E,$46,$07,$04                                           ;83A1B2;
    dw $8000,$0000                                                       ;83A1B8;

%anchor($83A1BC)
Door_WreckedShipEntrance_1:
    dw RoomHeader_WreckedShipMainShaft                                   ;83A1BC;
    db $00,$04,$41,$36,$04,$03                                           ;83A1BE;
    dw $8000,$0000                                                       ;83A1C4;

%anchor($83A1C8)
Door_Attic_0:
    dw RoomHeader_WreckedShipMainShaft                                   ;83A1C8;
    db $00,$06,$46,$02,$04,$00                                           ;83A1CA;
    dw $8000,$0000                                                       ;83A1D0;

%anchor($83A1D4)
Door_Attic_1:
    dw RoomHeader_AssemblyLine                                           ;83A1D4;
    db $00,$04,$01,$06,$00,$00                                           ;83A1D6;
    dw $8000,$0000                                                       ;83A1DC;

%anchor($83A1E0)
Door_Attic_2:
    dw RoomHeader_WestOcean                                              ;83A1E0;
    db $40,$05,$7E,$06,$07,$00                                           ;83A1E2;
    dw $8000,$0000                                                       ;83A1E8;

%anchor($83A1EC)
Door_AssemblyLine_0:
    dw RoomHeader_Attic                                                  ;83A1EC;
    db $00,$05,$6E,$06,$06,$00                                           ;83A1EE;
    dw $8000,$0000                                                       ;83A1F4;

%anchor($83A1F8)
Door_WreckedShipMainShaft_0:
    dw RoomHeader_WreckedShipEntrance                                    ;83A1F8;
    db $00,$05,$3E,$06,$03,$00                                           ;83A1FA;
    dw $8000                                                             ;83A200;
    dw DoorASM_StartWreckedShipTreadmillEastEntrance                     ;83A202;

%anchor($83A204)
Door_WreckedShipMainShaft_1:
    dw RoomHeader_SpongeBath                                             ;83A204;
    db $00,$04,$01,$06,$00,$00                                           ;83A206;
    dw $8000,$0000                                                       ;83A20C;

%anchor($83A210)
Door_WreckedShipMainShaft_2:
    dw RoomHeader_WSWestSuper                                            ;83A210;
    db $00,$05,$0E,$06,$00,$00                                           ;83A212;
    dw $8000,$0000                                                       ;83A218;

%anchor($83A21C)
Door_WreckedShipMainShaft_3:
    dw RoomHeader_Basement                                               ;83A21C;
    db $00,$06,$26,$02,$02,$00                                           ;83A21E;
    dw $8000,$0000                                                       ;83A224;

%anchor($83A228)
Door_WreckedShipMainShaft_4:
    dw RoomHeader_Attic                                                  ;83A228;
    db $00,$07,$46,$0E,$04,$00                                           ;83A22A;
    dw $01C0,$0000                                                       ;83A230;

%anchor($83A234)
Door_WreckedShipMainShaft_5:
    dw RoomHeader_WSEastSuper                                            ;83A234;
    db $00,$04,$01,$06,$00,$00                                           ;83A236;
    dw $8000,$0000                                                       ;83A23C;

%anchor($83A240)
Door_WreckedShipMainShaft_6:
    dw RoomHeader_WreckedShipSave                                        ;83A240;
    db $00,$04,$01,$06,$00,$00                                           ;83A242;
    dw $8000,$0000                                                       ;83A248;

%anchor($83A24C)
Door_SpikyDeath_0:
    dw RoomHeader_SpongeBath                                             ;83A24C;
    db $00,$05,$1E,$06,$01,$00                                           ;83A24E;
    dw $8000                                                             ;83A254;
    dw DoorASM_Scroll_1_Blue                                             ;83A256;

%anchor($83A258)
Door_SpikyDeath_1:
    dw RoomHeader_ElectricDeath                                          ;83A258;
    db $00,$04,$01,$26,$00,$02                                           ;83A25A;
    dw $8000,$0000                                                       ;83A260;

%anchor($83A264)
Door_ElectricDeath_0:
    dw RoomHeader_EastOcean                                              ;83A264;
    db $40,$04,$01,$46,$00,$04                                           ;83A266;
    dw $8000,$0000                                                       ;83A26C;

%anchor($83A270)
Door_ElectricDeath_1:
    dw RoomHeader_SpikyDeath                                             ;83A270;
    db $00,$05,$1E,$06,$01,$00                                           ;83A272;
    dw $8000,$0000                                                       ;83A278;

%anchor($83A27C)
Door_ElectricDeath_2:
    dw RoomHeader_WreckedShipETank                                       ;83A27C;
    db $00,$05,$2E,$06,$02,$00                                           ;83A27E;
    dw $8000,$0000                                                       ;83A284;

%anchor($83A288)
Door_WreckedShipETank_0:
    dw RoomHeader_ElectricDeath                                          ;83A288;
    db $00,$04,$01,$06,$00,$00                                           ;83A28A;
    dw $8000                                                             ;83A290;
    dw DoorASM_Scroll_0_Green_duplicate_again                            ;83A292;

%anchor($83A294)
Door_Basement_0:
    dw RoomHeader_WreckedShipMainShaft                                   ;83A294;
    db $00,$07,$46,$7D,$04,$07                                           ;83A296;
    dw $01C0                                                             ;83A29C;
    dw DoorASM_Scroll_28_2E_Green                                        ;83A29E;

%anchor($83A2A0)
Door_Basement_1:
    dw RoomHeader_WreckedShipMap                                         ;83A2A0;
    db $00,$05,$0E,$06,$00,$00                                           ;83A2A2;
    dw $8000,$0000                                                       ;83A2A8;

%anchor($83A2AC)
Door_Basement_2:
    dw RoomHeader_Phantoon                                               ;83A2AC;
    db $00,$04,$01,$06,$00,$00                                           ;83A2AE;
    dw $8000,$0000                                                       ;83A2B4;

%anchor($83A2B8)
Door_WreckedShipMap_0:
    dw RoomHeader_Basement                                               ;83A2B8;
    db $00,$04,$01,$06,$00,$00                                           ;83A2BA;
    dw $8000,$0000                                                       ;83A2C0;

%anchor($83A2C4)
Door_Phantoon_0:
    dw RoomHeader_Basement                                               ;83A2C4;
    db $00,$05,$4E,$06,$04,$00                                           ;83A2C6;
    dw $8000                                                             ;83A2CC;
    dw DoorASM_Scroll_3_Red_4_Blue                                       ;83A2CE;

%anchor($83A2D0)
Door_SpongeBath_0:
    dw RoomHeader_WreckedShipMainShaft                                   ;83A2D0;
    db $00,$05,$4E,$46,$04,$04                                           ;83A2D2;
    dw $8000,$0000                                                       ;83A2D8;

%anchor($83A2DC)
Door_SpongeBath_1:
    dw RoomHeader_SpikyDeath                                             ;83A2DC;
    db $00,$04,$01,$06,$00,$00                                           ;83A2DE;
    dw $8000,$0000                                                       ;83A2E4;

%anchor($83A2E8)
Door_WSWestSuper_0:
    dw RoomHeader_WreckedShipMainShaft                                   ;83A2E8;
    db $00,$04,$41,$66,$04,$06                                           ;83A2EA;
    dw $8000,$0000                                                       ;83A2F0;

%anchor($83A2F4)
Door_WSEastSuper_0:
    dw RoomHeader_WreckedShipMainShaft                                   ;83A2F4;
    db $00,$05,$5E,$66,$05,$06                                           ;83A2F6;
    dw $8000                                                             ;83A2FC;
    dw DoorASM_Scroll_29_Blue                                            ;83A2FE;

%anchor($83A300)
Door_GravitySuit_0:
    dw RoomHeader_WestOcean                                              ;83A300;
    db $40,$05,$5E,$36,$05,$03                                           ;83A302;
    dw $8000,$0000                                                       ;83A308;

%anchor($83A30C)
Door_GravitySuit_1:
    dw RoomHeader_BowlingAlley                                           ;83A30C;
    db $00,$04,$11,$26,$01,$02                                           ;83A30E;
    dw $8000                                                             ;83A314;
    dw DoorASM_Scroll_6_7_8_9_A_B_Red                                    ;83A316;

%anchor($83A318)
Door_WreckedShipSave_0:
    dw RoomHeader_WreckedShipMainShaft                                   ;83A318;
    db $00,$05,$4E,$36,$04,$03                                           ;83A31A;
    dw $8000,$0000                                                       ;83A320;

%anchor($83A324)
Door_GlassTunnelSave_0:
    dw RoomHeader_GlassTunnel                                            ;83A324;
    db $00,$05,$0E,$26,$00,$02                                           ;83A326;
    dw $8000,$0000                                                       ;83A32C;

%anchor($83A330)
Door_GlassTunnel_0:
    dw RoomHeader_MainStreet                                             ;83A330;
    db $00,$07,$16,$7D,$01,$07                                           ;83A332;
    dw $0200,$0000                                                       ;83A338;

%anchor($83A33C)
Door_GlassTunnel_1:
    dw RoomHeader_WestTunnel                                             ;83A33C;
    db $00,$05,$0E,$06,$00,$00                                           ;83A33E;
    dw $8000,$0000                                                       ;83A344;

%anchor($83A348)
Door_GlassTunnel_2:
    dw RoomHeader_EastTunnel                                             ;83A348;
    db $00,$04,$01,$16,$00,$01                                           ;83A34A;
    dw $8000                                                             ;83A350;
    dw DoorASM_Scroll_0_Red_4_Blue_duplicate                             ;83A352;

%anchor($83A354)
Door_GlassTunnel_3:
    dw RoomHeader_GlassTunnelSave                                        ;83A354;
    db $00,$04,$01,$06,$00,$00                                           ;83A356;
    dw $8000,$0000                                                       ;83A35C;

%anchor($83A360)
Door_WestTunnel_0:
    dw RoomHeader_GlassTunnel                                            ;83A360;
    db $00,$00,$00,$00,$00,$01                                           ;83A362;
    dw $8000                                                             ;83A368;
    dw DoorASM_Scroll_0_2_Red_1_Blue                                     ;83A36A;

%anchor($83A36C)
Door_WestTunnel_1:
    dw RoomHeader_BelowSpazer                                            ;83A36C;
    db $40,$05,$1E,$16,$01,$01                                           ;83A36E;
    dw $8000,$0000                                                       ;83A374;

%anchor($83A378)
Door_EastTunnel_0:
    dw RoomHeader_GlassTunnel                                            ;83A378;
    db $00,$01,$00,$00,$00,$01                                           ;83A37A;
    dw $8000                                                             ;83A380;
    dw DoorASM_Scroll_0_2_Red_1_Blue                                     ;83A382;

%anchor($83A384)
Door_EastTunnel_1:
    dw RoomHeader_WarehouseEntrance                                      ;83A384;
    db $40,$04,$01,$06,$00,$00                                           ;83A386;
    dw $8000,$0000                                                       ;83A38C;

%anchor($83A390)
Door_EastTunnel_2:
    dw RoomHeader_CrabHole                                               ;83A390;
    db $00,$04,$01,$16,$00,$01                                           ;83A392;
    dw $8000                                                             ;83A398;
    dw DoorASM_Scroll_0_Red_1_Blue                                       ;83A39A;

%anchor($83A39C)
Door_MainStreet_0:
    dw RoomHeader_GlassTunnel                                            ;83A39C;
    db $00,$06,$06,$02,$00,$00                                           ;83A39E;
    dw $0170,$0000                                                       ;83A3A4;

%anchor($83A3A8)
Door_MainStreet_1:
    dw RoomHeader_CrabTunnel                                             ;83A3A8;
    db $00,$04,$01,$06,$00,$00                                           ;83A3AA;
    dw $8000,$0000                                                       ;83A3B0;

%anchor($83A3B4)
Door_MainStreet_2:
    dw RoomHeader_FishTank                                               ;83A3B4;
    db $00,$04,$01,$26,$00,$02                                           ;83A3B6;
    dw $8000,$0000                                                       ;83A3BC;

%anchor($83A3C0)
Door_MainStreet_3:
    dw RoomHeader_MtEverest                                              ;83A3C0;
    db $00,$04,$01,$06,$00,$00                                           ;83A3C2;
    dw $8000,$0000                                                       ;83A3C8;

%anchor($83A3CC)
Door_MainStreet_4:
    dw RoomHeader_MtEverest                                              ;83A3CC;
    db $00,$00,$00,$00,$01,$02                                           ;83A3CE;
    dw $8000,$0000                                                       ;83A3D4;

%anchor($83A3D8)
Door_FishTank_0:
    dw RoomHeader_MainStreet                                             ;83A3D8;
    db $00,$05,$2E,$66,$02,$06                                           ;83A3DA;
    dw $8000,$0000                                                       ;83A3E0;

%anchor($83A3E4)
Door_FishTank_1:
    dw RoomHeader_MamaTurtle                                             ;83A3E4;
    db $00,$04,$01,$36,$00,$03                                           ;83A3E6;
    dw $8000,$0000                                                       ;83A3EC;

%anchor($83A3F0)
Door_FishTank_2:
    dw RoomHeader_MtEverest                                              ;83A3F0;
    db $00,$07,$16,$3D,$01,$03                                           ;83A3F2;
    dw $01C0,$0000                                                       ;83A3F8;

%anchor($83A3FC)
Door_FishTank_3:
    dw RoomHeader_MtEverest                                              ;83A3FC;
    db $00,$07,$46,$3D,$04,$03                                           ;83A3FE;
    dw $01C0,$0000                                                       ;83A404;

%anchor($83A408)
Door_MamaTurtle_0:
    dw RoomHeader_FishTank                                               ;83A408;
    db $00,$05,$3E,$26,$03,$02                                           ;83A40A;
    dw $8000,$0000                                                       ;83A410;

%anchor($83A414)
Door_CrabTunnel_0:
    dw RoomHeader_MainStreet                                             ;83A414;
    db $00,$05,$1E,$76,$01,$07                                           ;83A416;
    dw $8000,$0000                                                       ;83A41C;

%anchor($83A420)
Door_CrabTunnel_1:
    dw RoomHeader_CrabHole                                               ;83A420;
    db $00,$00,$00,$00,$00,$00                                           ;83A422;
    dw $8000,$0000                                                       ;83A428;

%anchor($83A42C)
Door_MtEverest_0:
    dw RoomHeader_RedFish                                                ;83A42C;
    db $00,$07,$26,$1D,$02,$01                                           ;83A42E;
    dw $01C0,$0000                                                       ;83A434;

%anchor($83A438)
Door_MtEverest_1:
    dw RoomHeader_MainStreet                                             ;83A438;
    db $00,$05,$1E,$06,$01,$00                                           ;83A43A;
    dw $8000,$0000                                                       ;83A440;

%anchor($83A444)
Door_MtEverest_2:
    dw RoomHeader_FishTank                                               ;83A444;
    db $00,$06,$06,$02,$00,$00                                           ;83A446;
    dw $8000,$0000                                                       ;83A44C;

%anchor($83A450)
Door_MtEverest_3:
    dw RoomHeader_FishTank                                               ;83A450;
    db $00,$06,$36,$02,$03,$00                                           ;83A452;
    dw $8000,$0000                                                       ;83A458;

%anchor($83A45C)
Door_MtEverest_4:
    dw RoomHeader_MainStreet                                             ;83A45C;
    db $00,$01,$00,$00,$02,$02                                           ;83A45E;
    dw $8000,$0000                                                       ;83A464;

%anchor($83A468)
Door_MtEverest_5:
    dw RoomHeader_CrabShaft                                              ;83A468;
    db $00,$04,$01,$26,$00,$02                                           ;83A46A;
    dw $8000,$0000                                                       ;83A470;

%anchor($83A474)
Door_RedFish_0:
    dw RoomHeader_MtEverest                                              ;83A474;
    db $00,$06,$26,$02,$02,$00                                           ;83A476;
    dw $8000,$0000                                                       ;83A47C;

%anchor($83A480)
Door_RedFish_1:
    dw RoomHeader_Caterpillar                                            ;83A480;
    db $40,$05,$2E,$36,$02,$03                                           ;83A482;
    dw $8000                                                             ;83A488;
    dw DoorASM_Scroll_9_Red_A_Blue                                       ;83A48A;

%anchor($83A48C)
Door_WateringHole_0:
    dw RoomHeader_NWestMaridiaBug                                        ;83A48C;
    db $00,$04,$01,$06,$00,$00                                           ;83A48E;
    dw $0140,$0000                                                       ;83A494;

%anchor($83A498)
Door_NWestMaridiaBug_0:
    dw RoomHeader_WateringHole                                           ;83A498;
    db $00,$05,$1E,$06,$01,$00                                           ;83A49A;
    dw $8000,$0000                                                       ;83A4A0;

%anchor($83A4A4)
Door_NWestMaridiaBug_1:
    dw RoomHeader_PseudoPlasmaSpark                                      ;83A4A4;
    db $00,$04,$01,$16,$00,$01                                           ;83A4A6;
    dw $8000,$0000                                                       ;83A4AC;

%anchor($83A4B0)
Door_CrabShaft_0:
    dw RoomHeader_MtEverest                                              ;83A4B0;
    db $00,$05,$5E,$06,$05,$00                                           ;83A4B2;
    dw $8000,$0000                                                       ;83A4B8;

%anchor($83A4BC)
Door_CrabShaft_1:
    dw RoomHeader_PseudoPlasmaSpark                                      ;83A4BC;
    db $00,$07,$06,$2D,$00,$02                                           ;83A4BE;
    dw $01C0,$0000                                                       ;83A4C4;

%anchor($83A4C8)
Door_CrabShaft_2:
    dw RoomHeader_Aqueduct                                               ;83A4C8;
    db $00,$04,$01,$16,$00,$01                                           ;83A4CA;
    dw $8000,$0000                                                       ;83A4D0;

%anchor($83A4D4)
Door_PseudoPlasmaSpark_0:
    dw RoomHeader_NWestMaridiaBug                                        ;83A4D4;
    db $00,$05,$3E,$16,$03,$01                                           ;83A4D6;
    dw $8000,$0000                                                       ;83A4DC;

%anchor($83A4E0)
Door_PseudoPlasmaSpark_1:
    dw RoomHeader_CrabShaft                                              ;83A4E0;
    db $00,$06,$06,$02,$00,$00                                           ;83A4E2;
    dw $8000,$0000                                                       ;83A4E8;

%anchor($83A4EC)
Door_PseudoPlasmaSpark_2:
    dw RoomHeader_PlasmaSpark                                            ;83A4EC;
    db $00,$00,$00,$00,$00,$02                                           ;83A4EE;
    dw $8000,$0000                                                       ;83A4F4;

%anchor($83A4F8)
Door_CrabHole_0:
    dw RoomHeader_CrabTunnel                                             ;83A4F8;
    db $00,$05,$3E,$06,$03,$00                                           ;83A4FA;
    dw $8000,$0000                                                       ;83A500;

%anchor($83A504)
Door_CrabHole_1:
    dw RoomHeader_WestSandHallTunnel                                     ;83A504;
    db $00,$04,$01,$06,$00,$00                                           ;83A506;
    dw $8000,$0000                                                       ;83A50C;

%anchor($83A510)
Door_CrabHole_2:
    dw RoomHeader_EastTunnel                                             ;83A510;
    db $00,$05,$3E,$06,$03,$00                                           ;83A512;
    dw $8000,$0000                                                       ;83A518;

%anchor($83A51C)
Door_CrabHole_3:
    dw RoomHeader_MaridiaMap                                             ;83A51C;
    db $00,$04,$01,$06,$00,$00                                           ;83A51E;
    dw $8000,$0000                                                       ;83A524;

%anchor($83A528)
Door_WestSandHallTunnel_0:
    dw RoomHeader_CrabHole                                               ;83A528;
    db $00,$01,$00,$00,$00,$00                                           ;83A52A;
    dw $8000,$0000                                                       ;83A530;

%anchor($83A534)
Door_WestSandHallTunnel_1:
    dw RoomHeader_WestSandHall                                           ;83A534;
    db $00,$04,$01,$06,$00,$00                                           ;83A536;
    dw $8000,$0000                                                       ;83A53C;

%anchor($83A540)
Door_PlasmaTutorial_0:
    dw RoomHeader_Kassiuz                                                ;83A540;
    db $00,$05,$0E,$06,$00,$00                                           ;83A542;
    dw $8000,$0000                                                       ;83A548;

%anchor($83A54C)
Door_PlasmaTutorial_1:
    dw RoomHeader_Plasma                                                 ;83A54C;
    db $00,$04,$01,$06,$00,$00                                           ;83A54E;
    dw $8000,$0000                                                       ;83A554;

%anchor($83A558)
Door_Plasma_0:
    dw RoomHeader_PlasmaTutorial                                         ;83A558;
    db $00,$05,$0E,$06,$00,$00                                           ;83A55A;
    dw $8000,$0000                                                       ;83A560;

%anchor($83A564)
Door_ThreadTheNeedle_0:
    dw RoomHeader_BugSandHole                                            ;83A564;
    db $00,$05,$0E,$06,$00,$00                                           ;83A566;
    dw $8000,$0000                                                       ;83A56C;

%anchor($83A570)
Door_ThreadTheNeedle_1:
    dw RoomHeader_MaridiaElev                                            ;83A570;
    db $00,$04,$01,$56,$00,$05                                           ;83A572;
    dw $8000,$0000                                                       ;83A578;

%anchor($83A57C)
Door_MaridiaElev_0:
    dw RoomHeader_ThreadTheNeedle                                        ;83A57C;
    db $00,$05,$6E,$06,$06,$00                                           ;83A57E;
    dw $8000,$0000                                                       ;83A584;

%anchor($83A588)
Door_MaridiaElev_1:
    dw RoomHeader_ForgottenHighwaySave                                   ;83A588;
    db $00,$04,$01,$06,$00,$00                                           ;83A58A;
    dw $8000,$0000                                                       ;83A590;

%anchor($83A594)
Door_MaridiaElev_2:
    dw RoomHeader_ForgottenHighwayElev                                   ;83A594;
    db $D0,$03,$00,$00,$00,$00                                           ;83A596;
    dw $0000,$0000                                                       ;83A59C;

%anchor($83A5A0)
Door_PlasmaSpark_0:
    dw RoomHeader_Butterfly                                              ;83A5A0;
    db $00,$04,$01,$06,$00,$00                                           ;83A5A2;
    dw $8000,$0000                                                       ;83A5A8;

%anchor($83A5AC)
Door_PlasmaSpark_1:
    dw RoomHeader_Toilet                                                 ;83A5AC;
    db $00,$02,$00,$00,$00,$00                                           ;83A5AE;
    dw $8000                                                             ;83A5B4;
    dw DoorASM_SetupElevatubeFromNorth                                   ;83A5B6;

%anchor($83A5B8)
Door_PlasmaSpark_2:
    dw RoomHeader_Kassiuz                                                ;83A5B8;
    db $00,$04,$01,$36,$00,$03                                           ;83A5BA;
    dw $8000,$0000                                                       ;83A5C0;

%anchor($83A5C4)
Door_PlasmaSpark_3:
    dw RoomHeader_BugSandHole                                            ;83A5C4;
    db $00,$04,$01,$06,$00,$00                                           ;83A5C6;
    dw $8000,$0000                                                       ;83A5CC;

%anchor($83A5D0)
Door_Kassiuz_0:
    dw RoomHeader_PlasmaSpark                                            ;83A5D0;
    db $00,$05,$2E,$16,$02,$01                                           ;83A5D2;
    dw $8000,$0000                                                       ;83A5D8;

%anchor($83A5DC)
Door_Kassiuz_1:
    dw RoomHeader_PlasmaTutorial                                         ;83A5DC;
    db $00,$04,$01,$06,$00,$00                                           ;83A5DE;
    dw $8000,$0000                                                       ;83A5E4;

%anchor($83A5E8)
Door_MaridiaMap_0:
    dw RoomHeader_CrabHole                                               ;83A5E8;
    db $00,$05,$0E,$16,$00,$01                                           ;83A5EA;
    dw $8000                                                             ;83A5F0;
    dw DoorASM_Scroll_0_Red_1_Blue                                       ;83A5F2;

%anchor($83A5F4)
Door_ForgottenHighwaySave_0:
    dw RoomHeader_MaridiaElev                                            ;83A5F4;
    db $00,$05,$0E,$46,$00,$04                                           ;83A5F6;
    dw $8000,$0000                                                       ;83A5FC;

%anchor($83A600)
Door_Toilet_0:
    dw RoomHeader_Oasis                                                  ;83A600;
    db $00,$06,$06,$02,$00,$00                                           ;83A602;
    dw $8000                                                             ;83A608;
    dw DoorASM_ResetElevatubeOnSouthExit                                 ;83A60A;

%anchor($83A60C)
Door_Toilet_1:
    dw RoomHeader_PlasmaSpark                                            ;83A60C;
    db $00,$07,$06,$2D,$00,$02                                           ;83A60E;
    dw $0200                                                             ;83A614;
    dw DoorASM_ResetElevatubeOnNorthExit                                 ;83A616;

%anchor($83A618)
Door_BugSandHole_0:
    dw RoomHeader_ThreadTheNeedle                                        ;83A618;
    db $00,$04,$01,$06,$00,$00                                           ;83A61A;
    dw $8000,$0000                                                       ;83A620;

%anchor($83A624)
Door_BugSandHole_1:
    dw RoomHeader_PlasmaBeachQuicksand                                   ;83A624;
    db $00,$02,$00,$00,$00,$00                                           ;83A626;
    dw $8000,$0000                                                       ;83A62C;

%anchor($83A630)
Door_BugSandHole_2:
    dw RoomHeader_PlasmaSpark                                            ;83A630;
    db $00,$05,$3E,$36,$03,$03                                           ;83A632;
    dw $8000,$0000                                                       ;83A638;

%anchor($83A63C)
Door_WestSandHall_0:
    dw RoomHeader_WestSandHallTunnel                                     ;83A63C;
    db $00,$05,$0E,$06,$00,$00                                           ;83A63E;
    dw $8000,$0000                                                       ;83A644;

%anchor($83A648)
Door_WestSandHall_1:
    dw RoomHeader_Oasis                                                  ;83A648;
    db $00,$04,$01,$16,$00,$01                                           ;83A64A;
    dw $8000,$0000                                                       ;83A650;

%anchor($83A654)
UNUSED_Door_WestSandHall_2_83A654:
    dw RoomHeader_WestSandHole                                           ;83A654;
    db $00,$03,$00,$00,$00,$01                                           ;83A656;
    dw $8000,$0000                                                       ;83A65C;

%anchor($83A660)
Door_Oasis_0:
    dw RoomHeader_WestSandHall                                           ;83A660;
    db $00,$05,$3E,$06,$03,$00                                           ;83A662;
    dw $8000,$0000                                                       ;83A668;

%anchor($83A66C)
Door_Oasis_1:
    dw RoomHeader_EastSandHall                                           ;83A66C;
    db $00,$04,$01,$06,$00,$00                                           ;83A66E;
    dw $8000,$0000                                                       ;83A674;

%anchor($83A678)
Door_Oasis_2:
    dw RoomHeader_Toilet                                                 ;83A678;
    db $00,$03,$00,$00,$00,$09                                           ;83A67A;
    dw $8000                                                             ;83A680;
    dw DoorASM_SetupElevatubeFromSouth                                   ;83A682;

%anchor($83A684)
Door_EastSandHall_0:
    dw RoomHeader_Oasis                                                  ;83A684;
    db $00,$05,$0E,$16,$00,$01                                           ;83A686;
    dw $8000,$0000                                                       ;83A68C;

%anchor($83A690)
Door_EastSandHall_1:
    dw RoomHeader_Pants                                                  ;83A690;
    db $00,$04,$01,$36,$00,$03                                           ;83A692;
    dw $8000                                                             ;83A698;
    dw DoorASM_Scroll_4_Red_duplicate                                    ;83A69A;

%anchor($83A69C)
UNUSED_Door_EastSandHall_2_83A69C:
    dw RoomHeader_EastSandHole                                           ;83A69C;
    db $00,$03,$00,$00,$01,$01                                           ;83A69E;
    dw $8000,$0000                                                       ;83A6A4;

%anchor($83A6A8)
Door_WestSandHole_0:
    dw RoomHeader_WestAqueductQuicksand                                  ;83A6A8;
    db $00,$03,$00,$00,$00,$01                                           ;83A6AA;
    dw $8000,$0000                                                       ;83A6B0;

%anchor($83A6B4)
Door_WestSandHole_1:
    dw RoomHeader_WestSandHall                                           ;83A6B4;
    db $00,$02,$00,$00,$02,$00                                           ;83A6B6;
    dw $8000,$0000                                                       ;83A6BC;

%anchor($83A6C0)
Door_EastSandHole_0:
    dw RoomHeader_EastAqueductQuicksand                                  ;83A6C0;
    db $00,$03,$00,$00,$00,$01                                           ;83A6C2;
    dw $8000,$0000                                                       ;83A6C8;

%anchor($83A6CC)
Door_EastSandHole_1:
    dw RoomHeader_EastSandHall                                           ;83A6CC;
    db $00,$02,$00,$00,$01,$00                                           ;83A6CE;
    dw $8000,$0000                                                       ;83A6D4;

%anchor($83A6D8)
Door_WestAqueductQuicksand_0:
    dw RoomHeader_Aqueduct                                               ;83A6D8;
    db $00,$03,$00,$00,$01,$02                                           ;83A6DA;
    dw $8000,$0000                                                       ;83A6E0;

%anchor($83A6E4)
Door_WestAqueductQuicksand_1:
    dw RoomHeader_WestSandHole                                           ;83A6E4;
    db $00,$02,$00,$00,$01,$00                                           ;83A6E6;
    dw $8000,$0000                                                       ;83A6EC;

%anchor($83A6F0)
Door_EastAqueductQuicksand_0:
    dw RoomHeader_Aqueduct                                               ;83A6F0;
    db $00,$03,$00,$00,$03,$02                                           ;83A6F2;
    dw $8000,$0000                                                       ;83A6F8;

%anchor($83A6FC)
Door_EastAqueductQuicksand_1:
    dw RoomHeader_EastSandHole                                           ;83A6FC;
    db $00,$02,$00,$00,$00,$00                                           ;83A6FE;
    dw $8000,$0000                                                       ;83A704;

%anchor($83A708)
Door_Aqueduct_0:
    dw RoomHeader_CrabShaft                                              ;83A708;
    db $00,$05,$1E,$36,$01,$03                                           ;83A70A;
    dw $8000                                                             ;83A710;
    dw DoorASM_Scroll_6_Blue                                             ;83A712;

%anchor($83A714)
Door_Aqueduct_1:
    dw RoomHeader_WestAqueductQuicksand                                  ;83A714;
    db $00,$02,$00,$00,$00,$00                                           ;83A716;
    dw $8000,$0000                                                       ;83A71C;

%anchor($83A720)
Door_Aqueduct_2:
    dw RoomHeader_EastAqueductQuicksand                                  ;83A720;
    db $00,$02,$00,$00,$00,$00                                           ;83A722;
    dw $8000,$0000                                                       ;83A728;

%anchor($83A72C)
Door_Aqueduct_3:
    dw RoomHeader_BotwoonHallway                                         ;83A72C;
    db $00,$07,$06,$0D,$00,$00                                           ;83A72E;
    dw $01C0,$0000                                                       ;83A734;

%anchor($83A738)
Door_Aqueduct_4:
    dw RoomHeader_BelowBotwoonETank                                      ;83A738;
    db $00,$04,$01,$06,$00,$00                                           ;83A73A;
    dw $8000,$0000                                                       ;83A740;

%anchor($83A744)
Door_Aqueduct_5:
    dw RoomHeader_AqueductSave                                           ;83A744;
    db $00,$05,$0E,$06,$00,$00                                           ;83A746;
    dw $8000,$0000                                                       ;83A74C;

%anchor($83A750)
Door_Butterfly_0:
    dw RoomHeader_PlasmaSpark                                            ;83A750;
    db $00,$05,$3E,$56,$03,$05                                           ;83A752;
    dw $8000,$0000                                                       ;83A758;

%anchor($83A75C)
Door_Butterfly_1:
    dw RoomHeader_WestCactusAlley                                        ;83A75C;
    db $00,$04,$01,$16,$00,$01                                           ;83A75E;
    dw $8000,$0000                                                       ;83A764;

%anchor($83A768)
Door_BotwoonHallway_0:
    dw RoomHeader_Aqueduct                                               ;83A768;
    db $00,$06,$06,$02,$00,$00                                           ;83A76A;
    dw $8000,$0000                                                       ;83A770;

%anchor($83A774)
Door_BotwoonHallway_1:
    dw RoomHeader_Botwoon                                                ;83A774;
    db $00,$04,$01,$06,$00,$00                                           ;83A776;
    dw $8000,$0000                                                       ;83A77C;

%anchor($83A780)
Door_Pants_0:
    dw RoomHeader_EastSandHall                                           ;83A780;
    db $00,$05,$2E,$06,$02,$00                                           ;83A782;
    dw $8000,$0000                                                       ;83A788;

%anchor($83A78C)
Door_Pants_1:
    dw RoomHeader_EastPants                                              ;83A78C;
    db $00,$04,$01,$26,$00,$02                                           ;83A78E;
    dw $8000,$0000                                                       ;83A794;

%anchor($83A798)
Door_Pants_2:
    dw RoomHeader_Shaktool                                               ;83A798;
    db $00,$04,$01,$06,$00,$00                                           ;83A79A;
    dw $8000,$0000                                                       ;83A7A0;

%anchor($83A7A4)
Door_Pants_3:
    dw RoomHeader_Pants                                                  ;83A7A4;
    db $00,$05,$0E,$36,$00,$03                                           ;83A7A6;
    dw $8000                                                             ;83A7AC;
    dw DoorASM_Scroll_4_7_Red                                            ;83A7AE;

%anchor($83A7B0)
Door_EastPants_0:
    dw RoomHeader_Pants                                                  ;83A7B0;
    db $00,$05,$0E,$36,$00,$03                                           ;83A7B2;
    dw $8000                                                             ;83A7B8;
    dw DoorASM_Scroll_4_Red_duplicate                                    ;83A7BA;

%anchor($83A7BC)
Door_EastPants_1:
    dw RoomHeader_Shaktool                                               ;83A7BC;
    db $00,$04,$01,$06,$00,$00                                           ;83A7BE;
    dw $8000,$0000                                                       ;83A7C4;

%anchor($83A7C8)
Door_Springball_0:
    dw RoomHeader_Shaktool                                               ;83A7C8;
    db $00,$05,$3E,$06,$03,$00                                           ;83A7CA;
    dw $8000,$0000                                                       ;83A7D0;

%anchor($83A7D4)
Door_BelowBotwoonETank_0:
    dw RoomHeader_Aqueduct                                               ;83A7D4;
    db $00,$05,$5E,$16,$05,$01                                           ;83A7D6;
    dw $8000,$0000                                                       ;83A7DC;

%anchor($83A7E0)
Door_Colosseum_0:
    dw RoomHeader_HalfieClimb                                            ;83A7E0;
    db $00,$01,$00,$00,$00,$00                                           ;83A7E2;
    dw $8000,$0000                                                       ;83A7E8;

%anchor($83A7EC)
Door_Colosseum_1:
    dw RoomHeader_DraygonSave                                            ;83A7EC;
    db $00,$04,$01,$06,$00,$00                                           ;83A7EE;
    dw $8000,$0000                                                       ;83A7F4;

%anchor($83A7F8)
Door_Colosseum_2:
    dw RoomHeader_ThePrecious                                            ;83A7F8;
    db $00,$04,$01,$06,$00,$00                                           ;83A7FA;
    dw $8000,$0000                                                       ;83A800;

if !FEATURE_KEEP_UNREFERENCED
%anchor($83A804)
UNUSED_Door_83A804:
    dw RoomHeader_HalfieClimb                                            ;83A804;
    db $00,$01,$00,$00,$00,$02                                           ;83A806;
    dw $8000,$0000                                                       ;83A80C;

%anchor($83A810)
UNUSED_Door_83A810:
    dw RoomHeader_MaridiaMissileRefill                                   ;83A810;
    db $00,$04,$01,$06,$00,$00                                           ;83A812;
    dw $8000,$0000                                                       ;83A818;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($83A81C)
Door_ThePrecious_MaridiaLoad11:
    dw RoomHeader_ThePrecious                                            ;83A81C;
    db $00,$04,$01,$06,$00,$00                                           ;83A81E;
    dw $8000,$0000                                                       ;83A824;

%anchor($83A828)
Door_AqueductSave_0:
    dw RoomHeader_Aqueduct                                               ;83A828;
    db $00,$04,$01,$26,$00,$02                                           ;83A82A;
    dw $8000,$0000                                                       ;83A830;

%anchor($83A834)
Door_ThePrecious_0:
    dw RoomHeader_Colosseum                                              ;83A834;
    db $00,$05,$6E,$16,$06,$01                                           ;83A836;
    dw $8000,$0000                                                       ;83A83C;

%anchor($83A840)
Door_ThePrecious_1:
    dw RoomHeader_Draygon                                                ;83A840;
    db $00,$05,$1E,$06,$01,$00                                           ;83A842;
    dw $8000,$0000                                                       ;83A848;

%anchor($83A84C)
Door_BotwoonETank_0:
    dw RoomHeader_Botwoon                                                ;83A84C;
    db $00,$05,$1E,$06,$01,$00                                           ;83A84E;
    dw $8000                                                             ;83A854;
    dw DoorASM_Scroll_1_Blue_duplicate                                   ;83A856;

%anchor($83A858)
Door_BotwoonETank_1:
    dw RoomHeader_BotwoonQuicksand                                       ;83A858;
    db $00,$02,$00,$00,$01,$00                                           ;83A85A;
    dw $8000,$0000                                                       ;83A860;

%anchor($83A864)
Door_BotwoonETank_2:
    dw RoomHeader_BotwoonQuicksand                                       ;83A864;
    db $00,$02,$00,$00,$00,$00                                           ;83A866;
    dw $8000,$0000                                                       ;83A86C;

%anchor($83A870)
Door_BotwoonETank_3:
    dw RoomHeader_HalfieClimb                                            ;83A870;
    db $00,$04,$01,$26,$00,$02                                           ;83A872;
    dw $8000,$0000                                                       ;83A878;

%anchor($83A87C)
Door_DraygonSave_0:
    dw RoomHeader_MaridiaEnergyRefill                                    ;83A87C;
    db $00,$04,$01,$06,$00,$00                                           ;83A87E;
    dw $8000,$0000                                                       ;83A884;

%anchor($83A888)
Door_DraygonSave_1:
    dw RoomHeader_Colosseum                                              ;83A888;
    db $00,$05,$6E,$06,$06,$00                                           ;83A88A;
    dw $8000,$0000                                                       ;83A890;

%anchor($83A894)
Door_MaridiaMissileRefill_0:
    dw RoomHeader_HalfieClimb                                            ;83A894;
    db $00,$05,$4E,$26,$04,$02                                           ;83A896;
    dw $8000                                                             ;83A89C;
    dw DoorASM_Scroll_A_Red_B_Blue                                       ;83A89E;

%anchor($83A8A0)
Door_PlasmaBeachQuicksand_0:
    dw RoomHeader_Butterfly                                              ;83A8A0;
    db $00,$02,$00,$00,$00,$00                                           ;83A8A2;
    dw $8000,$0000                                                       ;83A8A8;

%anchor($83A8AC)
Door_BotwoonQuicksand_0:
    dw RoomHeader_BelowBotwoonETank                                      ;83A8AC;
    db $00,$02,$00,$00,$02,$00                                           ;83A8AE;
    dw $8000,$0000                                                       ;83A8B4;

%anchor($83A8B8)
Door_BotwoonQuicksand_1:
    dw RoomHeader_BelowBotwoonETank                                      ;83A8B8;
    db $00,$02,$00,$00,$03,$00                                           ;83A8BA;
    dw $8000,$0000                                                       ;83A8C0;

%anchor($83A8C4)
Door_Shaktool_0:
    dw RoomHeader_EastPants                                              ;83A8C4;
    db $00,$05,$0E,$16,$00,$01                                           ;83A8C6;
    dw $8000                                                             ;83A8CC;
    dw DoorASM_Scroll_1_Blue_2_Red_duplicate                             ;83A8CE;

%anchor($83A8D0)
Door_Shaktool_1:
    dw RoomHeader_Springball                                             ;83A8D0;
    db $00,$04,$01,$06,$00,$00                                           ;83A8D2;
    dw $8000,$0000                                                       ;83A8D8;

%anchor($83A8DC)
Door_HalfieClimb_0:
    dw RoomHeader_BotwoonETank                                           ;83A8DC;
    db $00,$05,$6E,$06,$06,$00                                           ;83A8DE;
    dw $8000,$0000                                                       ;83A8E4;

%anchor($83A8E8)
Door_HalfieClimb_1:
    dw RoomHeader_Colosseum                                              ;83A8E8;
    db $00,$04,$01,$06,$00,$00                                           ;83A8EA;
    dw $8000,$0000                                                       ;83A8F0;

%anchor($83A8F4)
Door_HalfieClimb_2:
    dw RoomHeader_MaridiaMissileRefill                                   ;83A8F4;
    db $00,$04,$01,$06,$00,$00                                           ;83A8F6;
    dw $8000,$0000                                                       ;83A8FC;

%anchor($83A900)
Door_HalfieClimb_3:
    dw RoomHeader_EastCactusAlley                                        ;83A900;
    db $00,$05,$4E,$16,$04,$01                                           ;83A902;
    dw $8000,$0000                                                       ;83A908;

%anchor($83A90C)
Door_Botwoon_0:
    dw RoomHeader_BotwoonHallway                                         ;83A90C;
    db $00,$05,$3E,$06,$03,$00                                           ;83A90E;
    dw $8000,$0000                                                       ;83A914;

%anchor($83A918)
Door_Botwoon_1:
    dw RoomHeader_BotwoonETank                                           ;83A918;
    db $00,$04,$01,$06,$00,$00                                           ;83A91A;
    dw $8000,$0000                                                       ;83A920;

%anchor($83A924)
Door_SpaceJump_0:
    dw RoomHeader_Draygon                                                ;83A924;
    db $00,$04,$01,$16,$00,$01                                           ;83A926;
    dw $8000,$0000                                                       ;83A92C;

%anchor($83A930)
Door_MaridiaEnergyRefill_0:
    dw RoomHeader_DraygonSave                                            ;83A930;
    db $00,$05,$0E,$06,$00,$00                                           ;83A932;
    dw $8000,$0000                                                       ;83A938;

%anchor($83A93C)
Door_WestCactusAlley_0:
    dw RoomHeader_Butterfly                                              ;83A93C;
    db $00,$05,$0E,$06,$00,$00                                           ;83A93E;
    dw $8000,$0000                                                       ;83A944;

%anchor($83A948)
Door_WestCactusAlley_1:
    dw RoomHeader_EastCactusAlley                                        ;83A948;
    db $00,$04,$01,$06,$00,$00                                           ;83A94A;
    dw $8000,$0000                                                       ;83A950;

%anchor($83A954)
Door_EastCactusAlley_0:
    dw RoomHeader_WestCactusAlley                                        ;83A954;
    db $00,$05,$0E,$06,$00,$00                                           ;83A956;
    dw $8000,$0000                                                       ;83A95C;

%anchor($83A960)
Door_EastCactusAlley_1:
    dw RoomHeader_HalfieClimb                                            ;83A960;
    db $00,$04,$01,$16,$00,$01                                           ;83A962;
    dw $8000,$0000                                                       ;83A968;

%anchor($83A96C)
Door_Draygon_0:
    dw RoomHeader_ThePrecious                                            ;83A96C;
    db $00,$04,$01,$26,$00,$02                                           ;83A96E;
    dw $8000                                                             ;83A974;
    dw DoorASM_Scroll_0_2_Green_duplicate                                ;83A976;

%anchor($83A978)
Door_Draygon_1:
    dw RoomHeader_SpaceJump                                              ;83A978;
    db $00,$05,$0E,$06,$00,$00                                           ;83A97A;
    dw $8000,$0000                                                       ;83A980;

%anchor($83A984)
Door_TourianFirst_0:
    dw RoomHeader_Metroids1                                              ;83A984;
    db $00,$05,$5E,$06,$05,$00                                           ;83A986;
    dw $8000,$0000                                                       ;83A98C;

%anchor($83A990)
Door_TourianFirst_1:
    dw RoomHeader_Statues                                                ;83A990;
    db $D0,$03,$00,$00,$00,$01                                           ;83A992;
    dw $0000                                                             ;83A998;
    dw DoorASM_Scroll_0_1_Green_duplicate                                ;83A99A;

%anchor($83A99C)
Door_TourianFirst_3:
    dw RoomHeader_UpperTourianSave                                       ;83A99C;
    db $00,$04,$01,$06,$00,$00                                           ;83A99E;
    dw $8000,$0000                                                       ;83A9A4;

%anchor($83A9A8)
Door_Metroids1_0:
    dw RoomHeader_TourianFirst                                           ;83A9A8;
    db $00,$04,$01,$36,$00,$03                                           ;83A9AA;
    dw $8000,$0000                                                       ;83A9B0;

%anchor($83A9B4)
Door_Metroids1_1:
    dw RoomHeader_Metroids2                                              ;83A9B4;
    db $00,$05,$0E,$06,$00,$00                                           ;83A9B6;
    dw $8000,$0000                                                       ;83A9BC;

%anchor($83A9C0)
Door_Metroids2_0:
    dw RoomHeader_Metroids1                                              ;83A9C0;
    db $00,$04,$01,$06,$00,$00                                           ;83A9C2;
    dw $8000,$0000                                                       ;83A9C8;

%anchor($83A9CC)
Door_Metroids2_1:
    dw RoomHeader_Metroids3                                              ;83A9CC;
    db $00,$04,$01,$06,$00,$00                                           ;83A9CE;
    dw $8000,$0000                                                       ;83A9D4;

%anchor($83A9D8)
Door_Metroids3_0:
    dw RoomHeader_Metroids2                                              ;83A9D8;
    db $00,$05,$0E,$16,$00,$01                                           ;83A9DA;
    dw $8000,$0000                                                       ;83A9E0;

%anchor($83A9E4)
Door_Metroids3_1:
    dw RoomHeader_Metroids4                                              ;83A9E4;
    db $00,$04,$01,$06,$00,$00                                           ;83A9E6;
    dw $8000,$0000                                                       ;83A9EC;

%anchor($83A9F0)
Door_Metroids4_0:
    dw RoomHeader_Metroids3                                              ;83A9F0;
    db $00,$05,$5E,$06,$05,$00                                           ;83A9F2;
    dw $8000,$0000                                                       ;83A9F8;

%anchor($83A9FC)
Door_Metroids4_1:
    dw RoomHeader_BlueHopper                                             ;83A9FC;
    db $00,$06,$16,$03,$01,$00                                           ;83A9FE;
    dw $8000,$0000                                                       ;83AA04;

%anchor($83AA08)
Door_BlueHopper_0:
    dw RoomHeader_Metroids4                                              ;83AA08;
    db $00,$07,$06,$1E,$00,$01                                           ;83AA0A;
    dw $01C0,$0000                                                       ;83AA10;

%anchor($83AA14)
Door_BlueHopper_1:
    dw RoomHeader_DustTorizo                                             ;83AA14;
    db $00,$05,$1E,$06,$01,$00                                           ;83AA16;
    dw $8000,$0000                                                       ;83AA1C;

%anchor($83AA20)
Door_DustTorizo_0:
    dw RoomHeader_BlueHopper                                             ;83AA20;
    db $00,$04,$01,$06,$00,$00                                           ;83AA22;
    dw $8000,$0000                                                       ;83AA28;

%anchor($83AA2C)
Door_DustTorizo_1:
    dw RoomHeader_BigBoy                                                 ;83AA2C;
    db $00,$05,$3E,$06,$03,$00                                           ;83AA2E;
    dw $8000,$0000                                                       ;83AA34;

%anchor($83AA38)
Door_BigBoy_0:
    dw RoomHeader_DustTorizo                                             ;83AA38;
    db $00,$04,$01,$06,$00,$00                                           ;83AA3A;
    dw $8000,$0000                                                       ;83AA40;

%anchor($83AA44)
Door_BigBoy_1:
    dw RoomHeader_Seaweed                                                ;83AA44;
    db $00,$01,$00,$00,$00,$00                                           ;83AA46;
    dw $8000,$0000                                                       ;83AA4C;

%anchor($83AA50)
Door_Seaweed_0:
    dw RoomHeader_BigBoy                                                 ;83AA50;
    db $00,$00,$00,$00,$00,$00                                           ;83AA52;
    dw $8000,$0000                                                       ;83AA58;

%anchor($83AA5C)
Door_Seaweed_1:
    dw RoomHeader_TourianEyeDoor                                         ;83AA5C;
    db $00,$04,$01,$06,$00,$00                                           ;83AA5E;
    dw $8000,$0000                                                       ;83AA64;

%anchor($83AA68)
Door_Seaweed_2:
    dw RoomHeader_TourianRecharge                                        ;83AA68;
    db $00,$05,$0E,$06,$00,$00                                           ;83AA6A;
    dw $8000,$0000                                                       ;83AA70;

%anchor($83AA74)
Door_TourianRecharge_0:
    dw RoomHeader_Seaweed                                                ;83AA74;
    db $00,$04,$01,$16,$00,$01                                           ;83AA76;
    dw $8000,$0000                                                       ;83AA7C;

%anchor($83AA80)
Door_MotherBrain_0:
    dw RoomHeader_RinkaShaft                                             ;83AA80;
    db $00,$04,$01,$26,$00,$02                                           ;83AA82;
    dw $8000,$0000                                                       ;83AA88;

%anchor($83AA8C)
Door_MotherBrain_1:
    dw RoomHeader_TourianEscape1                                         ;83AA8C;
    db $00,$09,$1F,$06,$01,$00                                           ;83AA8E;
    dw $8000,$0000                                                       ;83AA94;

%anchor($83AA98)
Door_TourianEyeDoor_0:
    dw RoomHeader_Seaweed                                                ;83AA98;
    db $00,$05,$0E,$16,$00,$01                                           ;83AA9A;
    dw $8000,$0000                                                       ;83AAA0;

%anchor($83AAA4)
Door_TourianEyeDoor_1:
    dw RoomHeader_RinkaShaft                                             ;83AAA4;
    db $00,$04,$01,$06,$00,$00                                           ;83AAA6;
    dw $8000,$0000                                                       ;83AAAC;

%anchor($83AAB0)
Door_RinkaShaft_0:
    dw RoomHeader_TourianEyeDoor                                         ;83AAB0;
    db $00,$05,$3E,$06,$03,$00                                           ;83AAB2;
    dw $8000,$0000                                                       ;83AAB8;

%anchor($83AABC)
Door_RinkaShaft_1:
    dw RoomHeader_MotherBrainSave                                        ;83AABC;
    db $00,$05,$0E,$06,$00,$00                                           ;83AABE;
    dw $8000,$0000                                                       ;83AAC4;

%anchor($83AAC8)
Door_RinkaShaft_2:
    dw RoomHeader_MotherBrain                                            ;83AAC8;
    db $00,$05,$3E,$06,$03,$00                                           ;83AACA;
    dw $8000,$0000                                                       ;83AAD0;

%anchor($83AAD4)
Door_MotherBrainSave_0:
    dw RoomHeader_RinkaShaft                                             ;83AAD4;
    db $00,$04,$01,$16,$00,$01                                           ;83AAD6;
    dw $8000,$0000                                                       ;83AADC;

%anchor($83AAE0)
Door_TourianEscape1_0:
    dw RoomHeader_MotherBrain                                            ;83AAE0;
    db $00,$04,$01,$06,$00,$00                                           ;83AAE2;
    dw $8000,$0000                                                       ;83AAE8;

%anchor($83AAEC)
Door_TourianEscape1_1:
    dw RoomHeader_TourianEscape2                                         ;83AAEC;
    db $00,$06,$06,$03,$00,$00                                           ;83AAEE;
    dw $8000,$0000                                                       ;83AAF4;

%anchor($83AAF8)
Door_TourianEscape2_0:
    dw RoomHeader_TourianEscape1                                         ;83AAF8;
    db $00,$07,$06,$0C,$00,$00                                           ;83AAFA;
    dw $0200,$0000                                                       ;83AB00;

%anchor($83AB04)
Door_TourianEscape2_1:
    dw RoomHeader_TourianEscape3                                         ;83AB04;
    db $00,$04,$01,$16,$00,$01                                           ;83AB06;
    dw $8000,$0000                                                       ;83AB0C;

%anchor($83AB10)
Door_TourianEscape3_0:
    dw RoomHeader_TourianEscape2                                         ;83AB10;
    db $00,$05,$0E,$16,$00,$01                                           ;83AB12;
    dw $8000,$0000                                                       ;83AB18;

%anchor($83AB1C)
Door_TourianEscape3_1:
    dw RoomHeader_TourianEscape4                                         ;83AB1C;
    db $00,$04,$01,$36,$00,$03                                           ;83AB1E;
    dw $8000,$0000                                                       ;83AB24;

%anchor($83AB28)
Door_TourianEscape4_0:
    dw RoomHeader_TourianEscape3                                         ;83AB28;
    db $00,$05,$5E,$06,$05,$00                                           ;83AB2A;
    dw $8000,$0000                                                       ;83AB30;

%anchor($83AB34)
Door_TourianEscape4_1:
    dw RoomHeader_Climb                                                  ;83AB34;
    db $40,$04,$01,$86,$00,$08                                           ;83AB36;
    dw $8000                                                             ;83AB3C;
    dw DoorASM_Scroll_8_Blue_9_Red                                       ;83AB3E;

%anchor($83AB40)
Door_UpperTourianSave_0:
    dw RoomHeader_TourianFirst                                           ;83AB40;
    db $00,$05,$0E,$36,$00,$03                                           ;83AB42;
    dw $8000,$0000                                                       ;83AB48;

%anchor($83AB4C)
Door_CeresElev_0:
    dw RoomHeader_FallingTile                                            ;83AB4C;
    db $00,$00,$00,$00,$00,$00                                           ;83AB4E;
    dw $8000                                                             ;83AB54;
    dw DoorASM_FromCeresElevatorShaft                                    ;83AB56;

%anchor($83AB58)
Door_FallingTile_0:
    dw RoomHeader_CeresElev                                              ;83AB58;
    db $00,$01,$00,$00,$00,$02                                           ;83AB5A;
    dw $8000                                                             ;83AB60;
    dw DoorASM_ToCeresElevatorShaft                                      ;83AB62;

%anchor($83AB64)
Door_FallingTile_1:
    dw RoomHeader_MagnetStairs                                           ;83AB64;
    db $00,$00,$00,$00,$00,$00                                           ;83AB66;
    dw $8000,$0000                                                       ;83AB6C;

%anchor($83AB70)
Door_MagnetStairs_0:
    dw RoomHeader_FallingTile                                            ;83AB70;
    db $00,$01,$00,$00,$01,$00                                           ;83AB72;
    dw $8000,$0000                                                       ;83AB78;

%anchor($83AB7C)
Door_MagnetStairs_1:
    dw RoomHeader_DeadScientist                                          ;83AB7C;
    db $00,$00,$00,$00,$00,$00                                           ;83AB7E;
    dw $8000,$0000                                                       ;83AB84;

%anchor($83AB88)
Door_DeadScientist_0:
    dw RoomHeader_MagnetStairs                                           ;83AB88;
    db $00,$01,$00,$00,$00,$01                                           ;83AB8A;
    dw $8000,$0000                                                       ;83AB90;

%anchor($83AB94)
Door_DeadScientist_1:
    dw RoomHeader_58Escape                                               ;83AB94;
    db $00,$00,$00,$00,$00,$00                                           ;83AB96;
    dw $8000,$0000                                                       ;83AB9C;

%anchor($83ABA0)
Door_58Escape_0:
    dw RoomHeader_DeadScientist                                          ;83ABA0;
    db $00,$01,$00,$00,$01,$00                                           ;83ABA2;
    dw $8000,$0000                                                       ;83ABA8;

%anchor($83ABAC)
Door_58Escape_1:
    dw RoomHeader_CeresRidley                                            ;83ABAC;
    db $00,$00,$00,$00,$00,$00                                           ;83ABAE;
    dw $8000,$0000                                                       ;83ABB4;

%anchor($83ABB8)
Door_CeresRidley:
    dw RoomHeader_58Escape                                               ;83ABB8;
    db $00,$01,$00,$00,$01,$00                                           ;83ABBA;
    dw $8000,$0000                                                       ;83ABC0;

%anchor($83ABC4)
UNUSED_Door_Debug_0_83ABC4:
    dw RoomHeader_Debug                                                  ;83ABC4;
    db $05,$00,$00,$01,$00,$00,$01                                       ;83ABC6;
    dw $0000                                                             ;83ABCD;

%anchor($83ABCF)
UNUSED_Door_Debug_1_83ABCF:
    dw RoomHeader_Debug                                                  ;83ABCF;
    db $05,$00,$00,$01,$01,$00,$01                                       ;83ABD1;
    dw $0000                                                             ;83ABD8;

%anchor($83ABDA)
UNUSED_Door_Debug_2_83ABDA:
    dw RoomHeader_Debug                                                  ;83ABDA;
    db $04,$00,$00,$00,$00,$00,$01                                       ;83ABDC;
    dw $0000                                                             ;83ABE3;

%anchor($83ABE5)
UNUSED_Door_Debug_3_83ABE5:
    dw RoomHeader_Debug                                                  ;83ABE5;
    db $04,$00,$00,$00,$01,$00,$01                                       ;83ABE7;
    dw $0000                                                             ;83ABEE;

%anchor($83ABF0)
FXType_Tilemap_Pointers:
; This table is too short, it's missing the entries for 28h/2Ah/2Ch (Ceres Ridley/elevator / haze)
; This is fine, because those rooms disabled layer 3 anyway, but it does mean garbage is loaded to VRAM from pointers in the following table
; In bank $8A
    dw $0000                                                             ;83ABF0; 0: None
    dw FX_Layer3_Tilemaps_lava                                           ;83ABF2; 2: Lava
    dw FX_Layer3_Tilemaps_acid                                           ;83ABF4; 4: Acid
    dw FX_Layer3_Tilemaps_water                                          ;83ABF6; 6: Water
    dw FX_Layer3_Tilemaps_spores                                         ;83ABF8; 8: Spores
    dw FX_Layer3_Tilemaps_rain                                           ;83ABFA; Ah: Rain
    dw FX_Layer3_Tilemaps_fog                                            ;83ABFC; Ch: Fog
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;83ABFE;
    dw $0000,$0000,$0000,$0000                                           ;83AC0E;
    dw FX_Layer3_Tilemaps_water                                          ;83AC16; 26h: Tourian entrance statue

%anchor($83AC18)
FXType_Function_Pointers:
    dw RTL_88B278                                                        ;83AC18; ; 0: None
    dw FXType_2_Lava                                                     ;83AC1A; ; 2: Lava
    dw FXType_4_Acid                                                     ;83AC1C; ; 4: Acid
    dw FXType_6_Water                                                    ;83AC1E; ; 6: Water
    dw FXType_8_Spores                                                   ;83AC20; ; 8: Spores
    dw FXType_A_Rain                                                     ;83AC22; ; Ah: Rain
    dw FXType_C_Fog                                                      ;83AC24; ; Ch: Fog
    dw RTL_88B278                                                        ;83AC26;
    dw RTL_88B278                                                        ;83AC28;
    dw RTL_88B278                                                        ;83AC2A;
    dw RTL_88B278                                                        ;83AC2C;
    dw RTL_88B278                                                        ;83AC2E;
    dw RTL_88B278                                                        ;83AC30;
    dw RTL_88B278                                                        ;83AC32;
    dw RTL_88B278                                                        ;83AC34;
    dw RTL_88B278                                                        ;83AC36;
    dw FXType_20_ScrollingSky_RoomSetupASM_ScrollingSkyLand              ;83AC38; ; 20h: Scrolling sky
    dw FXType_20_22_ScrollingSky                                         ;83AC3A; ; 22h: Unused
    dw FXType_24_Fireflea                                                ;83AC3C; ; 24h: Fireflea
    dw FXType_26_TourianEntranceStatue                                   ;83AC3E; ; 26h: Tourian entrance statue
    dw FXType_28_CeresRidley                                             ;83AC40; ; 28h: Ceres Ridley
    dw FXType_2A_CeresElevator                                           ;83AC42; ; 2Ah: Ceres elevator
    dw FXType_2C_CeresHaze                                               ;83AC44; ; 2Ch: Ceres haze

%anchor($83AC46)
AreaSpecific_PaletteFXObjectList_Pointers:
; Loaded by $89:AB82
; Indexed by area index
    dw Crateria_PaletteFXObjectList                                      ;83AC46;
    dw Brinstar_PaletteFXObjectList                                      ;83AC48;
    dw Norfair_PaletteFXObjectList                                       ;83AC4A;
    dw WreckedShip_PaletteFXObjectList                                   ;83AC4C;
    dw Maridia_PaletteFXObjectList                                       ;83AC4E;
    dw Tourian_PaletteFXObjectList                                       ;83AC50;
    dw Ceres_PaletteFXObjectList                                         ;83AC52;
    dw Debug_PaletteFXObjectList                                         ;83AC54;

%anchor($83AC56)
AreaSpecific_AnimatedTilesObjectList_Pointers:
; Loaded by $89:AB82
; Indexed by area index
    dw Crateria_AnimatedTilesObjectList                                  ;83AC56;
    dw Brinstar_AnimatedTilesObjectList                                  ;83AC58;
    dw Norfair_AnimatedTilesObjectList                                   ;83AC5A;
    dw WreckedShip_AnimatedTilesObjectList                               ;83AC5C;
    dw Maridia_AnimatedTilesObjectList                                   ;83AC5E;
    dw Tourian_AnimatedTilesObjectList                                   ;83AC60;
    dw Ceres_AnimatedTilesObjectList                                     ;83AC62;
    dw Debug_AnimatedTilesObjectList                                     ;83AC64;

%anchor($83AC66)
Crateria_PaletteFXObjectList:
    dw PaletteFXObjects_Crateria1_Lightning                              ;83AC66;
    dw PaletteFXObjects_Crateria2_UpperCrateriaRedFlashing               ;83AC68;
    dw PaletteFXObjects_Crateria4_YellowLightning                        ;83AC6A;
    dw PaletteFXObjects_Crateria8_OldTourianRedFlashing                  ;83AC6C;
    dw PaletteFXObjects_Crateria10_OldTourianBGRailingsFlashYellow       ;83AC6E;
    dw PaletteFXObjects_Crateria20_OldTourianBGPanelsFlashYellow         ;83AC70;
    dw PaletteFXObjects_Crateria40_SlightlyModifiesAPixelInCREBlock      ;83AC72;
    dw PaletteFXObjects_Crateria80_Brinstar4_BeaconFlashing              ;83AC74;

%anchor($83AC76)
Crateria_AnimatedTilesObjectList:
    dw AnimatedTilesObjects_FX_horizontalSpikes                          ;83AC76;
    dw AnimatedTilesObjects_FX_verticalSpikes                            ;83AC78;
    dw AnimatedTilesObjects_FX_crateriaLake                              ;83AC7A;
    dw UNUSED_AnimatedTilesObjects_FX_unusedCrateriaLava_0_878263        ;83AC7C;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AC7E;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AC80;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AC82;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AC84;

%anchor($83AC86)
Brinstar_PaletteFXObjectList:
    dw PaletteFXObjects_Brinstar1_BlueBackgroundSpores                   ;83AC86;
    dw PaletteFXObjects_Brinstar2_RedBackgroundGlow                      ;83AC88;
    dw PaletteFXObjects_Crateria80_Brinstar4_BeaconFlashing              ;83AC8A;
    dw PaletteFXObjects_Brinstar8_SporeSpawnBlueBackgroundSpores         ;83AC8C;
    dw PaletteFXObjects_Nothing                                          ;83AC8E;
    dw PaletteFXObjects_Nothing                                          ;83AC90;
    dw PaletteFXObjects_Nothing                                          ;83AC92;
    dw PaletteFXObjects_Nothing                                          ;83AC94;

%anchor($83AC96)
Brinstar_AnimatedTilesObjectList:
    dw AnimatedTilesObjects_FX_horizontalSpikes                          ;83AC96;
    dw AnimatedTilesObjects_FX_verticalSpikes                            ;83AC98;
    dw AnimatedTilesObjects_FX_brinstarMouth                             ;83AC9A;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AC9C;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AC9E;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACA0;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACA2;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACA4;

%anchor($83ACA6)
Norfair_PaletteFXObjectList:
    dw PaletteFXObjects_Norfair1_Tourian1                                ;83ACA6;
    dw PaletteFXObjects_Norfair2                                         ;83ACA8;
    dw PaletteFXObjects_Norfair4                                         ;83ACAA;
    dw PaletteFXObjects_Norfair8                                         ;83ACAC;
    dw PaletteFXObjects_Norfair10                                        ;83ACAE;
    dw PaletteFXObjects_Nothing                                          ;83ACB0;
    dw PaletteFXObjects_Nothing                                          ;83ACB2;
    dw PaletteFXObjects_Nothing                                          ;83ACB4;

%anchor($83ACB6)
Norfair_AnimatedTilesObjectList:
    dw AnimatedTilesObjects_FX_horizontalSpikes                          ;83ACB6;
    dw AnimatedTilesObjects_FX_verticalSpikes                            ;83ACB8;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACBA;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACBC;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACBE;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACC0;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACC2;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACC4;

%anchor($83ACC6)
WreckedShip_PaletteFXObjectList:
    dw PaletteFXObjects_WreckedShip1_GreenLights                         ;83ACC6;
    dw PaletteFXObjects_Nothing                                          ;83ACC8;
    dw PaletteFXObjects_Nothing                                          ;83ACCA;
    dw PaletteFXObjects_Nothing                                          ;83ACCC;
    dw PaletteFXObjects_Nothing                                          ;83ACCE;
    dw PaletteFXObjects_Nothing                                          ;83ACD0;
    dw PaletteFXObjects_Nothing                                          ;83ACD2;
    dw PaletteFXObjects_Nothing                                          ;83ACD4;

%anchor($83ACD6)
WreckedShip_AnimatedTilesObjectList:
    dw AnimatedTilesObjects_FX_horizontalSpikes                          ;83ACD6;
    dw AnimatedTilesObjects_FX_verticalSpikes                            ;83ACD8;
    dw AnimatedTilesObjects_FX_wreckedShipTreadmillRightwards            ;83ACDA;
    dw AnimatedTilesObjects_FX_wreckedShipTreadmillLeftwards             ;83ACDC;
    dw AnimatedTilesObjects_FX_wreckedShipScreen                         ;83ACDE;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACE0;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACE2;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACE4;

%anchor($83ACE6)
Maridia_PaletteFXObjectList:
    dw PaletteFXObjects_Maridia1_SandPits                                ;83ACE6;
    dw PaletteFXObjects_Maridia2_SandFalls                               ;83ACE8;
    dw PaletteFXObjects_Maridia4_BackgroundWaterfalls                    ;83ACEA;
    dw PaletteFXObjects_Nothing                                          ;83ACEC;
    dw PaletteFXObjects_Nothing                                          ;83ACEE;
    dw PaletteFXObjects_Nothing                                          ;83ACF0;
    dw PaletteFXObjects_Nothing                                          ;83ACF2;
    dw PaletteFXObjects_Nothing                                          ;83ACF4;

%anchor($83ACF6)
Maridia_AnimatedTilesObjectList:
    dw AnimatedTilesObjects_FX_horizontalSpikes                          ;83ACF6;
    dw AnimatedTilesObjects_FX_verticalSpikes                            ;83ACF8;
    dw AnimatedTilesObjects_FX_maridiaSandCeiling                        ;83ACFA;
    dw AnimatedTilesObjects_FX_maridiaSandFalling                        ;83ACFC;
    dw AnimatedTilesObjects_FX_nothing                                   ;83ACFE;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD00;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD02;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD04;

%anchor($83AD06)
Tourian_PaletteFXObjectList:
    dw PaletteFXObjects_Norfair1_Tourian1                                ;83AD06;
    dw PaletteFXObjects_Tourian2_GlowingArkanoidBlocksAndRedOrbs         ;83AD08;
    dw UNUSED_PaletteFXObjects_Tourian4_8DF7A5                           ;83AD0A;
    dw PaletteFXObjects_Tourian8_ShutterRedFlashing                      ;83AD0C;
    dw PaletteFXObjects_Tourian10_BackgroundRedFlashing                  ;83AD0E;
    dw PaletteFXObjects_Tourian20_GeneralLevelRedFlashing                ;83AD10;
    dw PaletteFXObjects_Tourian40_RedFlashingArkanoidBlocksRedOrbs       ;83AD12;
    dw PaletteFXObjects_Nothing                                          ;83AD14;

%anchor($83AD16)
Tourian_AnimatedTilesObjectList:
    dw AnimatedTilesObjects_FX_horizontalSpikes                          ;83AD16;
    dw AnimatedTilesObjects_FX_verticalSpikes                            ;83AD18;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD1A;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD1C;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD1E;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD20;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD22;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD24;

%anchor($83AD26)
Ceres_PaletteFXObjectList:
    dw PaletteFXObjects_Nothing                                          ;83AD26;
    dw PaletteFXObjects_Nothing                                          ;83AD28;
    dw PaletteFXObjects_Nothing                                          ;83AD2A;
    dw PaletteFXObjects_Nothing                                          ;83AD2C;
    dw PaletteFXObjects_Nothing                                          ;83AD2E;
    dw PaletteFXObjects_Nothing                                          ;83AD30;
    dw PaletteFXObjects_Nothing                                          ;83AD32;
    dw PaletteFXObjects_Nothing                                          ;83AD34;

%anchor($83AD36)
Ceres_AnimatedTilesObjectList:
    dw AnimatedTilesObjects_FX_horizontalSpikes                          ;83AD36;
    dw AnimatedTilesObjects_FX_verticalSpikes                            ;83AD38;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD3A;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD3C;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD3E;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD40;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD42;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD44;

%anchor($83AD46)
Debug_PaletteFXObjectList:
    dw PaletteFXObjects_Nothing                                          ;83AD46;
    dw PaletteFXObjects_Nothing                                          ;83AD48;
    dw PaletteFXObjects_Nothing                                          ;83AD4A;
    dw PaletteFXObjects_Nothing                                          ;83AD4C;
    dw PaletteFXObjects_Nothing                                          ;83AD4E;
    dw PaletteFXObjects_Nothing                                          ;83AD50;
    dw PaletteFXObjects_Nothing                                          ;83AD52;
    dw PaletteFXObjects_Nothing                                          ;83AD54;

%anchor($83AD56)
Debug_AnimatedTilesObjectList:
    dw AnimatedTilesObjects_FX_horizontalSpikes                          ;83AD56;
    dw AnimatedTilesObjects_FX_verticalSpikes                            ;83AD58;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD5A;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD5C;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD5E;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD60;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD62;
    dw AnimatedTilesObjects_FX_nothing                                   ;83AD64;

%anchor($83AD66)
Freespace_Bank83_AD66:                                                   ;83AD66;
; $AD66 bytes
