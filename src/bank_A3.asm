
org $A38000


%anchor($A38000)
CommonA3_GrappleAI_NoInteraction:
    JSL.L GrappleAI_SwitchEnemyAIToMainAI                                ;A38000;
    RTL                                                                  ;A38004;


%anchor($A38005)
CommonA3_GrappleAI_SamusLatchesOn:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple                            ;A38005;
    RTL                                                                  ;A38009;


%anchor($A3800A)
CommonA3_GrappleAI_KillEnemy:
    JSL.L GrappleAI_EnemyGrappleDeath                                    ;A3800A;
    RTL                                                                  ;A3800E;


%anchor($A3800F)
CommonA3_GrappleAI_CancelGrappleBeam:
    JSL.L GrappleAI_SwitchToFrozenAI                                     ;A3800F;
    RTL                                                                  ;A38013;


%anchor($A38014)
CommonA3_GrappleAI_SamusLatchesOn_NoInvincibility:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple_NoInvincibility            ;A38014;
    RTL                                                                  ;A38018;


%anchor($A38019)
UNUSED_CommonA3_GrappleAI_SamusLatchesOn_ParalyzeEnemy_A38019:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple_ParalyzeEnemy              ;A38019;
    RTL                                                                  ;A3801D;


%anchor($A3801E)
CommonA3_GrappleAI_HurtSamus:
    JSL.L GrappleAI_SwitchToFrozenAI_duplicate                           ;A3801E;
    RTL                                                                  ;A38022;


%anchor($A38023)
CommonA3_NormalEnemyTouchAI:
    JSL.L NormalEnemyTouchAI                                             ;A38023;
    RTL                                                                  ;A38027;


%anchor($A38028)
CommonA3_NormalTouchAI_NoDeathCheck:
    JSL.L NormalEnemyTouchAI_NoDeathCheck_External                       ;A38028;
    RTL                                                                  ;A3802C;


%anchor($A3802D)
CommonA3_NormalEnemyShotAI:
    JSL.L NormalEnemyShotAI                                              ;A3802D;
    RTL                                                                  ;A38031;


%anchor($A38032)
CommonA3_NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic:
    JSL.L NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic_External     ;A38032;
    RTL                                                                  ;A38036;


%anchor($A38037)
CommonA3_NormalEnemyPowerBombAI:
    JSL.L NormalEnemyPowerBombAI                                         ;A38037;
    RTL                                                                  ;A3803B;


%anchor($A3803C)
CommonA3_NormalEnemyPowerBombAI_NoDeathCheck:
    JSL.L NormalEnemyPowerBombAI_NoDeathCheck_External                   ;A3803C;
    RTL                                                                  ;A38040;


%anchor($A38041)
CommonA3_NormalEnemyFrozenAI:
    JSL.L NormalEnemyFrozenAI                                            ;A38041;
    RTL                                                                  ;A38045;


%anchor($A38046)
CommonA3_CreateADudShot:
    JSL.L CreateADudShot                                                 ;A38046;
    RTL                                                                  ;A3804A;


%anchor($A3804B)
RTS_A3804B:
    RTS                                                                  ;A3804B;


%anchor($A3804C)
RTL_A3804C:
    RTL                                                                  ;A3804C;


%anchor($A3804D)
Spritemap_CommonA3_Nothing:
    dw $0000                                                             ;A3804D;

%anchor($A3804F)
ExtendedSpritemap_CommonA3_Nothing:
    dw $0001                                                             ;A3804F;
    dw $0000,$0000
    dw Spritemap_CommonA3_Nothing                                        ;A38055;
    dw Hitbox_CommonA3_Nothing                                           ;A38057;

%anchor($A38059)
Hitbox_CommonA3_Nothing:
    dw $0001                                                             ;A38059;
    dw $0000,$0000,$0000,$0000
    dw CommonA3_NormalEnemyTouchAI                                       ;A38063;
    dw CommonA3_NormalEnemyShotAI                                        ;A38065;

%anchor($A38067)
InstList_CommonA3_DeleteEnemy:
    dw Instruction_CommonA3_DeleteEnemy                                  ;A38067;

%anchor($A38069)
NOPNOP_A38069:
    NOP                                                                  ;A38069;
    NOP                                                                  ;A3806A;

%anchor($A3806B)
Instruction_CommonA3_Enemy0FB2_InY:
    LDA.W $0000,Y                                                        ;A3806B;
    STA.W $0FB2,X                                                        ;A3806E;
    INY                                                                  ;A38071;
    INY                                                                  ;A38072;
    RTL                                                                  ;A38073;


%anchor($A38074)
Instruction_CommonA3_SetEnemy0FB2ToRTS:
    LDA.W #RTS_A3807B                                                    ;A38074;
    STA.W $0FB2,X                                                        ;A38077;
    RTL                                                                  ;A3807A;


%anchor($A3807B)
RTS_A3807B:
    RTS                                                                  ;A3807B;


%anchor($A3807C)
Instruction_CommonA3_DeleteEnemy:
    LDA.W $0F86,X                                                        ;A3807C;
    ORA.W #$0200                                                         ;A3807F;
    STA.W $0F86,X                                                        ;A38082;
    PLA                                                                  ;A38085;
    PEA.W ProcessEnemyInstructions_return-1                              ;A38086;
    RTL                                                                  ;A38089;


%anchor($A3808A)
Instruction_CommonA3_CallFunctionInY:
    LDA.W $0000,Y                                                        ;A3808A;
    STA.B $12                                                            ;A3808D;
    PHY                                                                  ;A3808F;
    PHX                                                                  ;A38090;
    PEA.W .manualReturn-1                                                ;A38091;
    JMP.W ($0012)                                                        ;A38094;


.manualReturn:
    PLX                                                                  ;A38097;
    PLY                                                                  ;A38098;
    INY                                                                  ;A38099;
    INY                                                                  ;A3809A;
    RTL                                                                  ;A3809B;


%anchor($A3809C)
Instruction_CommonA3_CallFunctionInY_WithA:
    LDA.W $0000,Y                                                        ;A3809C;
    STA.B $12                                                            ;A3809F;
    LDA.W $0002,Y                                                        ;A380A1;
    PHY                                                                  ;A380A4;
    PHX                                                                  ;A380A5;
    PEA.W .manualReturn-1                                                ;A380A6;
    JMP.W ($0012)                                                        ;A380A9;


.manualReturn:
    PLX                                                                  ;A380AC;
    PLY                                                                  ;A380AD;
    TYA                                                                  ;A380AE;
    CLC                                                                  ;A380AF;
    ADC.W #$0004                                                         ;A380B0;
    TAY                                                                  ;A380B3;
    RTL                                                                  ;A380B4;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A380B5)
UNUSED_Instruction_CommonA3_CallExternalFunctionInY_A380B5:
    LDA.W $0000,Y                                                        ;A380B5;
    STA.B $12                                                            ;A380B8;
    LDA.W $0001,Y                                                        ;A380BA;
    STA.B $13                                                            ;A380BD;
    PHX                                                                  ;A380BF;
    PHY                                                                  ;A380C0;
    JSL.L .externalFunction                                              ;A380C1;
    PLY                                                                  ;A380C5;
    PLX                                                                  ;A380C6;
    INY                                                                  ;A380C7;
    INY                                                                  ;A380C8;
    INY                                                                  ;A380C9;
    RTL                                                                  ;A380CA;


.externalFunction:
    JML.W [$0012]                                                        ;A380CB;


%anchor($A380CE)
UNUSED_Inst_CommonA3_CallExternalFunctionInY_WithA_A380CE:
    LDA.W $0000,Y                                                        ;A380CE;
    STA.B $12                                                            ;A380D1;
    LDA.W $0001,Y                                                        ;A380D3;
    STA.B $13                                                            ;A380D6;
    LDA.W $0003,Y                                                        ;A380D8;
    PHX                                                                  ;A380DB;
    PHY                                                                  ;A380DC;
    JSL.L .externalFunction                                              ;A380DD;
    PLY                                                                  ;A380E1;
    PLX                                                                  ;A380E2;
    TYA                                                                  ;A380E3;
    CLC                                                                  ;A380E4;
    ADC.W #$0005                                                         ;A380E5;
    TAY                                                                  ;A380E8;
    RTL                                                                  ;A380E9;


.externalFunction:
    JML.W [$0012]                                                        ;A380EA;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A380ED)
Instruction_CommonA3_GotoY:
    LDA.W $0000,Y                                                        ;A380ED;
    TAY                                                                  ;A380F0;
    RTL                                                                  ;A380F1;


%anchor($A380F2)
Instruction_CommonA3_GotoY_PlusY:
    STY.B $12                                                            ;A380F2;
    DEY                                                                  ;A380F4;
    LDA.W $0000,Y                                                        ;A380F5;
    XBA                                                                  ;A380F8;
    BMI .highByte                                                        ;A380F9;
    AND.W #$00FF                                                         ;A380FB;
    BRA +                                                                ;A380FE;


.highByte:
    ORA.W #$FF00                                                         ;A38100;

  + CLC                                                                  ;A38103;
    ADC.B $12                                                            ;A38104;
    TAY                                                                  ;A38106;
    RTL                                                                  ;A38107;

    DEC.W $0F90,X                                                        ;A38108;

%anchor($A3810B)
Instruction_CommonA3_DecrementTimer_GotoYIfNonZero:
    BNE Instruction_CommonA3_GotoY                                       ;A3810B;
    INY                                                                  ;A3810D;
    INY                                                                  ;A3810E;
    RTL                                                                  ;A3810F;


%anchor($A38110)
Instruction_CommonA3_DecrementTimer_GotoYIfNonZero_duplicate:
    DEC.W $0F90,X                                                        ;A38110;
    BNE Instruction_CommonA3_GotoY                                       ;A38113;
    INY                                                                  ;A38115;
    INY                                                                  ;A38116;
    RTL                                                                  ;A38117;


%anchor($A38118)
Instruction_CommonA3_DecrementTimer_GotoY_PlusY_IfNonZero:
    SEP #$20                                                             ;A38118;
    DEC.W $0F90,X                                                        ;A3811A;
    REP #$20                                                             ;A3811D;
    BNE Instruction_CommonA3_GotoY_PlusY                                 ;A3811F;
    INY                                                                  ;A38121;
    RTL                                                                  ;A38122;


%anchor($A38123)
Instruction_CommonA3_TimerInY:
    LDA.W $0000,Y                                                        ;A38123;
    STA.W $0F90,X                                                        ;A38126;
    INY                                                                  ;A38129;
    INY                                                                  ;A3812A;
    RTL                                                                  ;A3812B;


%anchor($A3812C)
Instruction_CommonA3_SkipNextInstruction:
    INY                                                                  ;A3812C;
    INY                                                                  ;A3812D;
    RTL                                                                  ;A3812E;


%anchor($A3812F)
Instruction_CommonA3_Sleep:
    DEY                                                                  ;A3812F;
    DEY                                                                  ;A38130;
    TYA                                                                  ;A38131;
    STA.W $0F92,X                                                        ;A38132;
    PLA                                                                  ;A38135;
    PEA.W ProcessEnemyInstructions_return-1                              ;A38136;
    RTL                                                                  ;A38139;


%anchor($A3813A)
Instruction_CommonA3_WaitYFrames:
    LDA.W $0000,Y                                                        ;A3813A;
    STA.W $0F94,X                                                        ;A3813D;
    INY                                                                  ;A38140;
    INY                                                                  ;A38141;
    TYA                                                                  ;A38142;
    STA.W $0F92,X                                                        ;A38143;
    PLA                                                                  ;A38146;
    PEA.W ProcessEnemyInstructions_return-1                              ;A38147;
    RTL                                                                  ;A3814A;


%anchor($A3814B)
Instruction_CommonA3_TransferYBytesInYToVRAM:
    PHX                                                                  ;A3814B;
    LDX.W $0330                                                          ;A3814C;
    LDA.W $0000,Y                                                        ;A3814F;
    STA.B $D0,X                                                          ;A38152;
    LDA.W $0002,Y                                                        ;A38154;
    STA.B $D2,X                                                          ;A38157;
    LDA.W $0003,Y                                                        ;A38159;
    STA.B $D3,X                                                          ;A3815C;
    LDA.W $0005,Y                                                        ;A3815E;
    STA.B $D5,X                                                          ;A38161;
    TXA                                                                  ;A38163;
    CLC                                                                  ;A38164;
    ADC.W #$0007                                                         ;A38165;
    STA.W $0330                                                          ;A38168;
    TYA                                                                  ;A3816B;
    CLC                                                                  ;A3816C;
    ADC.W #$0007                                                         ;A3816D;
    TAY                                                                  ;A38170;
    PLX                                                                  ;A38171;
    RTL                                                                  ;A38172;


%anchor($A38173)
Instruction_CommonA3_EnableOffScreenProcessing:
    LDA.W $0F86,X                                                        ;A38173;
    ORA.W #$0800                                                         ;A38176;
    STA.W $0F86,X                                                        ;A38179;
    RTL                                                                  ;A3817C;


%anchor($A3817D)
Instruction_CommonA3_DisableOffScreenProcessing:
    LDA.W $0F86,X                                                        ;A3817D;
    AND.W #$F7FF                                                         ;A38180;
    STA.W $0F86,X                                                        ;A38183;
    RTL                                                                  ;A38186;


;        _____________________ Speed
;       |      _______________ Subspeed
;       |     |      _________ Negated speed
;       |     |     |      ___ Negated subspeed
;       |     |     |     |
%anchor($A38187)
CommonA3EnemySpeeds_LinearlyIncreasing:
  .speed:
    dw $0000                                                             ;A38187;
  .subspeed:
    dw       $0000                                                       ;A38189;
  .negatedSpeed:
    dw             $0000                                                 ;A3818B;
  .negatedSubspeed:
    dw                   $0000                                           ;A3818D;
    dw $0000,$1000,$FFFF,$F000
    dw $0000,$2000,$FFFF,$E000
    dw $0000,$3000,$FFFF,$D000
    dw $0000,$4000,$FFFF,$C000
    dw $0000,$5000,$FFFF,$B000
    dw $0000,$6000,$FFFF,$A000
    dw $0000,$7000,$FFFF,$9000
    dw $0000,$8000,$FFFF,$8000
    dw $0000,$9000,$FFFF,$7000
    dw $0000,$A000,$FFFF,$6000
    dw $0000,$B000,$FFFF,$5000
    dw $0000,$C000,$FFFF,$4000
    dw $0000,$D000,$FFFF,$3000
    dw $0000,$E000,$FFFF,$2000
    dw $0000,$F000,$FFFF,$1000
    dw $0001,$0000,$FFFF,$0000
    dw $0001,$1000,$FFFE,$F000
    dw $0001,$2000,$FFFE,$E000
    dw $0001,$3000,$FFFE,$D000
    dw $0001,$4000,$FFFE,$C000
    dw $0001,$5000,$FFFE,$B000
    dw $0001,$6000,$FFFE,$A000
    dw $0001,$7000,$FFFE,$9000
    dw $0001,$8000,$FFFE,$8000
    dw $0001,$9000,$FFFE,$7000
    dw $0001,$A000,$FFFE,$6000
    dw $0001,$B000,$FFFE,$5000
    dw $0001,$C000,$FFFE,$4000
    dw $0001,$D000,$FFFE,$3000
    dw $0001,$E000,$FFFE,$2000
    dw $0001,$F000,$FFFE,$1000
    dw $0002,$0000,$FFFE,$0000
    dw $0002,$1000,$FFFD,$F000
    dw $0002,$2000,$FFFD,$E000
    dw $0002,$3000,$FFFD,$D000
    dw $0002,$4000,$FFFD,$C000
    dw $0002,$5000,$FFFD,$B000
    dw $0002,$6000,$FFFD,$A000
    dw $0002,$7000,$FFFD,$9000
    dw $0002,$8000,$FFFD,$8000
    dw $0002,$9000,$FFFD,$7000
    dw $0002,$A000,$FFFD,$6000
    dw $0002,$B000,$FFFD,$5000
    dw $0002,$C000,$FFFD,$4000
    dw $0002,$D000,$FFFD,$3000
    dw $0002,$E000,$FFFD,$2000
    dw $0002,$F000,$FFFD,$1000
    dw $0003,$0000,$FFFD,$0000
    dw $0003,$1000,$FFFC,$F000
    dw $0003,$2000,$FFFC,$E000
    dw $0003,$3000,$FFFC,$D000
    dw $0003,$4000,$FFFC,$C000
    dw $0003,$5000,$FFFC,$B000
    dw $0003,$6000,$FFFC,$A000
    dw $0003,$7000,$FFFC,$9000
    dw $0003,$8000,$FFFC,$8000
    dw $0003,$9000,$FFFC,$7000
    dw $0003,$A000,$FFFC,$6000
    dw $0003,$B000,$FFFC,$5000
    dw $0003,$C000,$FFFC,$4000
    dw $0003,$D000,$FFFC,$3000
    dw $0003,$E000,$FFFC,$2000
    dw $0003,$F000,$FFFC,$1000
    dw $0004,$0000,$FFFC,$0000


;        _____________________ Subspeed
;       |      _______________ Speed
;       |     |      _________ Negated subspeed
;       |     |     |      ___ Negated speed
;       |     |     |     |
%anchor($A3838F)
CommonA3EnemySpeeds_QuadraticallyIncreasing:
; I.e. gravity
; Used by e.g. Botwoon when dying and falling to the floor
  .subspeed:
    dw $0000                                                             ;A3838F;
  .speed:
    dw       $0000                                                       ;A38391;
  .negatedSubspeed:
    dw             $0000                                                 ;A38393;
  .negatedSpeed:
    dw                   $0000                                           ;A38395;
    dw $0109,$0000,$FEF7,$FFFF
    dw $031B,$0000,$FCE5,$FFFF
    dw $0636,$0000,$F9CA,$FFFF
    dw $0A5A,$0000,$F5A6,$FFFF
    dw $0F87,$0000,$F079,$FFFF
    dw $15BD,$0000,$EA43,$FFFF
    dw $1CFC,$0000,$E304,$FFFF
    dw $2544,$0000,$DABC,$FFFF
    dw $2E95,$0000,$D16B,$FFFF
    dw $38EF,$0000,$C711,$FFFF
    dw $4452,$0000,$BBAE,$FFFF
    dw $50BE,$0000,$AF42,$FFFF
    dw $5E33,$0000,$A1CD,$FFFF
    dw $6CB1,$0000,$934F,$FFFF
    dw $7C38,$0000,$83C8,$FFFF
    dw $8CC8,$0000,$7338,$FFFF
    dw $9E61,$0000,$619F,$FFFF
    dw $B103,$0000,$4EFD,$FFFF
    dw $C4AE,$0000,$3B52,$FFFF
    dw $D962,$0000,$269E,$FFFF
    dw $EF1F,$0000,$10E1,$FFFF
    dw $05E5,$0000,$FA1B,$FFFF
    dw $14B4,$0001,$EB4C,$FFFE
    dw $2D8C,$0001,$D274,$FFFE
    dw $476D,$0001,$B893,$FFFE
    dw $6257,$0001,$9DA9,$FFFE
    dw $7E4A,$0001,$81B6,$FFFE
    dw $9B46,$0001,$64BA,$FFFE
    dw $B94B,$0001,$46B5,$FFFE
    dw $D859,$0001,$27A7,$FFFE
    dw $F870,$0001,$0790,$FFFE
    dw $1090,$0002,$EF70,$FFFD
    dw $32B9,$0002,$CD47,$FFFD
    dw $55EB,$0002,$AA15,$FFFD
    dw $7A26,$0002,$85DA,$FFFD
    dw $9F6A,$0002,$6096,$FFFD
    dw $C5B7,$0002,$3A49,$FFFD
    dw $ED0D,$0002,$12F3,$FFFD
    dw $0C6C,$0003,$F394,$FFFC
    dw $35D4,$0003,$CA2C,$FFFC
    dw $6045,$0003,$9FBB,$FFFC
    dw $8BBF,$0003,$7441,$FFFC
    dw $B842,$0003,$47BE,$FFFC
    dw $E5CE,$0003,$1A32,$FFFC
    dw $0B63,$0004,$F49D,$FFFB
    dw $3B01,$0004,$C4FF,$FFFB
    dw $6BA8,$0004,$9458,$FFFB
    dw $9D58,$0004,$62A8,$FFFB
    dw $D011,$0004,$2FEF,$FFFB
    dw $03D3,$0004,$FC2D,$FFFB
    dw $2F9E,$0005,$D062,$FFFA
    dw $6572,$0005,$9A8E,$FFFA
    dw $9C4F,$0005,$63B1,$FFFA
    dw $D435,$0005,$2BCB,$FFFA
    dw $0424,$0006,$FBDC,$FFF9
    dw $3E1C,$0006,$C1E4,$FFF9
    dw $791D,$0006,$86E3,$FFF9
    dw $B527,$0006,$4AD9,$FFF9
    dw $F23A,$0006,$0DC6,$FFF9
    dw $2756,$0007,$D8AA,$FFF8
    dw $667B,$0007,$9985,$FFF8
    dw $A6A9,$0007,$5957,$FFF8
    dw $E7E0,$0007,$1820,$FFF8
    dw $2120,$0008,$DEE0,$FFF7
    dw $6469,$0008,$9B97,$FFF7
    dw $A8BB,$0008,$5745,$FFF7
    dw $EE16,$0008,$11EA,$FFF7
    dw $2B7A,$0009,$D486,$FFF6
    dw $72E7,$0009,$8D19,$FFF6
    dw $BB5D,$0009,$44A3,$FFF6
    dw $04DC,$0009,$FB24,$FFF6
    dw $4664,$000A,$B99C,$FFF5
    dw $91F5,$000A,$6E0B,$FFF5
    dw $DE8F,$000A,$2171,$FFF5
    dw $2332,$000B,$DCCE,$FFF4
    dw $71DE,$000B,$8E22,$FFF4
    dw $C193,$000B,$3E6D,$FFF4
    dw $0951,$000C,$F6AF,$FFF3
    dw $5B18,$000C,$A4E8,$FFF3
    dw $ADE8,$000C,$5218,$FFF3
    dw $01C1,$000C,$FE3F,$FFF3
    dw $4DA3,$000D,$B25D,$FFF2
    dw $A38E,$000D,$5C72,$FFF2
    dw $FA82,$000D,$057E,$FFF2
    dw $497F,$000E,$B681,$FFF1
    dw $A285,$000E,$5D7B,$FFF1
    dw $FC94,$000E,$036C,$FFF1
    dw $4EAC,$000F,$B154,$FFF0
    dw $AACD,$000F,$5533,$FFF0
    dw $07F7,$000F,$F809,$FFF0
    dw $5D2A,$0010,$A2D6,$FFEF
    dw $BC66,$0010,$439A,$FFEF
    dw $13AB,$0011,$EC55,$FFEE
    dw $74F9,$0011,$8B07,$FFEE


%anchor($A38687)
Palette_Waver:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A38687;
    dw $2C63,$241F,$1C17,$142F,$0C47,$3BE0,$2680,$1580                   ;A38697;

%anchor($A386A7)
InstList_Waver_Steady_FacingLeft:
    dw $0001,Spritemap_Waver_2                                           ;A386A7;
    dw Instruction_Common_Sleep                                          ;A386AB;

%anchor($A386AD)
InstList_Waver_Steady_FacingRight:
    dw $0001,Spritemap_Waver_7                                           ;A386AD;
    dw Instruction_Common_Sleep                                          ;A386B1;

%anchor($A386B3)
InstList_Waver_Spinning_FacingLeft:
    dw $0008,Spritemap_Waver_3                                           ;A386B3;
    dw $0008,Spritemap_Waver_4                                           ;A386B7;
    dw $0008,Spritemap_Waver_0                                           ;A386BB;
    dw $0008,Spritemap_Waver_1                                           ;A386BF;
    dw Instruction_Waver_SetSpinFinishedFlag                             ;A386C3;
    dw Instruction_Common_Sleep                                          ;A386C5;

%anchor($A386C7)
InstList_Waver_Spinning_FacingRight:
    dw $0008,Spritemap_Waver_8                                           ;A386C7;
    dw $0008,Spritemap_Waver_9                                           ;A386CB;
    dw $0008,Spritemap_Waver_5                                           ;A386CF;
    dw $0008,Spritemap_Waver_6                                           ;A386D3;
    dw Instruction_Waver_SetSpinFinishedFlag                             ;A386D7;
    dw Instruction_Common_Sleep                                          ;A386D9;

%anchor($A386DB)
InstListPointers_Waver:
    dw InstList_Waver_Steady_FacingLeft                                  ;A386DB;
    dw InstList_Waver_Steady_FacingRight                                 ;A386DD;
    dw InstList_Waver_Spinning_FacingLeft                                ;A386DF;
    dw InstList_Waver_Spinning_FacingRight                               ;A386E1;

%anchor($A386E3)
Instruction_Waver_SetSpinFinishedFlag:
    LDX.W $0E54                                                          ;A386E3;
    LDA.W #$0001                                                         ;A386E6;
    STA.W $0FB0,X                                                        ;A386E9;
    RTL                                                                  ;A386EC;


%anchor($A386ED)
InitAI_Waver:
    LDX.W $0E54                                                          ;A386ED;
    LDA.W #$0180                                                         ;A386F0;
    AND.W #$FF00                                                         ;A386F3;
    XBA                                                                  ;A386F6;
    STA.W $0FAA,X                                                        ;A386F7;
    LDA.W #$0180                                                         ;A386FA;
    AND.W #$00FF                                                         ;A386FD;
    XBA                                                                  ;A38700;
    STA.W $0FA8,X                                                        ;A38701;
    LDA.W $0FB4,X                                                        ;A38704;
    AND.W #$0001                                                         ;A38707;
    BNE .facingLeft                                                      ;A3870A;
    LDA.W #$0180                                                         ;A3870C;
    EOR.W #$FFFF                                                         ;A3870F;
    INC A                                                                ;A38712;
    AND.W #$FF00                                                         ;A38713;
    XBA                                                                  ;A38716;
    JSL.L Sign_Extend_A                                                  ;A38717;
    STA.W $0FAA,X                                                        ;A3871B;
    LDA.W #$0180                                                         ;A3871E;
    EOR.W #$FFFF                                                         ;A38721;
    INC A                                                                ;A38724;
    AND.W #$00FF                                                         ;A38725;
    XBA                                                                  ;A38728;
    JSL.L Sign_Extend_A                                                  ;A38729;
    STA.W $0FA8,X                                                        ;A3872D;

.facingLeft:
    STZ.W $0FB2,X                                                        ;A38730;
    STZ.W $0FAC,X                                                        ;A38733;
    STZ.W $0FB0,X                                                        ;A38736;
    LDA.W #InstList_Waver_Steady_FacingLeft                              ;A38739;
    STA.W $0F92,X                                                        ;A3873C;
    LDA.W $0FB4,X                                                        ;A3873F;
    AND.W #$0001                                                         ;A38742;
    STA.W $0FB2,X                                                        ;A38745;
    JSR.W SetWaverInstList                                               ;A38748;
    RTL                                                                  ;A3874B;


%anchor($A3874C)
MainAI_Waver:
    LDX.W $0E54                                                          ;A3874C;
    LDA.W $0FA8,X                                                        ;A3874F;
    STA.B $12                                                            ;A38752;
    LDA.W $0FAA,X                                                        ;A38754;
    STA.B $14                                                            ;A38757;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A38759;
    BCC .noWallCollision                                                 ;A3875D;
    LDA.W $0FA9,X                                                        ;A3875F;
    STA.B $12                                                            ;A38762;
    EOR.W #$FFFF                                                         ;A38764;
    INC A                                                                ;A38767;
    AND.W #$FF00                                                         ;A38768;
    XBA                                                                  ;A3876B;
    JSL.L Sign_Extend_A                                                  ;A3876C;
    STA.W $0FAA,X                                                        ;A38770;
    LDA.B $12                                                            ;A38773;
    EOR.W #$FFFF                                                         ;A38775;
    INC A                                                                ;A38778;
    AND.W #$00FF                                                         ;A38779;
    XBA                                                                  ;A3877C;
    JSL.L Sign_Extend_A                                                  ;A3877D;
    STA.W $0FA8,X                                                        ;A38781;
    LDA.W $0FB2,X                                                        ;A38784;
    EOR.W #$0001                                                         ;A38787;
    AND.W #$0001                                                         ;A3878A;
    STA.W $0FB2,X                                                        ;A3878D;
    JSR.W SetWaverInstList                                               ;A38790;
    JMP.W .merge                                                         ;A38793;


.noWallCollision:
    LDA.W #$0004                                                         ;A38796;
    STA.W $0E32                                                          ;A38799;
    LDA.W $0FAE,X                                                        ;A3879C;
    AND.W #$00FF                                                         ;A3879F;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A387A2;
    STA.B $14                                                            ;A387A6;
    STZ.B $12                                                            ;A387A8;
    JSL.L MoveEnemyDownBy_14_12                                          ;A387AA;
    BCC .noBlockCollision                                                ;A387AE;
    LDX.W $0E54                                                          ;A387B0;
    LDA.W $0FAE,X                                                        ;A387B3;
    CLC                                                                  ;A387B6;
    ADC.W #$0080                                                         ;A387B7;
    AND.W #$00FF                                                         ;A387BA;
    STA.W $0FAE,X                                                        ;A387BD;
    BRA .merge                                                           ;A387C0;


.noBlockCollision:
    LDX.W $0E54                                                          ;A387C2;
    LDA.W $0FAE,X                                                        ;A387C5;
    CLC                                                                  ;A387C8;
    ADC.W #$0002                                                         ;A387C9;
    STA.W $0FAE,X                                                        ;A387CC;

.merge:
    LDX.W $0E54                                                          ;A387CF;
    LDA.W $0FAE,X                                                        ;A387D2;
    AND.W #$007F                                                         ;A387D5;
    CMP.W #$0038                                                         ;A387D8;
    BNE .notSpinning                                                     ;A387DB;
    LDA.W $0FB2,X                                                        ;A387DD;
    ORA.W #$0002                                                         ;A387E0;
    STA.W $0FB2,X                                                        ;A387E3;
    JSR.W SetWaverInstList                                               ;A387E6;

.notSpinning:
    LDA.W $0FB0,X                                                        ;A387E9;
    BEQ .return                                                          ;A387EC;
    STZ.W $0FB0,X                                                        ;A387EE;
    LDA.W $0FB2,X                                                        ;A387F1;
    AND.W #$0001                                                         ;A387F4;
    STA.W $0FB2,X                                                        ;A387F7;
    JSR.W SetWaverInstList                                               ;A387FA;

.return:
    RTL                                                                  ;A387FD;


%anchor($A387FE)
SetWaverInstList:
    LDX.W $0E54                                                          ;A387FE;
    LDA.W $0FB2,X                                                        ;A38801;
    CMP.W $0FAC,X                                                        ;A38804;
    BEQ .return                                                          ;A38807;
    STA.W $0FAC,X                                                        ;A38809;
    ASL A                                                                ;A3880C;
    TAY                                                                  ;A3880D;
    LDA.W InstListPointers_Waver,Y                                       ;A3880E;
    STA.W $0F92,X                                                        ;A38811;
    LDA.W #$0001                                                         ;A38814;
    STA.W $0F94,X                                                        ;A38817;
    STZ.W $0F90,X                                                        ;A3881A;

.return:
    RTS                                                                  ;A3881D;


%anchor($A3881E)
Spritemap_Waver_0:
    dw $0004                                                             ;A3881E;
    %spritemapEntry(0, $00, $08, 0, 0, 2, 0, $122)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $121)
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $100)

%anchor($A38834)
Spritemap_Waver_1:
    dw $0004                                                             ;A38834;
    %spritemapEntry(0, $1ED, $FC, 0, 0, 2, 0, $124)
    %spritemapEntry(0, $05, $00, 0, 0, 2, 0, $116)
    %spritemapEntry(0, $05, $F8, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1F5, $F8, 0, 0, 2, 0, $104)

%anchor($A3884A)
Spritemap_Waver_2:
    dw $0003                                                             ;A3884A;
    %spritemapEntry(0, $1ED, $FD, 0, 0, 2, 0, $126)
    %spritemapEntry(0, $1F5, $FD, 0, 0, 2, 0, $127)
    %spritemapEntry(1, $1FD, $F8, 0, 0, 2, 0, $107)

%anchor($A3885B)
Spritemap_Waver_3:
    dw $0004                                                             ;A3885B;
    %spritemapEntry(0, $1EC, $FC, 0, 0, 2, 0, $129)
    %spritemapEntry(0, $04, $00, 0, 0, 2, 0, $11B)
    %spritemapEntry(0, $04, $F8, 0, 0, 2, 0, $10B)
    %spritemapEntry(1, $1F4, $F8, 0, 0, 2, 0, $109)

%anchor($A38871)
Spritemap_Waver_4:
    dw $0004                                                             ;A38871;
    %spritemapEntry(0, $00, $08, 0, 0, 2, 0, $12E)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $10C)

%anchor($A38887)
Spritemap_Waver_5:
    dw $0004                                                             ;A38887;
    %spritemapEntry(0, $1F8, $08, 0, 1, 2, 0, $122)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $121)
    %spritemapEntry(1, $1F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $100)

%anchor($A3889D)
Spritemap_Waver_6:
    dw $0004                                                             ;A3889D;
    %spritemapEntry(0, $0B, $FC, 0, 1, 2, 0, $124)
    %spritemapEntry(0, $1F3, $00, 0, 1, 2, 0, $116)
    %spritemapEntry(0, $1F3, $F8, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1FB, $F8, 0, 1, 2, 0, $104)

%anchor($A388B3)
Spritemap_Waver_7:
    dw $0003                                                             ;A388B3;
    %spritemapEntry(0, $0B, $FD, 0, 1, 2, 0, $126)
    %spritemapEntry(0, $03, $FD, 0, 1, 2, 0, $127)
    %spritemapEntry(1, $1F3, $F8, 0, 1, 2, 0, $107)

%anchor($A388C4)
Spritemap_Waver_8:
    dw $0004                                                             ;A388C4;
    %spritemapEntry(0, $0C, $FC, 0, 1, 2, 0, $129)
    %spritemapEntry(0, $1F4, $00, 0, 1, 2, 0, $11B)
    %spritemapEntry(0, $1F4, $F8, 0, 1, 2, 0, $10B)
    %spritemapEntry(1, $1FC, $F8, 0, 1, 2, 0, $109)

%anchor($A388DA)
Spritemap_Waver_9:
    dw $0004                                                             ;A388DA;
    %spritemapEntry(0, $1F8, $08, 0, 1, 2, 0, $12E)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $12D)
    %spritemapEntry(1, $1F0, $F8, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $10C)

%anchor($A388F0)
Palette_Metaree:
    dw $3800,$4D1F,$38B6,$246E,$1448,$47FF,$2EFA,$1616                   ;A388F0;
    dw $0132,$6F39,$5A73,$41AD,$2D08,$1863,$7FFF,$0041                   ;A38900;

%anchor($A38910)
InstList_Metaree_Idling:
    dw $000A,Spritemap_Metaree_0                                         ;A38910;
    dw $000A,Spritemap_Metaree_2                                         ;A38914;
    dw $000A,Spritemap_Metaree_3                                         ;A38918;
    dw $000A,Spritemap_Metaree_4                                         ;A3891C;
    dw Instruction_Common_GotoY                                          ;A38920;
    dw InstList_Metaree_Idling                                           ;A38922;

%anchor($A38924)
InstList_Metaree_PrepareToLaunchAttack:
    dw $0010,Spritemap_Metaree_0                                         ;A38924;
    dw $0008,Spritemap_Metaree_1                                         ;A38928;
    dw Instruction_Metaree_SetAttackReadyFlag                            ;A3892C;
    dw Instruction_Common_Sleep                                          ;A3892E;

%anchor($A38930)
InstList_Metaree_LaunchedAttack_0:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A38930;

%anchor($A38932)
InstList_Metaree_LaunchedAttack_1:
    dw $0002,Spritemap_Metaree_2                                         ;A38932;
    dw $0002,Spritemap_Metaree_3                                         ;A38936;
    dw $0002,Spritemap_Metaree_4                                         ;A3893A;
    dw $0002,Spritemap_Metaree_0                                         ;A3893E;
    dw Instruction_Common_GotoY                                          ;A38942;
    dw InstList_Metaree_LaunchedAttack_1                                 ;A38944;

%anchor($A38946)
UNUSED_InstList_Metaree_StopAnimating_A38946:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A38946;
    dw $0001,Spritemap_Metaree_0                                         ;A38948;
    dw Instruction_Common_Sleep                                          ;A3894C;

%anchor($A3894E)
InstListPointers_Metaree:
    dw InstList_Metaree_Idling                                           ;A3894E;
    dw InstList_Metaree_PrepareToLaunchAttack                            ;A38950;
    dw InstList_Metaree_LaunchedAttack_0                                 ;A38952;
    dw UNUSED_InstList_Metaree_StopAnimating_A38946                      ;A38954;

%anchor($A38956)
Instruction_Metaree_SetAttackReadyFlag:
    LDX.W $0E54                                                          ;A38956;
    LDA.W #$0001                                                         ;A38959;
    STA.W $0FB0,X                                                        ;A3895C;
    RTL                                                                  ;A3895F;


%anchor($A38960)
InitAI_Metaree:
    LDX.W $0E54                                                          ;A38960;
    STZ.W $0FAC,X                                                        ;A38963;
    STZ.W $0FAE,X                                                        ;A38966;
    STZ.W $0FB0,X                                                        ;A38969;
    LDA.W #InstList_Metaree_Idling                                       ;A3896C;
    STA.W $0F92,X                                                        ;A3896F;
    LDA.W #Function_Metaree_Idling                                       ;A38972;
    STA.W $0FAA,X                                                        ;A38975;
    RTL                                                                  ;A38978;


%anchor($A38979)
MainAI_Metaree:
    LDX.W $0E54                                                          ;A38979;
    JMP.W ($0FAA,X)                                                      ;A3897C;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A3897F)
UNUSED_FunctionPointers_Metaree_A3897F:
    dw Function_Metaree_Idling                                           ;A3897F;
    dw Function_Metaree_PrepareToLaunchAttack                            ;A38981;
    dw Function_Metaree_LaunchedAttack                                   ;A38983;
    dw Function_Metaree_Burrowing                                        ;A38985;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A38987)
Function_Metaree_Idling:
    LDX.W $0E54                                                          ;A38987;
    LDA.W $0F7A,X                                                        ;A3898A;
    SEC                                                                  ;A3898D;
    SBC.W $0AF6                                                          ;A3898E;
    BPL +                                                                ;A38991;
    EOR.W #$FFFF                                                         ;A38993;
    INC A                                                                ;A38996;

  + CMP.W #$0048                                                         ;A38997;
    BCS .return                                                          ;A3899A;
    JSR.W DetermineMetareeYVelocity                                      ;A3899C;
    INC.W $0FAC,X                                                        ;A3899F;
    JSR.W SetMetareeInstListPointer                                      ;A389A2;
    LDA.W #Function_Metaree_PrepareToLaunchAttack                        ;A389A5;
    STA.W $0FAA,X                                                        ;A389A8;

.return:
    RTL                                                                  ;A389AB;


%anchor($A389AC)
DetermineMetareeYVelocity:
    LDA.W $0AFA                                                          ;A389AC;
    SEC                                                                  ;A389AF;
    SBC.W $0F7E,X                                                        ;A389B0;
    STA.W $4204                                                          ;A389B3;
    SEP #$20                                                             ;A389B6;
    LDA.B #$18                                                           ;A389B8;
    STA.W $4206                                                          ;A389BA;
    REP #$20                                                             ;A389BD;
    NOP                                                                  ;A389BF;
    NOP                                                                  ;A389C0;
    NOP                                                                  ;A389C1;
    NOP                                                                  ;A389C2;
    NOP                                                                  ;A389C3;
    NOP                                                                  ;A389C4;
    NOP                                                                  ;A389C5;
    LDA.W $4214                                                          ;A389C6;
    AND.W #$00FF                                                         ;A389C9;
    CLC                                                                  ;A389CC;
    ADC.W #$0004                                                         ;A389CD;
    STA.W $0FB2,X                                                        ;A389D0;
    RTS                                                                  ;A389D3;


%anchor($A389D4)
Function_Metaree_PrepareToLaunchAttack:
    LDA.W $0FB0,X                                                        ;A389D4;
    BEQ .return                                                          ;A389D7;
    STZ.W $0FB0,X                                                        ;A389D9;
    LDX.W $0E54                                                          ;A389DC;
    INC.W $0FAC,X                                                        ;A389DF;
    JSR.W SetMetareeInstListPointer                                      ;A389E2;
    LDA.W #Function_Metaree_LaunchedAttack                               ;A389E5;
    STA.W $0FAA,X                                                        ;A389E8;
    LDA.W #$005B                                                         ;A389EB;
    JSL.L QueueSound_Lib2_Max6                                           ;A389EE;

.return:
    RTL                                                                  ;A389F2;


%anchor($A389F3)
Function_Metaree_LaunchedAttack:
    LDX.W $0E54                                                          ;A389F3;
    LDA.W #$0015                                                         ;A389F6;
    STA.W $0FA8,X                                                        ;A389F9;
    LDA.W $0FB2,X                                                        ;A389FC;
    STA.B $14                                                            ;A389FF;
    STZ.B $12                                                            ;A38A01;
    LDA.W $0F86,X                                                        ;A38A03;
    ORA.W #$0003                                                         ;A38A06;
    STA.W $0F86,X                                                        ;A38A09;
    LDX.W $0E54                                                          ;A38A0C;
    JSL.L CheckForVerticalSolidBlockCollision_SkreeMetaree               ;A38A0F;
    BCS .collision                                                       ;A38A13;
    LDX.W $0E54                                                          ;A38A15;
    LDA.W $0F7E,X                                                        ;A38A18;
    CLC                                                                  ;A38A1B;
    ADC.W $0FB2,X                                                        ;A38A1C;
    STA.W $0F7E,X                                                        ;A38A1F;
    LDA.W #$0002                                                         ;A38A22;
    STA.W $0E24                                                          ;A38A25;
    LDA.W $0F7A,X                                                        ;A38A28;
    CMP.W $0AF6                                                          ;A38A2B;
    BMI .steerLeft                                                       ;A38A2E;
    LDA.W #$FFFE                                                         ;A38A30;
    STA.W $0E24                                                          ;A38A33;

.steerLeft:
    LDA.W $0F7A,X                                                        ;A38A36;
    CLC                                                                  ;A38A39;
    ADC.W $0E24                                                          ;A38A3A;
    STA.W $0F7A,X                                                        ;A38A3D;
    BRA .return                                                          ;A38A40;


.collision:
    LDX.W $0E54                                                          ;A38A42;
    LDA.W #$0001                                                         ;A38A45;
    STA.W $0F94,X                                                        ;A38A48;
    STZ.W $0F90,X                                                        ;A38A4B;
    LDA.W #Function_Metaree_Burrowing                                    ;A38A4E;
    STA.W $0FAA,X                                                        ;A38A51;
    LDA.W #$005C                                                         ;A38A54;
    JSL.L QueueSound_Lib2_Max6                                           ;A38A57;

.return:
    RTL                                                                  ;A38A5B;


%anchor($A38A5C)
Function_Metaree_Burrowing:
    LDX.W $0E54                                                          ;A38A5C;
    DEC.W $0FA8,X                                                        ;A38A5F;
    BEQ .delete                                                          ;A38A62;
    LDA.W $0FA8,X                                                        ;A38A64;
    CMP.W #$0008                                                         ;A38A67;
    BNE .timerNot8                                                       ;A38A6A;
    LDX.W $0E54                                                          ;A38A6C;
    LDY.W #EnemyProjectile_MetalSkreeParticles_DownRight                 ;A38A6F;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A38A72;
    LDY.W #EnemyProjectile_MetalSkreeParticles_UpRight                   ;A38A76;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A38A79;
    LDY.W #EnemyProjectile_MetalSkreeParticles_DownLeft                  ;A38A7D;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A38A80;
    LDY.W #EnemyProjectile_MetalSkreeParticles_UpLeft                    ;A38A84;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A38A87;

.timerNot8:
    LDX.W $0E54                                                          ;A38A8B;
    INC.W $0F7E,X                                                        ;A38A8E;
    RTL                                                                  ;A38A91;


.delete:
    LDX.W $0E54                                                          ;A38A92;
    LDA.W $0F96,X                                                        ;A38A95;
    ORA.W $0F98,X                                                        ;A38A98;
    STA.L $7E7006,X                                                      ;A38A9B;
    LDA.W #$0A00                                                         ;A38A9F;
    STA.W $0F96,X                                                        ;A38AA2;
    STZ.W $0F98,X                                                        ;A38AA5;
    LDA.W $0F86,X                                                        ;A38AA8;
    ORA.W #$0200                                                         ;A38AAB;
    STA.W $0F86,X                                                        ;A38AAE;
    RTL                                                                  ;A38AB1;


%anchor($A38AB2)
SetMetareeInstListPointer:
    LDX.W $0E54                                                          ;A38AB2;
    LDA.W $0FAC,X                                                        ;A38AB5;
    CMP.W $0FAE,X                                                        ;A38AB8;
    BEQ .return                                                          ;A38ABB;
    STA.W $0FAE,X                                                        ;A38ABD;
    ASL A                                                                ;A38AC0;
    TAY                                                                  ;A38AC1;
    LDA.W InstListPointers_Metaree,Y                                     ;A38AC2;
    STA.W $0F92,X                                                        ;A38AC5;
    LDA.W #$0001                                                         ;A38AC8;
    STA.W $0F94,X                                                        ;A38ACB;
    STZ.W $0F90,X                                                        ;A38ACE;

.return:
    RTS                                                                  ;A38AD1;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A38AD2)
UNUSED_Metaree_DataPointers_A38AD2:
    dw UNUSED_Metaree_Data_A38ADC                                        ;A38AD2;
    dw UNUSED_Metaree_Data_A38AE6                                        ;A38AD4;
    dw UNUSED_Metaree_Data_A38AF0                                        ;A38AD6;
    dw UNUSED_Metaree_Data_A38AFA                                        ;A38AD8;
    dw UNUSED_Metaree_Data_A38B04                                        ;A38ADA;

%anchor($A38ADC)
UNUSED_Metaree_Data_A38ADC:
    dw $0001,$0000,$FFFE,$0008,$000C                                     ;A38ADC;

%anchor($A38AE6)
UNUSED_Metaree_Data_A38AE6:
    dw $0001,$0000,$FFFC,$0008,$0008                                     ;A38AE6;

%anchor($A38AF0)
UNUSED_Metaree_Data_A38AF0:
    dw $0001,$0004,$0000,$0002,$000C                                     ;A38AF0;

%anchor($A38AFA)
UNUSED_Metaree_Data_A38AFA:
    dw $0001,$0000,$0000,$0008,$0008                                     ;A38AFA;

%anchor($A38B04)
UNUSED_Metaree_Data_A38B04:
    dw $0001,$FFFC,$0000,$0002,$000C                                     ;A38B04;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A38B0E)
RTL_A38B0E:
    RTL                                                                  ;A38B0E;


%anchor($A38B0F)
EnemyShot_Metaree:
    LDX.W $0E54                                                          ;A38B0F;
    LDA.W $0F98,X                                                        ;A38B12;
    STA.W $0E2A                                                          ;A38B15;
    LDA.W $0F96,X                                                        ;A38B18;
    STA.W $0E2C                                                          ;A38B1B;
    JSL.L CommonA3_NormalEnemyShotAI                                     ;A38B1E;
    LDX.W $0E54                                                          ;A38B22;
    LDA.W $0F8C,X                                                        ;A38B25;
    BNE .return                                                          ;A38B28;
    LDX.W $0E54                                                          ;A38B2A;
    LDA.W $0E2A                                                          ;A38B2D;
    STA.W $0F98,X                                                        ;A38B30;
    LDA.W $0E2C                                                          ;A38B33;
    STA.W $0F96,X                                                        ;A38B36;
    LDA.W $0FA8,X                                                        ;A38B39;
    LDX.W $0E54                                                          ;A38B3C;
    LDY.W #EnemyProjectile_MetalSkreeParticles_DownRight                 ;A38B3F;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A38B42;
    LDY.W #EnemyProjectile_MetalSkreeParticles_UpRight                   ;A38B46;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A38B49;
    LDY.W #EnemyProjectile_MetalSkreeParticles_DownLeft                  ;A38B4D;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A38B50;
    LDY.W #EnemyProjectile_MetalSkreeParticles_UpLeft                    ;A38B54;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A38B57;
    LDX.W $0E54                                                          ;A38B5B;
    STZ.W $0F98,X                                                        ;A38B5E;
    STZ.W $0F96,X                                                        ;A38B61;

.return:
    RTL                                                                  ;A38B64;


%anchor($A38B65)
Spritemap_Metaree_0:
    dw $0009                                                             ;A38B65;
    %spritemapEntry(0, $04, $F5, 0, 1, 2, 0, $122)
    %spritemapEntry(0, $04, $FD, 0, 1, 2, 0, $123)
    %spritemapEntry(0, $04, $05, 0, 1, 2, 0, $124)
    %spritemapEntry(0, $1F4, $05, 0, 0, 2, 0, $124)
    %spritemapEntry(0, $1F4, $FD, 0, 0, 2, 0, $123)
    %spritemapEntry(0, $1F4, $F5, 0, 0, 2, 0, $122)
    %spritemapEntry(0, $00, $03, 0, 0, 2, 0, $121)
    %spritemapEntry(0, $1F8, $03, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $1F8, $F3, 0, 0, 2, 0, $100)

%anchor($A38B94)
Spritemap_Metaree_1:
    dw $0007                                                             ;A38B94;
    %spritemapEntry(0, $05, $03, 0, 1, 2, 0, $127)
    %spritemapEntry(0, $1F3, $03, 0, 0, 2, 0, $127)
    %spritemapEntry(0, $05, $FB, 0, 1, 2, 0, $126)
    %spritemapEntry(0, $1F3, $FB, 0, 0, 2, 0, $126)
    %spritemapEntry(0, $05, $F3, 0, 1, 2, 0, $125)
    %spritemapEntry(0, $1F3, $F3, 0, 0, 2, 0, $125)
    %spritemapEntry(1, $1F8, $F3, 0, 0, 2, 0, $102)

%anchor($A38BB9)
Spritemap_Metaree_2:
    dw $0007                                                             ;A38BB9;
    %spritemapEntry(1, $1F5, $03, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1F5, $F3, 0, 0, 2, 0, $104)
    %spritemapEntry(0, $00, $03, 0, 0, 2, 0, $121)
    %spritemapEntry(1, $1F8, $F3, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $00, $03, 0, 0, 2, 0, $12A)
    %spritemapEntry(0, $00, $FB, 0, 0, 2, 0, $129)
    %spritemapEntry(0, $00, $F3, 0, 0, 2, 0, $128)

%anchor($A38BDE)
Spritemap_Metaree_3:
    dw $0002                                                             ;A38BDE;
    %spritemapEntry(1, $1F8, $03, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F3, 0, 0, 2, 0, $10C)

%anchor($A38BEA)
Spritemap_Metaree_4:
    dw $0007                                                             ;A38BEA;
    %spritemapEntry(1, $1FB, $03, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1FB, $F3, 0, 0, 2, 0, $108)
    %spritemapEntry(0, $1F8, $03, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $1F8, $F3, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $1F8, $03, 0, 1, 2, 0, $12A)
    %spritemapEntry(0, $1F8, $FB, 0, 1, 2, 0, $129)
    %spritemapEntry(0, $1F8, $F3, 0, 1, 2, 0, $128)


%anchor($A38C0F)
Palette_Fireflea:
    dw $3800,$02FF,$01BF,$000F,$0008,$01BF,$011B,$00BA                   ;A38C0F;
    dw $0011,$7F5A,$5D45,$40C3,$2462,$53E9,$3AC6,$1961                   ;A38C1F;

%anchor($A38C2F)
InstList_Fireflea:
    dw $0002,Spritemap_Fireflea_0                                        ;A38C2F;
    dw $0001,Spritemap_Fireflea_1                                        ;A38C33;
    dw $0002,Spritemap_Fireflea_2                                        ;A38C37;
    dw $0001,Spritemap_Fireflea_1                                        ;A38C3B;
    dw $0002,Spritemap_Fireflea_0                                        ;A38C3F;
    dw $0001,Spritemap_Fireflea_1                                        ;A38C43;
    dw $0002,Spritemap_Fireflea_2                                        ;A38C47;
    dw $0001,Spritemap_Fireflea_1                                        ;A38C4B;
    dw $0002,Spritemap_Fireflea_3                                        ;A38C4F;
    dw $0001,Spritemap_Fireflea_4                                        ;A38C53;
    dw $0002,Spritemap_Fireflea_5                                        ;A38C57;
    dw $0001,Spritemap_Fireflea_4                                        ;A38C5B;
    dw $0002,Spritemap_Fireflea_6                                        ;A38C5F;
    dw $0001,Spritemap_Fireflea_7                                        ;A38C63;
    dw $0002,Spritemap_Fireflea_8                                        ;A38C67;
    dw $0001,Spritemap_Fireflea_7                                        ;A38C6B;
    dw $0002,Spritemap_Fireflea_9                                        ;A38C6F;
    dw $0001,Spritemap_Fireflea_A                                        ;A38C73;
    dw $0002,Spritemap_Fireflea_B                                        ;A38C77;
    dw $0001,Spritemap_Fireflea_A                                        ;A38C7B;
    dw $0002,Spritemap_Fireflea_C                                        ;A38C7F;
    dw $0001,Spritemap_Fireflea_D                                        ;A38C83;
    dw $0002,Spritemap_Fireflea_E                                        ;A38C87;
    dw $0001,Spritemap_Fireflea_D                                        ;A38C8B;
    dw $0002,Spritemap_Fireflea_F                                        ;A38C8F;
    dw $0001,Spritemap_Fireflea_10                                       ;A38C93;
    dw $0002,Spritemap_Fireflea_11                                       ;A38C97;
    dw $0001,Spritemap_Fireflea_10                                       ;A38C9B;
    dw $0002,Spritemap_Fireflea_12                                       ;A38C9F;
    dw $0001,Spritemap_Fireflea_13                                       ;A38CA3;
    dw $0002,Spritemap_Fireflea_14                                       ;A38CA7;
    dw $0001,Spritemap_Fireflea_13                                       ;A38CAB;
    dw $0002,Spritemap_Fireflea_F                                        ;A38CAF;
    dw $0001,Spritemap_Fireflea_10                                       ;A38CB3;
    dw $0002,Spritemap_Fireflea_11                                       ;A38CB7;
    dw $0001,Spritemap_Fireflea_10                                       ;A38CBB;
    dw $0002,Spritemap_Fireflea_C                                        ;A38CBF;
    dw $0001,Spritemap_Fireflea_D                                        ;A38CC3;
    dw $0002,Spritemap_Fireflea_E                                        ;A38CC7;
    dw $0001,Spritemap_Fireflea_D                                        ;A38CCB;
    dw $0002,Spritemap_Fireflea_9                                        ;A38CCF;
    dw $0001,Spritemap_Fireflea_A                                        ;A38CD3;
    dw $0002,Spritemap_Fireflea_B                                        ;A38CD7;
    dw $0001,Spritemap_Fireflea_A                                        ;A38CDB;
    dw $0002,Spritemap_Fireflea_6                                        ;A38CDF;
    dw $0001,Spritemap_Fireflea_7                                        ;A38CE3;
    dw $0002,Spritemap_Fireflea_8                                        ;A38CE7;
    dw $0001,Spritemap_Fireflea_7                                        ;A38CEB;
    dw $0002,Spritemap_Fireflea_3                                        ;A38CEF;
    dw $0001,Spritemap_Fireflea_4                                        ;A38CF3;
    dw $0002,Spritemap_Fireflea_5                                        ;A38CF7;
    dw $0001,Spritemap_Fireflea_4                                        ;A38CFB;
    dw Instruction_Common_GotoY                                          ;A38CFF;
    dw InstList_Fireflea                                                 ;A38D01;

if !FEATURE_KEEP_UNREFERENCED
%anchor($A38D03)
UNUSED_Fireflea_Data_A38D03:
    dw $1000,$2000,$4000,$6000,$8000,$A000,$C000,$E000                   ;A38D03;

%anchor($A38D13)
UNUSED_Fireflea_Data_A38D13:
    dw $0001,$2001,$4001,$6001,$8001                                     ;A38D13;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A38D1D)
FirefleaMovementRadii:
; Movement radii. Indexed by [enemy parameter 2 high] * 2
    dw $0008,$0010,$0018,$0020,$0028,$0030,$0038,$0040                   ;A38D1D;

%anchor($A38D2D)
InitAI_Fireflea:
    LDX.W $0E54                                                          ;A38D2D;
    LDA.W #InstList_Fireflea                                             ;A38D30;
    STA.W $0F92,X                                                        ;A38D33;
    LDA.W $0FB4,X                                                        ;A38D36;
    AND.W #$00FF                                                         ;A38D39;
    STA.B $12                                                            ;A38D3C;
    AND.W #$0002                                                         ;A38D3E;
    BNE .circleMovement                                                  ;A38D41;
    JSR.W SetFirefleaSpeed                                               ;A38D43;
    JSR.W SetFirefleaRadius                                              ;A38D46;
    JSR.W SetFirefleaMinMaxYPositions                                    ;A38D49;
    RTL                                                                  ;A38D4C;


.circleMovement:
    JSR.W SetFirefleaCenter                                              ;A38D4D;
    JSR.W SetInitialFirefleaAngle                                        ;A38D50;
    JSR.W SetFirefleaSpeed                                               ;A38D53;
    JSR.W SetFirefleaRadius                                              ;A38D56;
    JSR.W SetInitialCirclingFirefleaPosition                             ;A38D59;
    RTL                                                                  ;A38D5C;


%anchor($A38D5D)
SetFirefleaCenter:
    LDA.W $0F7A,X                                                        ;A38D5D;
    STA.W $0FB0,X                                                        ;A38D60;
    LDA.W $0F7E,X                                                        ;A38D63;
    STA.W $0FB2,X                                                        ;A38D66;
    RTS                                                                  ;A38D69;


%anchor($A38D6A)
SetInitialFirefleaAngle:
    LDA.W $0FB5,X                                                        ;A38D6A;
    AND.W #$00FF                                                         ;A38D6D;
    XBA                                                                  ;A38D70;
    STA.W $0FAE,X                                                        ;A38D71;
    RTS                                                                  ;A38D74;


%anchor($A38D75)
SetFirefleaSpeed:
    LDA.W $0FB6,X                                                        ;A38D75;
    AND.W #$00FF                                                         ;A38D78;
    ASL A                                                                ;A38D7B;
    ASL A                                                                ;A38D7C;
    ASL A                                                                ;A38D7D;
    TAY                                                                  ;A38D7E;
    LDA.B $12                                                            ;A38D7F;
    AND.W #$0001                                                         ;A38D81;
    BNE +                                                                ;A38D84;
    INY                                                                  ;A38D86;
    INY                                                                  ;A38D87;
    INY                                                                  ;A38D88;
    INY                                                                  ;A38D89;

  + TYA                                                                  ;A38D8A;
    STA.L $7E7804,X                                                      ;A38D8B;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A38D8F;
    STA.W $0FAA,X                                                        ;A38D92;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A38D95;
    STA.W $0FA8,X                                                        ;A38D98;
    RTS                                                                  ;A38D9B;


%anchor($A38D9C)
SetFirefleaRadius:
    LDA.W $0FB7,X                                                        ;A38D9C;
    AND.W #$00FF                                                         ;A38D9F;
    ASL A                                                                ;A38DA2;
    TAY                                                                  ;A38DA3;
    LDA.W FirefleaMovementRadii,Y                                        ;A38DA4;
    AND.W #$00FF                                                         ;A38DA7;
    STA.W $0FAC,X                                                        ;A38DAA;
    RTS                                                                  ;A38DAD;


%anchor($A38DAE)
SetInitialCirclingFirefleaPosition:
    LDA.W $0FAC,X                                                        ;A38DAE;
    STA.W $0E32                                                          ;A38DB1;
    LDA.W $0FAE,X                                                        ;A38DB4;
    JSL.L EightBitCosineMultiplication_A0B0B2                            ;A38DB7;
    CLC                                                                  ;A38DBB;
    ADC.W $0FB0,X                                                        ;A38DBC;
    STA.W $0F7A,X                                                        ;A38DBF;
    LDA.W $0FAC,X                                                        ;A38DC2;
    STA.W $0E32                                                          ;A38DC5;
    LDA.W $0FAE,X                                                        ;A38DC8;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A38DCB;
    CLC                                                                  ;A38DCF;
    ADC.W $0FB2,X                                                        ;A38DD0;
    STA.W $0F7E,X                                                        ;A38DD3;
    RTS                                                                  ;A38DD6;


%anchor($A38DD7)
SetFirefleaMinMaxYPositions:
    LDA.W $0F7E,X                                                        ;A38DD7;
    SEC                                                                  ;A38DDA;
    SBC.W $0FAC,X                                                        ;A38DDB;
    STA.L $7E7800,X                                                      ;A38DDE;
    LDA.W $0F7E,X                                                        ;A38DE2;
    CLC                                                                  ;A38DE5;
    ADC.W $0FAC,X                                                        ;A38DE6;
    STA.L $7E7802,X                                                      ;A38DE9;
    RTS                                                                  ;A38DED;


%anchor($A38DEE)
MainAI_Fireflea:
    LDX.W $0E54                                                          ;A38DEE;
    LDA.W $0FB4,X                                                        ;A38DF1;
    AND.W #$0002                                                         ;A38DF4;
    BEQ .verticalMovement                                                ;A38DF7;
    LDA.W $0FAC,X                                                        ;A38DF9;
    STA.W $0E32                                                          ;A38DFC;
    LDA.W $0FAE,X                                                        ;A38DFF;
    AND.W #$FF00                                                         ;A38E02;
    XBA                                                                  ;A38E05;
    JSL.L EightBitCosineMultiplication_A0B0B2                            ;A38E06;
    CLC                                                                  ;A38E0A;
    ADC.W $0FB0,X                                                        ;A38E0B;
    STA.W $0F7A,X                                                        ;A38E0E;
    LDA.W $0FAC,X                                                        ;A38E11;
    STA.W $0E32                                                          ;A38E14;
    LDA.W $0FAE,X                                                        ;A38E17;
    AND.W #$FF00                                                         ;A38E1A;
    XBA                                                                  ;A38E1D;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A38E1E;
    CLC                                                                  ;A38E22;
    ADC.W $0FB2,X                                                        ;A38E23;
    STA.W $0F7E,X                                                        ;A38E26;
    LDA.W $0FAE,X                                                        ;A38E29;
    CLC                                                                  ;A38E2C;
    ADC.W $0FA9,X                                                        ;A38E2D;
    STA.W $0FAE,X                                                        ;A38E30;
    RTL                                                                  ;A38E33;


.verticalMovement:
    LDA.L $7E7804,X                                                      ;A38E34;
    TAY                                                                  ;A38E38;
    CLC                                                                  ;A38E39;
    LDA.W $0F80,X                                                        ;A38E3A;
    ADC.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A38E3D;
    STA.W $0F80,X                                                        ;A38E40;
    LDA.W $0F7E,X                                                        ;A38E43;
    ADC.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A38E46;
    STA.W $0F7E,X                                                        ;A38E49;
    LDA.W $0F7E,X                                                        ;A38E4C;
    CMP.L $7E7800,X                                                      ;A38E4F;
    BMI +                                                                ;A38E53;
    LDA.W $0F7E,X                                                        ;A38E55;
    CMP.L $7E7802,X                                                      ;A38E58;
    BPL +                                                                ;A38E5C;
    RTL                                                                  ;A38E5E;


  + LDA.L $7E7804,X                                                      ;A38E5F;
    EOR.W #$0004                                                         ;A38E63;
    STA.L $7E7804,X                                                      ;A38E66;
    RTL                                                                  ;A38E6A;


%anchor($A38E6B)
EnemyTouch_Fireflea:
    JSL.L CommonA3_NormalEnemyTouchAI                                    ;A38E6B;
    JSL.L EnemyDeath                                                     ;A38E6F;
    LDA.W $177E                                                          ;A38E73;
    CLC                                                                  ;A38E76;
    ADC.W #$0002                                                         ;A38E77;
    CMP.W #$000E                                                         ;A38E7A;
    BPL .return                                                          ;A38E7D;
    STA.W $177E                                                          ;A38E7F;

.return:
    RTL                                                                  ;A38E82;


%anchor($A38E83)
PowerBombReaction_Fireflea:
    JSL.L CommonA3_NormalEnemyPowerBombAI                                ;A38E83;
    BRA ShotReaction_Fireflea_Common                                     ;A38E87;


%anchor($A38E89)
EnemyShot_Fireflea:
    JSL.L CommonA3_NormalEnemyShotAI                                     ;A38E89; fallthrough to ShotReaction_Fireflea_Common

%anchor($A38E8D)
ShotReaction_Fireflea_Common:
    LDX.W $0E54                                                          ;A38E8D;
    LDA.W $0F8C,X                                                        ;A38E90;
    BNE .return                                                          ;A38E93;
    LDA.W $177E                                                          ;A38E95;
    CLC                                                                  ;A38E98;
    ADC.W #$0002                                                         ;A38E99;
    CMP.W #$000E                                                         ;A38E9C;
    BPL .return                                                          ;A38E9F;
    STA.W $177E                                                          ;A38EA1;

.return:
    RTL                                                                  ;A38EA4;


%anchor($A38EA5)
Spritemap_Fireflea_0:
    dw $0003                                                             ;A38EA5;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $100)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $121)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $120)

%anchor($A38EB6)
Spritemap_Fireflea_1:
    dw $0003                                                             ;A38EB6;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $100)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $123)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $122)

%anchor($A38EC7)
Spritemap_Fireflea_2:
    dw $0003                                                             ;A38EC7;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $100)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $125)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $124)

%anchor($A38ED8)
Spritemap_Fireflea_3:
    dw $0003                                                             ;A38ED8;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $102)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $121)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $120)

%anchor($A38EE9)
Spritemap_Fireflea_4:
    dw $0003                                                             ;A38EE9;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $102)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $123)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $122)

%anchor($A38EFA)
Spritemap_Fireflea_5:
    dw $0003                                                             ;A38EFA;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $102)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $125)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $124)

%anchor($A38F0B)
Spritemap_Fireflea_6:
    dw $0003                                                             ;A38F0B;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $104)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $127)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $126)

%anchor($A38F1C)
Spritemap_Fireflea_7:
    dw $0003                                                             ;A38F1C;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $104)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $129)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $128)

%anchor($A38F2D)
Spritemap_Fireflea_8:
    dw $0003                                                             ;A38F2D;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $104)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $12B)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $12A)

%anchor($A38F3E)
Spritemap_Fireflea_9:
    dw $0003                                                             ;A38F3E;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $106)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $127)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $126)

%anchor($A38F4F)
Spritemap_Fireflea_A:
    dw $0003                                                             ;A38F4F;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $106)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $129)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $128)

%anchor($A38F60)
Spritemap_Fireflea_B:
    dw $0003                                                             ;A38F60;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $106)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $12B)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $12A)

%anchor($A38F71)
Spritemap_Fireflea_C:
    dw $0003                                                             ;A38F71;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $108)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $127)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $126)

%anchor($A38F82)
Spritemap_Fireflea_D:
    dw $0003                                                             ;A38F82;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $108)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $129)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $128)

%anchor($A38F93)
Spritemap_Fireflea_E:
    dw $0003                                                             ;A38F93;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $108)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $12B)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $12A)

%anchor($A38FA4)
Spritemap_Fireflea_F:
    dw $0003                                                             ;A38FA4;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $10A)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $12D)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $12C)

%anchor($A38FB5)
Spritemap_Fireflea_10:
    dw $0003                                                             ;A38FB5;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $10A)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $12F)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $12E)

%anchor($A38FC6)
Spritemap_Fireflea_11:
    dw $0003                                                             ;A38FC6;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $10A)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $11F)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $11E)

%anchor($A38FD7)
Spritemap_Fireflea_12:
    dw $0003                                                             ;A38FD7;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $10C)
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $12D)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $12C)

%anchor($A38FE8)
Spritemap_Fireflea_13:
    dw $0003                                                             ;A38FE8;
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $12F)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $12E)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $10C)

%anchor($A38FF9)
Spritemap_Fireflea_14:
    dw $0003                                                             ;A38FF9;
    %spritemapEntry(0, $01, $F6, 0, 0, 3, 0, $11F)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 3, 0, $11E)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $10C)


%anchor($A3900A)
Palette_Skultera:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A3900A;
    dw $2C63,$241F,$1C17,$142F,$0C47,$03FF,$0237,$00D1                   ;A3901A;

%anchor($A3902A)
InstList_Skultera_SwimmingLeft_0:
    dw Instruction_Skultera_SetLayerTo2                                  ;A3902A;

%anchor($A3902C)
InstList_Skultera_SwimmingLeft_1:
    dw $000E,Spritemap_Skultera_0                                        ;A3902C;
    dw $000E,Spritemap_Skultera_1                                        ;A39030;
    dw $000E,Spritemap_Skultera_2                                        ;A39034;
    dw Instruction_Common_GotoY                                          ;A39038;
    dw InstList_Skultera_SwimmingLeft_1                                  ;A3903A;

%anchor($A3903C)
InstList_Skultera_TurningRight:
    dw $000D,Spritemap_Skultera_3                                        ;A3903C;
    dw $000A,Spritemap_Skultera_4                                        ;A39040;
    dw $0008,Spritemap_Skultera_5                                        ;A39044;
    dw $0006,Spritemap_Skultera_6                                        ;A39048;
    dw $0006,Spritemap_Skultera_7                                        ;A3904C;
    dw $0008,Spritemap_Skultera_8                                        ;A39050;
    dw $000A,Spritemap_Skultera_9                                        ;A39054;
    dw $000D,Spritemap_Skultera_A                                        ;A39058;
    dw Instruction_Skultera_SetTurnFinishedFlag                          ;A3905C;
    dw Instruction_Common_Sleep                                          ;A3905E;

%anchor($A39060)
InstList_Skultera_SwimmingRight_0:
    dw Instruction_Skultera_SetLayerTo6                                  ;A39060;

%anchor($A39062)
InstList_Skultera_SwimmingRight_1:
    dw $000E,Spritemap_Skultera_B                                        ;A39062;
    dw $000E,Spritemap_Skultera_C                                        ;A39066;
    dw $000E,Spritemap_Skultera_D                                        ;A3906A;
    dw Instruction_Common_GotoY                                          ;A3906E;
    dw InstList_Skultera_SwimmingRight_1                                 ;A39070;

%anchor($A39072)
InstList_Skultera_TurningLeft:
    dw $000D,Spritemap_Skultera_E                                        ;A39072;
    dw $000A,Spritemap_Skultera_F                                        ;A39076;
    dw $0008,Spritemap_Skultera_10                                       ;A3907A;
    dw $0006,Spritemap_Skultera_11                                       ;A3907E;
    dw $0006,Spritemap_Skultera_12                                       ;A39082;
    dw $0008,Spritemap_Skultera_13                                       ;A39086;
    dw $000A,Spritemap_Skultera_14                                       ;A3908A;
    dw $000D,Spritemap_Skultera_15                                       ;A3908E;
    dw Instruction_Skultera_SetTurnFinishedFlag                          ;A39092;
    dw Instruction_Common_Sleep                                          ;A39094;

%anchor($A39096)
Instruction_Skultera_SetLayerTo6:
    LDX.W $0E54                                                          ;A39096;
    LDA.W #$0006                                                         ;A39099;
    STA.W $0F9A,X                                                        ;A3909C;
    RTL                                                                  ;A3909F;


%anchor($A390A0)
Instruction_Skultera_SetLayerTo2:
    LDX.W $0E54                                                          ;A390A0;
    LDA.W #$0002                                                         ;A390A3;
    STA.W $0F9A,X                                                        ;A390A6;
    RTL                                                                  ;A390A9;


%anchor($A390AA)
Instruction_Skultera_SetTurnFinishedFlag:
    LDX.W $0E54                                                          ;A390AA;
    LDA.W #$0001                                                         ;A390AD;
    STA.L $7E7802,X                                                      ;A390B0;
    RTL                                                                  ;A390B4;


%anchor($A390B5)
InitAI_Skultera:
    LDX.W $0E54                                                          ;A390B5;
    LDA.W #InstList_Skultera_SwimmingLeft_0                              ;A390B8;
    STA.W $0F92,X                                                        ;A390BB;
    LDA.W #Function_Skultera_SwimmingLeft                                ;A390BE;
    STA.W $0FA8,X                                                        ;A390C1;
    LDA.W $0FB5,X                                                        ;A390C4;
    AND.W #$00FF                                                         ;A390C7;
    BNE .keepLeft                                                        ;A390CA;
    LDA.W #InstList_Skultera_SwimmingRight_0                             ;A390CC;
    STA.W $0F92,X                                                        ;A390CF;
    LDA.W #Function_Skultera_SwimmingRight                               ;A390D2;
    STA.W $0FA8,X                                                        ;A390D5;

.keepLeft:
    LDA.W $0FB4,X                                                        ;A390D8;
    AND.W #$00FF                                                         ;A390DB;
    ASL A                                                                ;A390DE;
    ASL A                                                                ;A390DF;
    ASL A                                                                ;A390E0;
    TAY                                                                  ;A390E1;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A390E2;
    STA.W $0FAC,X                                                        ;A390E5;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A390E8;
    STA.W $0FAA,X                                                        ;A390EB;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A390EE;
    STA.W $0FB0,X                                                        ;A390F1;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A390F4;
    STA.W $0FAE,X                                                        ;A390F7;
    LDA.W $0FB6,X                                                        ;A390FA;
    AND.W #$00FF                                                         ;A390FD;
    STA.L $7E7800,X                                                      ;A39100;
    LDA.W $0FB7,X                                                        ;A39104;
    AND.W #$00FF                                                         ;A39107;
    STA.L $7E7804,X                                                      ;A3910A;
    LDA.W #$0000                                                         ;A3910E;
    STA.W $0FB2,X                                                        ;A39111;
    STA.L $7E7802,X                                                      ;A39114;
    LDA.L $7E7800,X                                                      ;A39118;
    STA.W $0E32                                                          ;A3911C;
    LDA.W $0FB2,X                                                        ;A3911F;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A39122;
    STA.L $7E7806,X                                                      ;A39126;
    RTL                                                                  ;A3912A;


%anchor($A3912B)
MainAI_Skultera:
    LDX.W $0E54                                                          ;A3912B;
    JSR.W ($0FA8,X)                                                      ;A3912E;
    RTL                                                                  ;A39131;


%anchor($A39132)
Function_Skultera_SwimmingLeft:
    LDX.W $0E54                                                          ;A39132;
    LDA.W $0FAE,X                                                        ;A39135;
    STA.B $12                                                            ;A39138;
    LDA.W $0FB0,X                                                        ;A3913A;
    STA.B $14                                                            ;A3913D;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3913F;
    BCC .noWallCollision                                                 ;A39143;
    LDA.W #Function_Skultera_TurningRight                                ;A39145;
    STA.W $0FA8,X                                                        ;A39148;
    LDA.W #$0001                                                         ;A3914B;
    STA.W $0F94,X                                                        ;A3914E;
    STZ.W $0F90,X                                                        ;A39151;
    LDA.W #InstList_Skultera_TurningRight                                ;A39154;
    STA.W $0F92,X                                                        ;A39157;
    BRA .merge                                                           ;A3915A;


.noWallCollision:
    LDA.L $7E7800,X                                                      ;A3915C;
    STA.W $0E32                                                          ;A39160;
    LDA.W $0FB2,X                                                        ;A39163;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A39166;
    STA.L $7E7808,X                                                      ;A3916A;
    SEC                                                                  ;A3916E;
    SBC.L $7E7806,X                                                      ;A3916F;
    STA.B $14                                                            ;A39173;
    STZ.B $12                                                            ;A39175;
    JSL.L MoveEnemyDownBy_14_12                                          ;A39177;
    BCC .noBlockCollision                                                ;A3917B;
    LDA.W #Function_Skultera_TurningRight                                ;A3917D;
    STA.W $0FA8,X                                                        ;A39180;
    LDA.W #$0001                                                         ;A39183;
    STA.W $0F94,X                                                        ;A39186;
    STZ.W $0F90,X                                                        ;A39189;
    LDA.W #InstList_Skultera_TurningRight                                ;A3918C;
    STA.W $0F92,X                                                        ;A3918F;
    BRA .merge                                                           ;A39192;


.noBlockCollision:
    LDA.W $0FB2,X                                                        ;A39194;
    CLC                                                                  ;A39197;
    ADC.L $7E7804,X                                                      ;A39198;
    AND.W #$00FF                                                         ;A3919C;
    STA.W $0FB2,X                                                        ;A3919F;

.merge:
    LDA.L $7E7808,X                                                      ;A391A2;
    STA.L $7E7806,X                                                      ;A391A6;
    RTS                                                                  ;A391AA;


%anchor($A391AB)
Function_Skultera_SwimmingRight:
    LDX.W $0E54                                                          ;A391AB;
    LDA.W $0FAA,X                                                        ;A391AE;
    STA.B $12                                                            ;A391B1;
    LDA.W $0FAC,X                                                        ;A391B3;
    STA.B $14                                                            ;A391B6;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A391B8;
    BCC .noWallCollision                                                 ;A391BC;
    LDA.W #Function_Skultera_TurningLeft                                 ;A391BE;
    STA.W $0FA8,X                                                        ;A391C1;
    LDA.W #$0001                                                         ;A391C4;
    STA.W $0F94,X                                                        ;A391C7;
    STZ.W $0F90,X                                                        ;A391CA;
    LDA.W #InstList_Skultera_TurningLeft                                 ;A391CD;
    STA.W $0F92,X                                                        ;A391D0;
    BRA .merge                                                           ;A391D3;


.noWallCollision:
    LDA.L $7E7800,X                                                      ;A391D5;
    STA.W $0E32                                                          ;A391D9;
    LDA.W $0FB2,X                                                        ;A391DC;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A391DF;
    STA.L $7E7808,X                                                      ;A391E3;
    SEC                                                                  ;A391E7;
    SBC.L $7E7806,X                                                      ;A391E8;
    STA.B $14                                                            ;A391EC;
    STZ.B $12                                                            ;A391EE;
    JSL.L MoveEnemyDownBy_14_12                                          ;A391F0;
    BCC .noBlockCollision                                                ;A391F4;
    LDA.W #Function_Skultera_TurningLeft                                 ;A391F6;
    STA.W $0FA8,X                                                        ;A391F9;
    LDA.W #$0001                                                         ;A391FC;
    STA.W $0F94,X                                                        ;A391FF;
    STZ.W $0F90,X                                                        ;A39202;
    LDA.W #InstList_Skultera_TurningLeft                                 ;A39205;
    STA.W $0F92,X                                                        ;A39208;
    BRA .merge                                                           ;A3920B;


.noBlockCollision:
    LDA.W $0FB2,X                                                        ;A3920D;
    CLC                                                                  ;A39210;
    ADC.L $7E7804,X                                                      ;A39211;
    AND.W #$00FF                                                         ;A39215;
    STA.W $0FB2,X                                                        ;A39218;

.merge:
    LDA.L $7E7808,X                                                      ;A3921B;
    STA.L $7E7806,X                                                      ;A3921F;
    RTS                                                                  ;A39223;


%anchor($A39224)
Function_Skultera_TurningRight:
    LDX.W $0E54                                                          ;A39224;
    LDA.L $7E7802,X                                                      ;A39227;
    BEQ .return                                                          ;A3922B;
    LDA.W #$0000                                                         ;A3922D;
    STA.L $7E7802,X                                                      ;A39230;
    LDA.W #Function_Skultera_SwimmingRight                               ;A39234;
    STA.W $0FA8,X                                                        ;A39237;
    LDA.L $7E7804,X                                                      ;A3923A;
    EOR.W #$FFFF                                                         ;A3923E;
    INC A                                                                ;A39241;
    STA.L $7E7804,X                                                      ;A39242;
    LDA.W #$0001                                                         ;A39246;
    STA.W $0F94,X                                                        ;A39249;
    STZ.W $0F90,X                                                        ;A3924C;
    LDA.W #InstList_Skultera_SwimmingRight_0                             ;A3924F;
    STA.W $0F92,X                                                        ;A39252;

.return:
    RTS                                                                  ;A39255;


%anchor($A39256)
Function_Skultera_TurningLeft:
    LDX.W $0E54                                                          ;A39256;
    LDA.L $7E7802,X                                                      ;A39259;
    BEQ .return                                                          ;A3925D;
    LDA.W #$0000                                                         ;A3925F;
    STA.L $7E7802,X                                                      ;A39262;
    LDA.W #Function_Skultera_SwimmingLeft                                ;A39266;
    STA.W $0FA8,X                                                        ;A39269;
    LDA.L $7E7804,X                                                      ;A3926C;
    EOR.W #$FFFF                                                         ;A39270;
    INC A                                                                ;A39273;
    STA.L $7E7804,X                                                      ;A39274;
    LDA.W #$0001                                                         ;A39278;
    STA.W $0F94,X                                                        ;A3927B;
    STZ.W $0F90,X                                                        ;A3927E;
    LDA.W #InstList_Skultera_SwimmingLeft_0                              ;A39281;
    STA.W $0F92,X                                                        ;A39284;

.return:
    RTS                                                                  ;A39287;


%anchor($A39288)
RTL_A39288:
    RTL                                                                  ;A39288;


%anchor($A39289)
RTL_A39289:
    RTL                                                                  ;A39289;


%anchor($A3928A)
Spritemap_Skultera_0:
    dw $0005                                                             ;A3928A;
    %spritemapEntry(1, $43F2, $00, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $43F2, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $1FE, $FD, 0, 0, 2, 0, $120)
    %spritemapEntry(0, $03, $FE, 0, 0, 2, 0, $121)
    %spritemapEntry(0, $08, $FE, 0, 0, 2, 0, $123)

%anchor($A392A5)
Spritemap_Skultera_1:
    dw $0005                                                             ;A392A5;
    %spritemapEntry(1, $43F2, $00, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $43F2, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $1FE, $FE, 0, 0, 2, 0, $121)
    %spritemapEntry(0, $03, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(0, $08, $FE, 0, 0, 2, 0, $124)

%anchor($A392C0)
Spritemap_Skultera_2:
    dw $0005                                                             ;A392C0;
    %spritemapEntry(1, $43F2, $00, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $43F2, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $1FE, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(0, $03, $FD, 0, 0, 2, 0, $120)
    %spritemapEntry(0, $08, $FE, 0, 0, 2, 0, $125)

%anchor($A392DB)
Spritemap_Skultera_3:
    dw $0005                                                             ;A392DB;
    %spritemapEntry(0, $08, $FE, 0, 0, 2, 0, $123)
    %spritemapEntry(0, $03, $FE, 0, 0, 2, 0, $121)
    %spritemapEntry(0, $1FE, $FD, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F2, $00, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $43F2, $F0, 0, 0, 2, 0, $100)

%anchor($A392F6)
Spritemap_Skultera_4:
    dw $0005                                                             ;A392F6;
    %spritemapEntry(1, $43F2, $00, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $43F2, $F0, 0, 0, 2, 0, $106)
    %spritemapEntry(0, $1FC, $FE, 0, 0, 2, 0, $121)
    %spritemapEntry(0, $01, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(0, $06, $FE, 0, 0, 2, 0, $124)

%anchor($A39311)
Spritemap_Skultera_5:
    dw $0004                                                             ;A39311;
    %spritemapEntry(1, $43F2, $00, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $43F2, $F0, 0, 0, 2, 0, $10A)
    %spritemapEntry(0, $1FE, $FD, 0, 0, 2, 0, $120)
    %spritemapEntry(0, $03, $FE, 0, 0, 2, 0, $125)

%anchor($A39327)
Spritemap_Skultera_6:
    dw $0004                                                             ;A39327;
    %spritemapEntry(1, $43F0, $00, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $43F0, $F0, 0, 1, 2, 0, $106)
    %spritemapEntry(0, $1EE, $FD, 0, 1, 2, 0, $120)
    %spritemapEntry(0, $1FD, $FE, 0, 0, 2, 0, $123)

%anchor($A3933D)
Spritemap_Skultera_7:
    dw $0003                                                             ;A3933D;
    %spritemapEntry(1, $43F2, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $43F2, $00, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $1EF, $FD, 0, 1, 2, 0, $121)

%anchor($A3934E)
Spritemap_Skultera_8:
    dw $0004                                                             ;A3934E;
    %spritemapEntry(1, $43F5, $00, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $43F5, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(0, $1F1, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(0, $1EF, $FD, 0, 1, 2, 0, $120)

%anchor($A39364)
Spritemap_Skultera_9:
    dw $0005                                                             ;A39364;
    %spritemapEntry(1, $43FB, $00, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $43FB, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(0, $1F7, $FD, 0, 1, 2, 0, $120)
    %spritemapEntry(0, $1F2, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(0, $1F0, $FE, 0, 1, 2, 0, $124)

%anchor($A3937F)
Spritemap_Skultera_A:
    dw $0005                                                             ;A3937F;
    %spritemapEntry(1, $43FF, $00, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $43FF, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(0, $1FB, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(0, $1F6, $FD, 0, 1, 2, 0, $120)
    %spritemapEntry(0, $1F1, $FE, 0, 1, 2, 0, $125)

%anchor($A3939A)
Spritemap_Skultera_B:
    dw $0005                                                             ;A3939A;
    %spritemapEntry(1, $43FE, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $43FE, $00, 0, 1, 2, 0, $104)
    %spritemapEntry(0, $1FA, $FD, 0, 1, 2, 0, $120)
    %spritemapEntry(0, $1F5, $FE, 0, 1, 2, 0, $121)
    %spritemapEntry(0, $1F0, $FE, 0, 1, 2, 0, $123)

%anchor($A393B5)
Spritemap_Skultera_C:
    dw $0005                                                             ;A393B5;
    %spritemapEntry(1, $43FE, $00, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $43FE, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(0, $1FA, $FE, 0, 1, 2, 0, $121)
    %spritemapEntry(0, $1F5, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(0, $1F0, $FE, 0, 1, 2, 0, $124)

%anchor($A393D0)
Spritemap_Skultera_D:
    dw $0005                                                             ;A393D0;
    %spritemapEntry(1, $43FE, $00, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $43FE, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(0, $1FA, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(0, $1F5, $FD, 0, 1, 2, 0, $120)
    %spritemapEntry(0, $1F0, $FE, 0, 1, 2, 0, $125)

%anchor($A393EB)
Spritemap_Skultera_E:
    dw $0005                                                             ;A393EB;
    %spritemapEntry(0, $1F0, $FE, 0, 1, 2, 0, $123)
    %spritemapEntry(0, $1F5, $FE, 0, 1, 2, 0, $121)
    %spritemapEntry(0, $1FA, $FD, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43FE, $00, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $43FE, $F0, 0, 1, 2, 0, $100)

%anchor($A39406)
Spritemap_Skultera_F:
    dw $0005                                                             ;A39406;
    %spritemapEntry(1, $43FE, $00, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $43FE, $F0, 0, 1, 2, 0, $106)
    %spritemapEntry(0, $1FC, $FE, 0, 1, 2, 0, $121)
    %spritemapEntry(0, $1F7, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(0, $1F2, $FE, 0, 1, 2, 0, $124)

%anchor($A39421)
Spritemap_Skultera_10:
    dw $0004                                                             ;A39421;
    %spritemapEntry(1, $43FE, $00, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $43FE, $F0, 0, 1, 2, 0, $10A)
    %spritemapEntry(0, $1FA, $FD, 0, 1, 2, 0, $120)
    %spritemapEntry(0, $1F5, $FE, 0, 1, 2, 0, $125)

%anchor($A39437)
Spritemap_Skultera_11:
    dw $0004                                                             ;A39437;
    %spritemapEntry(1, $4200, $00, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $4200, $F0, 0, 0, 2, 0, $106)
    %spritemapEntry(0, $0A, $FD, 0, 0, 2, 0, $120)
    %spritemapEntry(0, $1FB, $FE, 0, 1, 2, 0, $123)

%anchor($A3944D)
Spritemap_Skultera_12:
    dw $0003                                                             ;A3944D;
    %spritemapEntry(1, $43FE, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43FE, $00, 0, 0, 2, 0, $102)
    %spritemapEntry(0, $09, $FD, 0, 0, 2, 0, $121)

%anchor($A3945E)
Spritemap_Skultera_13:
    dw $0004                                                             ;A3945E;
    %spritemapEntry(1, $43FB, $00, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $43FB, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $07, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(0, $09, $FD, 0, 0, 2, 0, $120)

%anchor($A39474)
Spritemap_Skultera_14:
    dw $0005                                                             ;A39474;
    %spritemapEntry(1, $43F5, $00, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $43F5, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $01, $FD, 0, 0, 2, 0, $120)
    %spritemapEntry(0, $06, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(0, $08, $FE, 0, 0, 2, 0, $124)

%anchor($A3948F)
Spritemap_Skultera_15:
    dw $0005                                                             ;A3948F;
    %spritemapEntry(1, $43F1, $00, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $43F1, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $1FD, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(0, $02, $FD, 0, 0, 2, 0, $120)
    %spritemapEntry(0, $07, $FE, 0, 0, 2, 0, $125)


%anchor($A394AA)
UNUSED_SpritemapPointers_Skultera:
    dw Spritemap_Skultera_0                                              ;A394AA;
    dw Spritemap_Skultera_1                                              ;A394AC;
    dw Spritemap_Skultera_2                                              ;A394AE;
    dw Spritemap_Skultera_3                                              ;A394B0;
    dw Spritemap_Skultera_4                                              ;A394B2;
    dw Spritemap_Skultera_5                                              ;A394B4;
    dw Spritemap_Skultera_6                                              ;A394B6;
    dw Spritemap_Skultera_7                                              ;A394B8;
    dw Spritemap_Skultera_8                                              ;A394BA;
    dw Spritemap_Skultera_9                                              ;A394BC;
    dw Spritemap_Skultera_A                                              ;A394BE;
    dw Spritemap_Skultera_B                                              ;A394C0;
    dw Spritemap_Skultera_C                                              ;A394C2;
    dw Spritemap_Skultera_D                                              ;A394C4;
    dw Spritemap_Skultera_E                                              ;A394C6;
    dw Spritemap_Skultera_F                                              ;A394C8;
    dw Spritemap_Skultera_10                                             ;A394CA;
    dw Spritemap_Skultera_11                                             ;A394CC;
    dw Spritemap_Skultera_12                                             ;A394CE;
    dw Spritemap_Skultera_13                                             ;A394D0;
    dw Spritemap_Skultera_14                                             ;A394D2;
    dw Spritemap_Skultera_15                                             ;A394D4;

%anchor($A394D6)
InstList_Elevator:
    dw $0002,Spritemap_Elevator_0                                        ;A394D6;
    dw $0002,Spritemap_Elevator_1                                        ;A394DA;
    dw Instruction_Common_GotoY                                          ;A394DE;
    dw InstList_Elevator                                                 ;A394E0;

%anchor($A394E2)
ElevatorControllerInputs:
; Indexed by parameter 1 (Speed in SMILE), which is multiplied by 2 in the init AI
; Down, Up
    dw $0400,$0800                                                       ;A394E2;

%anchor($A394E6)
InitAI_Elevator:
    LDX.W $0E54                                                          ;A394E6;
    LDA.W #Spritemap_CommonA3_Nothing                                    ;A394E9;
    STA.W $0F8E,X                                                        ;A394EC;
    LDA.W #$0001                                                         ;A394EF;
    STA.W $0F94,X                                                        ;A394F2;
    STZ.W $0F90,X                                                        ;A394F5;
    LDA.W #InstList_Elevator                                             ;A394F8;
    STA.W $0F92,X                                                        ;A394FB;
    ASL.W $0FB4,X                                                        ;A394FE;
    LDA.W $0F7E,X                                                        ;A39501;
    STA.W $0FA8,X                                                        ;A39504;
    LDA.W $0E18                                                          ;A39507;
    CMP.W #$0002                                                         ;A3950A;
    BEQ .doorTransition                                                  ;A3950D;
    STZ.W $0E16                                                          ;A3950F;
    STZ.W $0E18                                                          ;A39512;

.doorTransition:
    LDA.W $0E16                                                          ;A39515;
    ORA.W $0E18                                                          ;A39518;
    BEQ .return                                                          ;A3951B;
    LDX.W $0E54                                                          ;A3951D;
    LDA.W $0FB6,X                                                        ;A39520;
    STA.W $0F7E,X                                                        ;A39523;
    JSR.W PlaceSamusOnElevator                                           ;A39526;

.return:
    RTL                                                                  ;A39529;


%anchor($A3952A)
MainAI_GrappleAI_FrozenAI_Elevator:
    LDA.W $0795                                                          ;A3952A;
    BNE .return                                                          ;A3952D;
    LDA.W $0E16                                                          ;A3952F;
    ORA.W $0E18                                                          ;A39532;
    BEQ .return                                                          ;A39535;
    LDA.W $0E18                                                          ;A39537;
    ASL A                                                                ;A3953A;
    TAX                                                                  ;A3953B;
    JSR.W (.pointers,X)                                                  ;A3953C;

.return:
    RTL                                                                  ;A3953F;


.pointers:
    dw ElevatorAI_0_LeavingRoom                                          ;A39540;
    dw ElevatorAI_1_LeavingRoom                                          ;A39542;
    dw ElevatorAI_2_DoorTransition                                       ;A39544;
    dw ElevatorAI_3_EnteringRoom                                         ;A39546;

%anchor($A39548)
ElevatorAI_0_LeavingRoom:
    LDX.W $0E54                                                          ;A39548;
    LDY.W $0FB4,X                                                        ;A3954B;
    LDA.B $8F                                                            ;A3954E;
    AND.W ElevatorControllerInputs,Y                                     ;A39550;
    BEQ .notRiding                                                       ;A39553;
    LDA.W #$000B                                                         ;A39555;
    JSL.L QueueSound_Lib3_Max6                                           ;A39558;
    LDA.W #$0032                                                         ;A3955C;
    JSL.L QueueSound_Lib1_Max6                                           ;A3955F;
    LDA.W #$0007                                                         ;A39563;
    JSL.L Run_Samus_Command                                              ;A39566;
    JSL.L Reset_Projectile_Data                                          ;A3956A;
    JSR.W PlaceSamusOnElevator                                           ;A3956E;
    INC.W $0E18                                                          ;A39571;
    RTS                                                                  ;A39574;


.notRiding:
    STZ.W $0E16                                                          ;A39575;
    RTS                                                                  ;A39578;


%anchor($A39579)
ElevatorAI_1_LeavingRoom:
    LDX.W $0E54                                                          ;A39579;
    LDA.W $0FB4,X                                                        ;A3957C;
    BNE .up                                                              ;A3957F;
    LDA.W #$0000                                                         ;A39581;
    STA.W $0799                                                          ;A39584;
    LDA.W $0F80,X                                                        ;A39587;
    CLC                                                                  ;A3958A;
    ADC.W #$8000                                                         ;A3958B;
    STA.W $0F80,X                                                        ;A3958E;
    LDA.W $0F7E,X                                                        ;A39591;
    ADC.W #$0001                                                         ;A39594;
    STA.W $0F7E,X                                                        ;A39597;
    BRA +                                                                ;A3959A;


.up:
    LDA.W #$8000                                                         ;A3959C;
    STA.W $0799                                                          ;A3959F;
    LDA.W $0F80,X                                                        ;A395A2;
    SEC                                                                  ;A395A5;
    SBC.W #$8000                                                         ;A395A6;
    STA.W $0F80,X                                                        ;A395A9;
    LDA.W $0F7E,X                                                        ;A395AC;
    SBC.W #$0001                                                         ;A395AF;
    STA.W $0F7E,X                                                        ;A395B2;

  + JSR.W PlaceSamusOnElevator                                           ;A395B5;
    RTS                                                                  ;A395B8;


%anchor($A395B9)
ElevatorAI_2_DoorTransition:
    INC.W $0E18                                                          ;A395B9; fallthrough to ElevatorAI_3_EnteringRoom

%anchor($A395BC)
ElevatorAI_3_EnteringRoom:
    LDX.W $0E54                                                          ;A395BC;
    LDA.W $0FB4,X                                                        ;A395BF;
    BEQ .down                                                            ;A395C2;
    LDA.W $0F80,X                                                        ;A395C4;
    CLC                                                                  ;A395C7;
    ADC.W #$8000                                                         ;A395C8;
    STA.W $0F80,X                                                        ;A395CB;
    LDA.W $0F7E,X                                                        ;A395CE;
    ADC.W #$0001                                                         ;A395D1;
    STA.W $0F7E,X                                                        ;A395D4;
    CMP.W $0FA8,X                                                        ;A395D7;
    BCS .reachedTarget                                                   ;A395DA;
    BRA PlaceSamusOnElevator                                             ;A395DC;


.down:
    LDA.W $0F80,X                                                        ;A395DE;
    SEC                                                                  ;A395E1;
    SBC.W #$8000                                                         ;A395E2;
    STA.W $0F80,X                                                        ;A395E5;
    LDA.W $0F7E,X                                                        ;A395E8;
    SBC.W #$0001                                                         ;A395EB;
    STA.W $0F7E,X                                                        ;A395EE;
    CMP.W $0FA8,X                                                        ;A395F1;
    BCC .reachedTarget                                                   ;A395F4;
    BRA PlaceSamusOnElevator                                             ;A395F6;


.reachedTarget:
    STZ.W $0E18                                                          ;A395F8;
    STZ.W $0E16                                                          ;A395FB;
    LDA.W #$0025                                                         ;A395FE;
    JSL.L QueueSound_Lib3_Max6                                           ;A39601;
    LDA.W $0FA8,X                                                        ;A39605;
    STA.W $0F7E,X                                                        ;A39608;
    LDA.W #$000B                                                         ;A3960B;
    JSL.L Run_Samus_Command                                              ;A3960E; fallthrough to PlaceSamusOnElevator

%anchor($A39612)
PlaceSamusOnElevator:
    LDX.W $0E54                                                          ;A39612;
    LDA.W $0F7E,X                                                        ;A39615;
    SEC                                                                  ;A39618;
    SBC.W #$001A                                                         ;A39619;
    STA.W $0AFA                                                          ;A3961C;
    STZ.W $0AFC                                                          ;A3961F;
    LDA.W $0F7A,X                                                        ;A39622;
    STA.W $0AF6                                                          ;A39625;
    STZ.W $0B2E                                                          ;A39628;
    STZ.W $0B2C                                                          ;A3962B;
    RTS                                                                  ;A3962E;


%anchor($A3962F)
Spritemap_Elevator_0:
    dw $0004                                                             ;A3962F;
    %spritemapEntry(0, $1F2, $FC, 0, 1, 2, 5, $6C)
    %spritemapEntry(0, $06, $FC, 0, 1, 2, 5, $6C)
    %spritemapEntry(0, $00, $FC, 0, 1, 2, 5, $6C)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 5, $6C)

%anchor($A39645)
Spritemap_Elevator_1:
    dw $0004                                                             ;A39645;
    %spritemapEntry(0, $00, $FC, 0, 1, 2, 5, $6E)
    %spritemapEntry(0, $08, $FC, 0, 1, 2, 5, $6D)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 5, $6E)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 5, $6D)


%anchor($A3965B)
Palette_Sciser:
    dw $3800,$3EDF,$0018,$000F,$0005,$01DD,$0118,$0093                   ;A3965B;
    dw $002F,$7FE0,$7DA0,$48E0,$30A0,$3BE0,$2680,$1580                   ;A3966B;

%anchor($A3967B)
InstList_Sciser_UpsideRight_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A3967B;
    dw Function_Crawlers_CrawlingVertically                              ;A3967D;

%anchor($A3967F)
InstList_Sciser_UpsideRight_1:
    dw $0008,Spritemap_Sciser_UpsideRight_0                              ;A3967F;
    dw $0008,Spritemap_Sciser_UpsideRight_1                              ;A39683;
    dw $0008,Spritemap_Sciser_UpsideRight_2                              ;A39687;
    dw $0008,Spritemap_Sciser_UpsideRight_1                              ;A3968B;
    dw Instruction_Common_GotoY                                          ;A3968F;
    dw InstList_Sciser_UpsideRight_1                                     ;A39691;

%anchor($A39693)
InstList_Sciser_UpsideLeft_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A39693;
    dw Function_Crawlers_CrawlingVertically                              ;A39695;

%anchor($A39697)
InstList_Sciser_UpsideLeft_1:
    dw $0008,Spritemap_Sciser_UpsideLeft_0                               ;A39697;
    dw $0008,Spritemap_Sciser_UpsideLeft_1                               ;A3969B;
    dw $0008,Spritemap_Sciser_UpsideLeft_2                               ;A3969F;
    dw $0008,Spritemap_Sciser_UpsideLeft_1                               ;A396A3;
    dw Instruction_Common_GotoY                                          ;A396A7;
    dw InstList_Sciser_UpsideLeft_1                                      ;A396A9;

%anchor($A396AB)
InstList_Sciser_UpsideDown_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A396AB;
    dw Function_Crawlers_CrawlingHorizontally                            ;A396AD;

%anchor($A396AF)
InstList_Sciser_UpsideDown_1:
    dw $0008,Spritemap_Sciser_UpsideDown_0                               ;A396AF;
    dw $0008,Spritemap_Sciser_UpsideDown_1                               ;A396B3;
    dw $0008,Spritemap_Sciser_UpsideDown_2                               ;A396B7;
    dw $0008,Spritemap_Sciser_UpsideDown_1                               ;A396BB;
    dw Instruction_Common_GotoY                                          ;A396BF;
    dw InstList_Sciser_UpsideDown_1                                      ;A396C1;

%anchor($A396C3)
InstList_Sciser_UpsideUp_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A396C3;
    dw Function_Crawlers_CrawlingHorizontally                            ;A396C5;

%anchor($A396C7)
InstList_Sciser_UpsideUp_1:
    dw $0008,Spritemap_Sciser_UpsideUp_0                                 ;A396C7;
    dw $0008,Spritemap_Sciser_UpsideUp_1                                 ;A396CB;
    dw $0008,Spritemap_Sciser_UpsideUp_2                                 ;A396CF;
    dw $0008,Spritemap_Sciser_UpsideUp_1                                 ;A396D3;
    dw Instruction_Common_GotoY                                          ;A396D7;
    dw InstList_Sciser_UpsideUp_1                                        ;A396D9;

%anchor($A396DB)
InstListPointers_Sciser:
    dw InstList_Sciser_UpsideRight_0                                     ;A396DB;
    dw InstList_Sciser_UpsideLeft_0                                      ;A396DD;
    dw InstList_Sciser_UpsideDown_0                                      ;A396DF;
    dw InstList_Sciser_UpsideUp_0                                        ;A396E1;

%anchor($A396E3)
InitAI_Sciser:
    LDX.W $0E54                                                          ;A396E3;
    LDA.W #$0008                                                         ;A396E6;
    STA.W $0FB6,X                                                        ;A396E9;
    LDA.W $0F92,X                                                        ;A396EC;
    AND.W #$0003                                                         ;A396EF;
    ASL A                                                                ;A396F2;
    TAY                                                                  ;A396F3;
    LDA.W InstListPointers_Sciser,Y                                      ;A396F4;
    STA.W $0F92,X                                                        ;A396F7;
    JMP.W InitAI_Crawlers_Common                                         ;A396FA;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A396FD)
UNUSED_GetEnemyIndex_A396FD:
    LDX.W $0E54                                                          ;A396FD;
    RTL                                                                  ;A39700;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A39701)
RTL_A39701:
    RTL                                                                  ;A39701;


%anchor($A39702)
RTL_A39702:
    RTL                                                                  ;A39702;


%anchor($A39703)
Spritemap_Sciser_UpsideUp_0:
    dw $0004                                                             ;A39703;
    %spritemapEntry(1, $1FF, $F3, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F3, $F4, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $00, $FC, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $FC, 0, 0, 2, 0, $100)

%anchor($A39719)
Spritemap_Sciser_UpsideUp_1:
    dw $0004                                                             ;A39719;
    %spritemapEntry(1, $1FE, $F3, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F2, $F3, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $00, $FB, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1F0, $FB, 0, 0, 2, 0, $102)

%anchor($A3972F)
Spritemap_Sciser_UpsideUp_2:
    dw $0004                                                             ;A3972F;
    %spritemapEntry(1, $1FD, $F4, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F1, $F3, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $00, $FC, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $FC, 0, 0, 2, 0, $104)

%anchor($A39745)
Spritemap_Sciser_UpsideRight_0:
    dw $0004                                                             ;A39745;
    %spritemapEntry(1, $1FD, $FF, 1, 0, 2, 0, $10E)
    %spritemapEntry(1, $1FC, $F3, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F4, $00, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $1F4, $F0, 0, 0, 2, 0, $108)

%anchor($A3975B)
Spritemap_Sciser_UpsideRight_1:
    dw $0004                                                             ;A3975B;
    %spritemapEntry(1, $1FD, $FE, 1, 0, 2, 0, $10E)
    %spritemapEntry(1, $1FD, $F2, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F5, $00, 1, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F5, $F0, 0, 0, 2, 0, $10A)

%anchor($A39771)
Spritemap_Sciser_UpsideRight_2:
    dw $0004                                                             ;A39771;
    %spritemapEntry(1, $1FC, $FD, 1, 0, 2, 0, $10E)
    %spritemapEntry(1, $1FD, $F1, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F4, $00, 1, 0, 2, 0, $108)
    %spritemapEntry(1, $1F4, $F0, 0, 0, 2, 0, $10C)

%anchor($A39787)
Spritemap_Sciser_UpsideDown_0:
    dw $0004                                                             ;A39787;
    %spritemapEntry(1, $1FF, $FD, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $1F3, $FC, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $00, $F4, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F4, 1, 0, 2, 0, $100)

%anchor($A3979D)
Spritemap_Sciser_UpsideDown_1:
    dw $0004                                                             ;A3979D;
    %spritemapEntry(1, $1FE, $FD, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $1F2, $FD, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $00, $F5, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F5, 1, 0, 2, 0, $102)

%anchor($A397B3)
Spritemap_Sciser_UpsideDown_2:
    dw $0004                                                             ;A397B3;
    %spritemapEntry(1, $1FD, $FC, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $1F1, $FD, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $00, $F4, 1, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F4, 1, 0, 2, 0, $104)

%anchor($A397C9)
Spritemap_Sciser_UpsideLeft_0:
    dw $0004                                                             ;A397C9;
    %spritemapEntry(1, $1F3, $FF, 1, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F4, $F3, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1FC, $00, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1FC, $F0, 0, 1, 2, 0, $108)

%anchor($A397DF)
Spritemap_Sciser_UpsideLeft_1:
    dw $0004                                                             ;A397DF;
    %spritemapEntry(1, $1F3, $FE, 1, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F3, $F2, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1FB, $00, 1, 1, 2, 0, $10A)
    %spritemapEntry(1, $1FB, $F0, 0, 1, 2, 0, $10A)

%anchor($A397F5)
Spritemap_Sciser_UpsideLeft_2:
    dw $0004                                                             ;A397F5;
    %spritemapEntry(1, $1F4, $FD, 1, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F3, $F1, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1FC, $00, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $1FC, $F0, 0, 1, 2, 0, $10C)


%anchor($A3980B)
Palette_Zero:
    dw $3800,$57F5,$4AEF,$1182,$00C0,$5752,$3EAD,$2E08                   ;A3980B;
    dw $25C6,$03FD,$02D5,$020F,$0149,$3EDF,$0018,$000F                   ;A3981B;

%anchor($A3982B)
UNUSED_InstList_Zero_UpsideRight_FacingUp_A3982B:
    dw Instruction_Crawlers_FunctionInY                                  ;A3982B;
    dw Function_Crawlers_CrawlingVertically                              ;A3982D;

%anchor($A3982F)
UNUSED_InstList_Zero_UpsideRight_FacingUp_A3982F:
    dw $0004,Spritemap_Zero_UpsideRight_FacingUp_0                       ;A3982F;
    dw $0004,Spritemap_Zero_UpsideRight_FacingUp_1                       ;A39833;
    dw $0004,Spritemap_Zero_UpsideRight_FacingUp_2                       ;A39837;
    dw $0004,Spritemap_Zero_UpsideRight_FacingUp_3                       ;A3983B;
    dw $0004,Spritemap_Zero_UpsideRight_FacingUp_2                       ;A3983F;
    dw $0004,Spritemap_Zero_UpsideRight_FacingUp_1                       ;A39843;
    dw Instruction_Common_GotoY                                          ;A39847;
    dw UNUSED_InstList_Zero_UpsideRight_FacingUp_A3982F                  ;A39849;

%anchor($A3984B)
InstList_Zero_UpsideRight_FacingDown_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A3984B;
    dw Function_Crawlers_CrawlingVertically                              ;A3984D;

%anchor($A3984F)
InstList_Zero_UpsideRight_FacingDown_1:
    dw $0004,Spritemap_Zero_UpsideRight_FacingDown_0                     ;A3984F;
    dw $0004,Spritemap_Zero_UpsideRight_FacingDown_1                     ;A39853;
    dw $0004,Spritemap_Zero_UpsideRight_FacingDown_2                     ;A39857;
    dw $0004,Spritemap_Zero_UpsideRight_FacingDown_3                     ;A3985B;
    dw $0004,Spritemap_Zero_UpsideRight_FacingDown_2                     ;A3985F;
    dw $0004,Spritemap_Zero_UpsideRight_FacingDown_1                     ;A39863;
    dw Instruction_Common_GotoY                                          ;A39867;
    dw InstList_Zero_UpsideRight_FacingDown_1                            ;A39869;

%anchor($A3986B)
UNUSED_InstList_Zero_UpsideLeft_FacingDown_A3986B:
    dw Instruction_Crawlers_FunctionInY                                  ;A3986B;
    dw Function_Crawlers_CrawlingVertically                              ;A3986D;

%anchor($A3986F)
UNUSED_InstList_Zero_UpsideLeft_FacingDown_A3986F:
    dw $0004,Spritemap_Zero_UpsideLeft_FacingDown_0                      ;A3986F;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingDown_1                      ;A39873;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingDown_2                      ;A39877;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingDown_3                      ;A3987B;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingDown_2                      ;A3987F;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingDown_1                      ;A39883;
    dw Instruction_Common_GotoY                                          ;A39887;
    dw UNUSED_InstList_Zero_UpsideLeft_FacingDown_A3986F                 ;A39889;

%anchor($A3988B)
InstList_Zero_UpsideLeft_FacingUp_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A3988B;
    dw Function_Crawlers_CrawlingVertically                              ;A3988D;

%anchor($A3988F)
InstList_Zero_UpsideLeft_FacingUp_1:
    dw $0004,Spritemap_Zero_UpsideLeft_FacingUp_0                        ;A3988F;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingUp_1                        ;A39893;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingUp_2                        ;A39897;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingUp_3                        ;A3989B;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingUp_2                        ;A3989F;
    dw $0004,Spritemap_Zero_UpsideLeft_FacingUp_1                        ;A398A3;
    dw Instruction_Common_GotoY                                          ;A398A7;
    dw InstList_Zero_UpsideLeft_FacingUp_1                               ;A398A9;

%anchor($A398AB)
InstList_Zero_UpsideDown_FacingLeft_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A398AB;
    dw Function_Crawlers_CrawlingHorizontally                            ;A398AD;

%anchor($A398AF)
InstList_Zero_UpsideDown_FacingLeft_1:
    dw $0004,Spritemap_Zero_UpsideDown_FacingLeft_0                      ;A398AF;
    dw $0004,Spritemap_Zero_UpsideDown_FacingLeft_1                      ;A398B3;
    dw $0004,Spritemap_Zero_UpsideDown_FacingLeft_2                      ;A398B7;
    dw $0004,Spritemap_Zero_UpsideDown_FacingLeft_3                      ;A398BB;
    dw $0004,Spritemap_Zero_UpsideDown_FacingLeft_2                      ;A398BF;
    dw $0004,Spritemap_Zero_UpsideDown_FacingLeft_1                      ;A398C3;
    dw Instruction_Common_GotoY                                          ;A398C7;
    dw InstList_Zero_UpsideDown_FacingLeft_1                             ;A398C9;

%anchor($A398CB)
UNUSED_InstList_Zero_UpsideUp_FacingLeft_A398CB:
    dw Instruction_Crawlers_FunctionInY                                  ;A398CB;
    dw Function_Crawlers_CrawlingHorizontally                            ;A398CD;

%anchor($A398CF)
UNUSED_InstList_Zero_UpsideUp_FacingLeft_A398CF:
    dw $0004,Spritemap_Zero_UpsideUp_FacingLeft_0                        ;A398CF;
    dw $0004,Spritemap_Zero_UpsideUp_FacingLeft_1                        ;A398D3;
    dw $0004,Spritemap_Zero_UpsideUp_FacingLeft_2                        ;A398D7;
    dw $0004,Spritemap_Zero_UpsideUp_FacingLeft_3                        ;A398DB;
    dw $0004,Spritemap_Zero_UpsideUp_FacingLeft_2                        ;A398DF;
    dw $0004,Spritemap_Zero_UpsideUp_FacingLeft_1                        ;A398E3;
    dw Instruction_Common_GotoY                                          ;A398E7;
    dw UNUSED_InstList_Zero_UpsideUp_FacingLeft_A398CF                   ;A398E9;

%anchor($A398EB)
UNUSED_InstList_Zero_UpsideDown_FacingRight_A398EB:
    dw Instruction_Crawlers_FunctionInY                                  ;A398EB;
    dw Function_Crawlers_CrawlingHorizontally                            ;A398ED;

%anchor($A398EF)
UNUSED_InstList_Zero_UpsideDown_FacingRight_A398EF:
    dw $0004,Spritemap_Zero_UpsideDown_FacingRight_0                     ;A398EF;
    dw $0004,Spritemap_Zero_UpsideDown_FacingRight_1                     ;A398F3;
    dw $0004,Spritemap_Zero_UpsideDown_FacingRight_2                     ;A398F7;
    dw $0004,Spritemap_Zero_UpsideDown_FacingRight_3                     ;A398FB;
    dw $0004,Spritemap_Zero_UpsideDown_FacingRight_2                     ;A398FF;
    dw $0004,Spritemap_Zero_UpsideDown_FacingRight_1                     ;A39903;
    dw Instruction_Common_GotoY                                          ;A39907;
    dw UNUSED_InstList_Zero_UpsideDown_FacingRight_A398EF                ;A39909;

%anchor($A3990B)
UNUSED_InstList_Zero_UpsideUp_FacingRight_A3990B:
    dw Instruction_Crawlers_FunctionInY                                  ;A3990B;
    dw Function_Crawlers_CrawlingHorizontally                            ;A3990D;

%anchor($A3990F)
UNUSED_InstList_Zero_UpsideUp_FacingRight_A3990F:
    dw $0004,Spritemap_Zero_UpsideUp_FacingRight_0                       ;A3990F;
    dw $0004,Spritemap_Zero_UpsideUp_FacingRight_1                       ;A39913;
    dw $0004,Spritemap_Zero_UpsideUp_FacingRight_2                       ;A39917;
    dw $0004,Spritemap_Zero_UpsideUp_FacingRight_3                       ;A3991B;
    dw $0004,Spritemap_Zero_UpsideUp_FacingRight_2                       ;A3991F;
    dw $0004,Spritemap_Zero_UpsideUp_FacingRight_1                       ;A39923;
    dw Instruction_Common_GotoY                                          ;A39927;
    dw UNUSED_InstList_Zero_UpsideUp_FacingRight_A3990F                  ;A39929;

%anchor($A3992B)
InitialInstListPointers_Zero:
    dw InstList_Zero_UpsideRight_FacingDown_0                            ;A3992B;
    dw InstList_Zero_UpsideLeft_FacingUp_0                               ;A3992D;
    dw InstList_Zero_UpsideDown_FacingLeft_0                             ;A3992F;
    dw UNUSED_InstList_Zero_UpsideUp_FacingRight_A3990B                  ;A39931;
    dw UNUSED_InstList_Zero_UpsideRight_FacingUp_A3982B                  ;A39933;
    dw UNUSED_InstList_Zero_UpsideLeft_FacingDown_A3986B                 ;A39935;
    dw UNUSED_InstList_Zero_UpsideUp_FacingLeft_A398CB                   ;A39937;
    dw UNUSED_InstList_Zero_UpsideDown_FacingRight_A398EB                ;A39939;

%anchor($A3993B)
InitAI_Zero:
    LDX.W $0E54                                                          ;A3993B;
    LDA.W #$000A                                                         ;A3993E;
    STA.W $0FB6,X                                                        ;A39941;
    LDA.W $0F92,X                                                        ;A39944;
    AND.W #$0003                                                         ;A39947;
    ASL A                                                                ;A3994A;
    TAY                                                                  ;A3994B;
    LDA.W InitialInstListPointers_Zero,Y                                 ;A3994C;
    STA.W $0F92,X                                                        ;A3994F;
    JMP.W InitAI_Crawlers_Common                                         ;A39952;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A39955)
UNUSED_GetEnemyIndex_A39955:
    LDX.W $0E54                                                          ;A39955;
    RTL                                                                  ;A39958;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A39959)
RTL_A39959:
    RTL                                                                  ;A39959;


%anchor($A3995A)
RTL_A3995A:
    RTL                                                                  ;A3995A;


%anchor($A3995B)
Spritemap_Zero_UpsideUp_FacingRight_0:
    dw $0003                                                             ;A3995B;
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $1FA, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F1, $F8, 0, 0, 2, 0, $100)

%anchor($A3996C)
Spritemap_Zero_UpsideUp_FacingRight_1:
    dw $0003                                                             ;A3996C;
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $1FA, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $100)

%anchor($A3997D)
Spritemap_Zero_UpsideUp_FacingRight_2:
    dw $0003                                                             ;A3997D;
    %spritemapEntry(1, $01, $F8, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $1FA, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1EF, $F8, 0, 0, 2, 0, $100)

%anchor($A3998E)
Spritemap_Zero_UpsideUp_FacingRight_3:
    dw $0003                                                             ;A3998E;
    %spritemapEntry(1, $02, $F8, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $1FA, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1EE, $F8, 0, 0, 2, 0, $100)

%anchor($A3999F)
Spritemap_Zero_UpsideLeft_FacingUp_0:
    dw $0003                                                             ;A3999F;
    %spritemapEntry(1, $1F8, $00, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $FA, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F1, 0, 1, 2, 0, $106)

%anchor($A399B0)
Spritemap_Zero_UpsideLeft_FacingUp_1:
    dw $0003                                                             ;A399B0;
    %spritemapEntry(1, $1F8, $00, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $FA, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F0, 0, 1, 2, 0, $106)

%anchor($A399C1)
Spritemap_Zero_UpsideLeft_FacingUp_2:
    dw $0003                                                             ;A399C1;
    %spritemapEntry(1, $1F8, $01, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $FA, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $EF, 0, 1, 2, 0, $106)

%anchor($A399D2)
Spritemap_Zero_UpsideLeft_FacingUp_3:
    dw $0003                                                             ;A399D2;
    %spritemapEntry(1, $1F8, $02, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $FA, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $EE, 0, 1, 2, 0, $106)

%anchor($A399E3)
Spritemap_Zero_UpsideDown_FacingLeft_0:
    dw $0003                                                             ;A399E3;
    %spritemapEntry(1, $1F0, $F8, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F6, $F8, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F8, 1, 1, 2, 0, $100)

%anchor($A399F4)
Spritemap_Zero_UpsideDown_FacingLeft_1:
    dw $0003                                                             ;A399F4;
    %spritemapEntry(1, $1F0, $F8, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F6, $F8, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F8, 1, 1, 2, 0, $100)

%anchor($A39A05)
Spritemap_Zero_UpsideDown_FacingLeft_2:
    dw $0003                                                             ;A39A05;
    %spritemapEntry(1, $1EF, $F8, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F6, $F8, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $01, $F8, 1, 1, 2, 0, $100)

%anchor($A39A16)
Spritemap_Zero_UpsideDown_FacingLeft_3:
    dw $0003                                                             ;A39A16;
    %spritemapEntry(1, $1EE, $F8, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F6, $F8, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $02, $F8, 1, 1, 2, 0, $100)

%anchor($A39A27)
Spritemap_Zero_UpsideLeft_FacingDown_0:
    dw $0003                                                             ;A39A27;
    %spritemapEntry(1, $1F8, $F0, 1, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $FF, 1, 1, 2, 0, $106)

%anchor($A39A38)
Spritemap_Zero_UpsideLeft_FacingDown_1:
    dw $0003                                                             ;A39A38;
    %spritemapEntry(1, $1F8, $F0, 1, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $00, 1, 1, 2, 0, $106)

%anchor($A39A49)
Spritemap_Zero_UpsideLeft_FacingDown_2:
    dw $0003                                                             ;A39A49;
    %spritemapEntry(1, $1F8, $EF, 1, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $01, 1, 1, 2, 0, $106)

%anchor($A39A5A)
Spritemap_Zero_UpsideLeft_FacingDown_3:
    dw $0003                                                             ;A39A5A;
    %spritemapEntry(1, $1F8, $EE, 1, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $02, 1, 1, 2, 0, $106)

%anchor($A39A6B)
Spritemap_Zero_UpsideUp_FacingLeft_0:
    dw $0003                                                             ;A39A6B;
    %spritemapEntry(1, $00, $F8, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $1FA, $F8, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1F1, $F8, 1, 0, 2, 0, $100)

%anchor($A39A7C)
Spritemap_Zero_UpsideUp_FacingLeft_1:
    dw $0003                                                             ;A39A7C;
    %spritemapEntry(1, $00, $F8, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $1FA, $F8, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $100)

%anchor($A39A8D)
Spritemap_Zero_UpsideUp_FacingLeft_2:
    dw $0003                                                             ;A39A8D;
    %spritemapEntry(1, $01, $F8, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $1FA, $F8, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1EF, $F8, 1, 0, 2, 0, $100)

%anchor($A39A9E)
Spritemap_Zero_UpsideUp_FacingLeft_3:
    dw $0003                                                             ;A39A9E;
    %spritemapEntry(1, $02, $F8, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $1FA, $F8, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1EE, $F8, 1, 0, 2, 0, $100)

%anchor($A39AAF)
Spritemap_Zero_UpsideRight_FacingUp_0:
    dw $0003                                                             ;A39AAF;
    %spritemapEntry(1, $1F8, $00, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $FA, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F1, 0, 0, 2, 0, $106)

%anchor($A39AC0)
Spritemap_Zero_UpsideRight_FacingUp_1:
    dw $0003                                                             ;A39AC0;
    %spritemapEntry(1, $1F8, $00, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $FA, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F0, 0, 0, 2, 0, $106)

%anchor($A39AD1)
Spritemap_Zero_UpsideRight_FacingUp_2:
    dw $0003                                                             ;A39AD1;
    %spritemapEntry(1, $1F8, $01, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $FA, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $EF, 0, 0, 2, 0, $106)

%anchor($A39AE2)
Spritemap_Zero_UpsideRight_FacingUp_3:
    dw $0003                                                             ;A39AE2;
    %spritemapEntry(1, $1F8, $02, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $FA, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $EE, 0, 0, 2, 0, $106)

%anchor($A39AF3)
Spritemap_Zero_UpsideDown_FacingRight_0:
    dw $0003                                                             ;A39AF3;
    %spritemapEntry(1, $1F0, $F8, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F6, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F8, 0, 1, 2, 0, $100)

%anchor($A39B04)
Spritemap_Zero_UpsideDown_FacingRight_1:
    dw $0003                                                             ;A39B04;
    %spritemapEntry(1, $1F0, $F8, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F6, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $100)

%anchor($A39B15)
Spritemap_Zero_UpsideDown_FacingRight_2:
    dw $0003                                                             ;A39B15;
    %spritemapEntry(1, $1EF, $F8, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F6, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $01, $F8, 0, 1, 2, 0, $100)

%anchor($A39B26)
Spritemap_Zero_UpsideDown_FacingRight_3:
    dw $0003                                                             ;A39B26;
    %spritemapEntry(1, $1EE, $F8, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F6, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $02, $F8, 0, 1, 2, 0, $100)

%anchor($A39B37)
Spritemap_Zero_UpsideRight_FacingDown_0:
    dw $0003                                                             ;A39B37;
    %spritemapEntry(1, $1F8, $F0, 1, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 1, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $FF, 1, 0, 2, 0, $106)

%anchor($A39B48)
Spritemap_Zero_UpsideRight_FacingDown_1:
    dw $0003                                                             ;A39B48;
    %spritemapEntry(1, $1F8, $F0, 1, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 1, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $00, 1, 0, 2, 0, $106)

%anchor($A39B59)
Spritemap_Zero_UpsideRight_FacingDown_2:
    dw $0003                                                             ;A39B59;
    %spritemapEntry(1, $1F8, $EF, 1, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 1, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $01, 1, 0, 2, 0, $106)

%anchor($A39B6A)
Spritemap_Zero_UpsideRight_FacingDown_3:
    dw $0003                                                             ;A39B6A;
    %spritemapEntry(1, $1F8, $EE, 1, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 1, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $02, 1, 0, 2, 0, $106)


%anchor($A39B7B)
Palette_Tripper:
    dw $3800,$3F57,$2E4D,$00E2,$0060,$3AB0,$220B,$1166                   ;A39B7B;
    dw $0924,$7F5A,$7EC0,$6DE0,$54E0,$03FF,$0237,$00D1                   ;A39B8B;

%anchor($A39B9B)
Palette_Kamer2:
    dw $3800,$7F5A,$3BE0,$2680,$0920,$4F5A,$36B5,$2610                   ;A39B9B;
    dw $1DCE,$5294,$39CE,$2108,$1084,$033B,$0216,$0113                   ;A39BAB;

%anchor($A39BBB)
InstList_Kamer2_VerticallyMoving_Left_0:
    dw Instruction_Tripper_Kamer2_SetMovingLeftXMovement_duplicate       ;A39BBB;

%anchor($A39BBD)
InstList_Kamer2_VerticallyMoving_Left_1:
    dw $000A,Spritemap_Kamer2_0                                          ;A39BBD;
    dw $000A,Spritemap_Kamer2_1                                          ;A39BC1;
    dw $000A,Spritemap_Kamer2_2                                          ;A39BC5;
    dw $000A,Spritemap_Kamer2_3                                          ;A39BC9;
    dw Instruction_Common_GotoY                                          ;A39BCD;
    dw InstList_Kamer2_VerticallyMoving_Left_1                           ;A39BCF;

%anchor($A39BD1)
InstList_Kamer2_VerticallyMoving_Right_0:
    dw Instruction_Tripper_Kamer2_SetMovingRightXMovement_duplicate      ;A39BD1;

%anchor($A39BD3)
InstList_Kamer2_VerticallyMoving_Right_1:
    dw $000A,Spritemap_Kamer2_0                                          ;A39BD3;
    dw $000A,Spritemap_Kamer2_1                                          ;A39BD7;
    dw $000A,Spritemap_Kamer2_2                                          ;A39BDB;
    dw $000A,Spritemap_Kamer2_3                                          ;A39BDF;
    dw Instruction_Common_GotoY                                          ;A39BE3;
    dw InstList_Kamer2_VerticallyMoving_Right_1                          ;A39BE5;

%anchor($A39BE7)
InstList_Kamer2_VerticallyStill_Left_0:
    dw Instruction_Tripper_Kamer2_SetMovingLeftXMovement                 ;A39BE7;

%anchor($A39BE9)
InstList_Kamer2_VerticallyStill_Left_1:
    dw $000A,Spritemap_Kamer2_0                                          ;A39BE9;
    dw $000A,Spritemap_Kamer2_1                                          ;A39BED;
    dw $000A,Spritemap_Kamer2_2                                          ;A39BF1;
    dw $000A,Spritemap_Kamer2_3                                          ;A39BF5;
    dw Instruction_Common_GotoY                                          ;A39BF9;
    dw InstList_Kamer2_VerticallyStill_Left_1                            ;A39BFB;

%anchor($A39BFD)
InstList_Kamer2_VerticallyStill_Right_0:
    dw Instruction_Tripper_Kamer2_SetMovingRightXMovement                ;A39BFD;

%anchor($A39BFF)
InstList_Kamer2_VerticallyStill_Right_1:
    dw $000A,Spritemap_Kamer2_0                                          ;A39BFF;
    dw $000A,Spritemap_Kamer2_1                                          ;A39C03;
    dw $000A,Spritemap_Kamer2_2                                          ;A39C07;
    dw $000A,Spritemap_Kamer2_3                                          ;A39C0B;
    dw Instruction_Common_GotoY                                          ;A39C0F;
    dw InstList_Kamer2_VerticallyStill_Right_1                           ;A39C11;

%anchor($A39C13)
InstList_Tripper_VerticallyMoving_Left_0:
    dw Instruction_Tripper_Kamer2_SetMovingLeftXMovement_duplicate       ;A39C13;

%anchor($A39C15)
InstList_Tripper_VerticallyMoving_Left_1:
    dw $0007,Spritemap_Tripper_VerticallyMoving_Left_0                   ;A39C15;
    dw $0008,Spritemap_Tripper_VerticallyMoving_Left_1                   ;A39C19;
    dw $0007,Spritemap_Tripper_VerticallyMoving_Left_0                   ;A39C1D;
    dw $0008,Spritemap_Tripper_VerticallyMoving_Left_2                   ;A39C21;
    dw Instruction_Common_GotoY                                          ;A39C25;
    dw InstList_Tripper_VerticallyMoving_Left_1                          ;A39C27;

%anchor($A39C29)
InstList_Tripper_VerticallyMoving_Right_0:
    dw Instruction_Tripper_Kamer2_SetMovingRightXMovement_duplicate      ;A39C29;

%anchor($A39C2B)
InstList_Tripper_VerticallyMoving_Right_1:
    dw $0007,Spritemap_Tripper_VerticallyMoving_Right_0                  ;A39C2B;
    dw $0008,Spritemap_Tripper_VerticallyMoving_Right_1                  ;A39C2F;
    dw $0007,Spritemap_Tripper_VerticallyMoving_Right_0                  ;A39C33;
    dw $0008,Spritemap_Tripper_VerticallyMoving_Right_2                  ;A39C37;
    dw Instruction_Common_GotoY                                          ;A39C3B;
    dw InstList_Tripper_VerticallyMoving_Right_1                         ;A39C3D;

%anchor($A39C3F)
InstList_Tripper_VerticallyStill_Right_0:
    dw Instruction_Tripper_Kamer2_SetMovingLeftXMovement                 ;A39C3F;

%anchor($A39C41)
InstList_Tripper_VerticallyStill_Right_1:
    dw $0007,Spritemap_Tripper_VerticallyStill_Right_0                   ;A39C41;
    dw $0008,Spritemap_Tripper_VerticallyStill_Right_1                   ;A39C45;
    dw $0007,Spritemap_Tripper_VerticallyStill_Right_0                   ;A39C49;
    dw $0008,Spritemap_Tripper_VerticallyStill_Right_2                   ;A39C4D;
    dw Instruction_Common_GotoY                                          ;A39C51;
    dw InstList_Tripper_VerticallyStill_Right_1                          ;A39C53;

%anchor($A39C55)
InstList_Tripper_VerticallyStill_Left_0:
    dw Instruction_Tripper_Kamer2_SetMovingRightXMovement                ;A39C55;

%anchor($A39C57)
InstList_Tripper_VerticallyStill_Left_1:
    dw $0007,Spritemap_Tripper_VerticallyStill_Left_0                    ;A39C57;
    dw $0008,Spritemap_Tripper_VerticallyStill_Left_1                    ;A39C5B;
    dw $0007,Spritemap_Tripper_VerticallyStill_Left_0                    ;A39C5F;
    dw $0008,Spritemap_Tripper_VerticallyStill_Left_2                    ;A39C63;
    dw Instruction_Common_GotoY                                          ;A39C67;
    dw InstList_Tripper_VerticallyStill_Left_1                           ;A39C69;

%anchor($A39C6B)
Instruction_Tripper_Kamer2_SetMovingLeftXMovement:
    LDX.W $0E54                                                          ;A39C6B;
    LDA.W #$0000                                                         ;A39C6E;
    STA.L $7E7804,X                                                      ;A39C71;
    RTL                                                                  ;A39C75;


%anchor($A39C76)
Instruction_Tripper_Kamer2_SetMovingRightXMovement:
    LDX.W $0E54                                                          ;A39C76;
    LDA.W #$0001                                                         ;A39C79;
    STA.L $7E7804,X                                                      ;A39C7C;
    RTL                                                                  ;A39C80;


%anchor($A39C81)
Instruction_Tripper_Kamer2_SetMovingLeftXMovement_duplicate:
    LDX.W $0E54                                                          ;A39C81;
    LDA.W #$0000                                                         ;A39C84;
    STA.L $7E7804,X                                                      ;A39C87;
    RTL                                                                  ;A39C8B;


%anchor($A39C8C)
Instruction_Tripper_Kamer2_SetMovingRightXMovement_duplicate:
    LDX.W $0E54                                                          ;A39C8C;
    LDA.W #$0001                                                         ;A39C8F;
    STA.L $7E7804,X                                                      ;A39C92;
    RTL                                                                  ;A39C96;


%anchor($A39C97)
FunctionPointers_Tripper_Kamer2_XMovement:
    dw Function_Tripper_Kamer2_XMovement_0_MovingLeft                    ;A39C97;
    dw Function_Tripper_Kamer2_XMovement_1_MovingRight                   ;A39C99;

%anchor($A39C9B)
FunctionPointers_Tripper_Kamer2_YMovement:
    dw Function_Tripper_Kamer2_YMovement_Rising                          ;A39C9B;
    dw Function_Tripper_Kamer2_YMovement_1_Sinking                       ;A39C9D;

%anchor($A39C9F)
InitAI_Kamer2:
    LDX.W $0E54                                                          ;A39C9F;
    LDA.W #$FFFF                                                         ;A39CA2;
    STA.L $7E783E,X                                                      ;A39CA5;
    LDY.W #InstList_Kamer2_VerticallyStill_Left_0                        ;A39CA9;
    LDA.W $0FB4,X                                                        ;A39CAC;
    STA.L $7E7804,X                                                      ;A39CAF;
    BEQ InitAI_Tripper_Kamer2_Common                                     ;A39CB3;
    LDY.W #InstList_Kamer2_VerticallyStill_Right_0                       ;A39CB5;
    BRA InitAI_Tripper_Kamer2_Common                                     ;A39CB8;


%anchor($A39CBA)
InitAI_Tripper:
    LDX.W $0E54                                                          ;A39CBA;
    LDY.W #InstList_Tripper_VerticallyStill_Right_0                      ;A39CBD;
    LDA.W $0FB4,X                                                        ;A39CC0;
    STA.L $7E7804,X                                                      ;A39CC3;
    BEQ InitAI_Tripper_Kamer2_Common                                     ;A39CC7;
    LDY.W #InstList_Tripper_VerticallyStill_Left_0                       ;A39CC9; fallthrough to InitAI_Tripper_Kamer2_Common

%anchor($A39CCC)
InitAI_Tripper_Kamer2_Common:
    TYA                                                                  ;A39CCC;
    STA.W $0F92,X                                                        ;A39CCD;
    LDA.W $0FB6,X                                                        ;A39CD0;
    AND.W #$00FF                                                         ;A39CD3;
    ASL A                                                                ;A39CD6;
    ASL A                                                                ;A39CD7;
    ASL A                                                                ;A39CD8;
    TAY                                                                  ;A39CD9;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A39CDA;
    STA.W $0FAC,X                                                        ;A39CDD;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A39CE0;
    STA.W $0FAA,X                                                        ;A39CE3;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A39CE6;
    STA.W $0FB0,X                                                        ;A39CE9;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A39CEC;
    STA.W $0FAE,X                                                        ;A39CEF;
    LDA.W #$0000                                                         ;A39CF2;
    STA.L $7E7800,X                                                      ;A39CF5;
    STA.L $7E7806,X                                                      ;A39CF9;
    STA.L $7E7808,X                                                      ;A39CFD;
    LDA.W $0F7E,X                                                        ;A39D01;
    INC A                                                                ;A39D04;
    STA.W $0FA8,X                                                        ;A39D05;
    STZ.W $0FB2,X                                                        ;A39D08;
    LDA.W $0FB7,X                                                        ;A39D0B;
    AND.W #$00FF                                                         ;A39D0E;
    STA.L $7E780A,X                                                      ;A39D11;
    RTL                                                                  ;A39D15;


%anchor($A39D16)
MainAI_Tripper_Kamer2:
    LDX.W $0E54                                                          ;A39D16;
    LDA.W #$0000                                                         ;A39D19;
    STA.L $7E7800,X                                                      ;A39D1C;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A39D20;
    BEQ .SamusNotRiding                                                  ;A39D24;
    LDA.W #$0001                                                         ;A39D26;
    STA.L $7E7800,X                                                      ;A39D29;

.SamusNotRiding:
    LDX.W $0E54                                                          ;A39D2D;
    LDA.L $7E7804,X                                                      ;A39D30;
    ASL A                                                                ;A39D34;
    TAX                                                                  ;A39D35;
    JSR.W (FunctionPointers_Tripper_Kamer2_XMovement,X)                  ;A39D36;
    LDX.W $0E54                                                          ;A39D39;
    LDA.L $7E7800,X                                                      ;A39D3C;
    ASL A                                                                ;A39D40;
    TAX                                                                  ;A39D41;
    JSR.W (FunctionPointers_Tripper_Kamer2_YMovement,X)                  ;A39D42;
    LDX.W $0E54                                                          ;A39D45;
    LDA.L $7E7800,X                                                      ;A39D48;
    CMP.L $7E780C,X                                                      ;A39D4C;
    BEQ .noChange                                                        ;A39D50;
    STZ.W $0FB2,X                                                        ;A39D52;

.noChange:
    LDA.L $7E7800,X                                                      ;A39D55;
    STA.L $7E780C,X                                                      ;A39D59;
    RTL                                                                  ;A39D5D;


%anchor($A39D5E)
Function_Tripper_Kamer2_XMovement_0_MovingLeft:
    LDX.W $0E54                                                          ;A39D5E;
    LDA.W $0F7A,X                                                        ;A39D61;
    STA.L $7E7802,X                                                      ;A39D64;
    LDA.W $0FAE,X                                                        ;A39D68;
    STA.B $12                                                            ;A39D6B;
    LDA.W $0FB0,X                                                        ;A39D6D;
    STA.B $14                                                            ;A39D70;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A39D72;
    BCC .return                                                          ;A39D76;
    LDA.W #$0001                                                         ;A39D78;
    STA.L $7E7804,X                                                      ;A39D7B;
    JSR.W SetPlatformInstList_VerticallyStill_MovingRight                ;A39D7F;

.return:
    RTS                                                                  ;A39D82;


%anchor($A39D83)
Function_Tripper_Kamer2_XMovement_1_MovingRight:
    LDX.W $0E54                                                          ;A39D83;
    LDA.W $0F7A,X                                                        ;A39D86;
    STA.L $7E7802,X                                                      ;A39D89;
    LDA.W $0FAA,X                                                        ;A39D8D;
    STA.B $12                                                            ;A39D90;
    LDA.W $0FAC,X                                                        ;A39D92;
    STA.B $14                                                            ;A39D95;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A39D97;
    BCC .return                                                          ;A39D9B;
    LDA.W #$0000                                                         ;A39D9D;
    STA.L $7E7804,X                                                      ;A39DA0;
    JSR.W SetPlatformInstList_VerticallyStill_MovingLeft                 ;A39DA4;

.return:
    RTS                                                                  ;A39DA7;


%anchor($A39DA8)
Function_Tripper_Kamer2_YMovement_Rising:
    LDX.W $0E54                                                          ;A39DA8;
    LDA.W $0F7E,X                                                        ;A39DAB;
    CMP.W $0FA8,X                                                        ;A39DAE;
    BMI .notMoving                                                       ;A39DB1;
    JSR.W SetPlatformInstList_VerticallyMoving                           ;A39DB3;
    INC.W $0FB2,X                                                        ;A39DB6;
    LDA.W $0FB2,X                                                        ;A39DB9;
    CMP.L $7E780A,X                                                      ;A39DBC;
    BMI +                                                                ;A39DC0;
    LDA.L $7E780A,X                                                      ;A39DC2;
    STA.W $0FB2,X                                                        ;A39DC6;

  + ASL A                                                                ;A39DC9;
    ASL A                                                                ;A39DCA;
    ASL A                                                                ;A39DCB;
    TAY                                                                  ;A39DCC;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+4,Y                  ;A39DCD;
    STA.B $12                                                            ;A39DD0;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+6,Y                  ;A39DD2;
    STA.B $14                                                            ;A39DD5;
    JSL.L MoveEnemyDownBy_14_12                                          ;A39DD7;
    BCC .return                                                          ;A39DDB;

.notMoving:
    STZ.W $0FB2,X                                                        ;A39DDD;
    JSR.W SetPlatformInstList_VerticallyStill                            ;A39DE0;

.return:
    RTS                                                                  ;A39DE3;


%anchor($A39DE4)
Function_Tripper_Kamer2_YMovement_1_Sinking:
    LDX.W $0E54                                                          ;A39DE4;
    LDA.W $0F7E,X                                                        ;A39DE7;
    CMP.W $0FA8,X                                                        ;A39DEA;
    JSR.W RTS_A39E46                                                     ;A39DED;
    INC.W $0FB2,X                                                        ;A39DF0;
    LDA.W $0FB2,X                                                        ;A39DF3;
    CMP.L $7E780A,X                                                      ;A39DF6;
    BMI +                                                                ;A39DFA;
    LDA.L $7E780A,X                                                      ;A39DFC;
    STA.W $0FB2,X                                                        ;A39E00;

  + LDA.W $0F7A,X                                                        ;A39E03;
    SEC                                                                  ;A39E06;
    SBC.L $7E7802,X                                                      ;A39E07;
    CLC                                                                  ;A39E0B;
    ADC.W $0B58                                                          ;A39E0C;
    STA.W $0B58                                                          ;A39E0F;
    LDA.W $0F7E,X                                                        ;A39E12;
    STA.L $7E7802,X                                                      ;A39E15;
    LDA.W $0FB2,X                                                        ;A39E19;
    ASL A                                                                ;A39E1C;
    ASL A                                                                ;A39E1D;
    ASL A                                                                ;A39E1E;
    TAY                                                                  ;A39E1F;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing,Y                    ;A39E20;
    STA.B $12                                                            ;A39E23;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+2,Y                  ;A39E25;
    STA.B $14                                                            ;A39E28;
    JSL.L MoveEnemyDownBy_14_12                                          ;A39E2A;
    BCC .notCollidedWithBlock                                            ;A39E2E;
    STZ.W $0FB2,X                                                        ;A39E30;
    JSR.W SetPlatformInstList_VerticallyStill                            ;A39E33;

.notCollidedWithBlock:
    LDA.W $0F7E,X                                                        ;A39E36;
    SEC                                                                  ;A39E39;
    SBC.L $7E7802,X                                                      ;A39E3A;
    CLC                                                                  ;A39E3E;
    ADC.W $0B5C                                                          ;A39E3F;
    STA.W $0B5C                                                          ;A39E42;
    RTS                                                                  ;A39E45;


%anchor($A39E46)
RTS_A39E46:
    RTS                                                                  ;A39E46;


%anchor($A39E47)
SetPlatformInstList_VerticallyMoving_MovingLeft:
    LDX.W $0E54                                                          ;A39E47;
    LDY.W #InstList_Tripper_VerticallyMoving_Left_0                      ;A39E4A;
    LDA.L $7E783E,X                                                      ;A39E4D;
    BPL .Tripper                                                         ;A39E51;
    LDY.W #InstList_Kamer2_VerticallyMoving_Left_0                       ;A39E53;

.Tripper:
    TYA                                                                  ;A39E56;
    STA.W $0F92,X                                                        ;A39E57;
    LDA.W #$0001                                                         ;A39E5A;
    STA.W $0F94,X                                                        ;A39E5D;
    STZ.W $0F90,X                                                        ;A39E60;
    RTS                                                                  ;A39E63;


%anchor($A39E64)
SetPlatformInstList_VerticallyMoving_MovingRight:
    LDX.W $0E54                                                          ;A39E64;
    LDY.W #InstList_Tripper_VerticallyMoving_Right_0                     ;A39E67;
    LDA.L $7E783E,X                                                      ;A39E6A;
    BPL .Tripper                                                         ;A39E6E;
    LDY.W #InstList_Kamer2_VerticallyMoving_Right_0                      ;A39E70;

.Tripper:
    TYA                                                                  ;A39E73;
    STA.W $0F92,X                                                        ;A39E74;
    LDA.W #$0001                                                         ;A39E77;
    STA.W $0F94,X                                                        ;A39E7A;
    STZ.W $0F90,X                                                        ;A39E7D;
    RTS                                                                  ;A39E80;


%anchor($A39E81)
SetPlatformInstList_VerticallyStill_MovingLeft:
    LDX.W $0E54                                                          ;A39E81;
    LDY.W #InstList_Tripper_VerticallyStill_Right_0                      ;A39E84;
    LDA.L $7E783E,X                                                      ;A39E87;
    BPL .Tripper                                                         ;A39E8B;
    LDY.W #InstList_Kamer2_VerticallyStill_Left_0                        ;A39E8D;

.Tripper:
    TYA                                                                  ;A39E90;
    STA.W $0F92,X                                                        ;A39E91;
    LDA.W #$0001                                                         ;A39E94;
    STA.W $0F94,X                                                        ;A39E97;
    STZ.W $0F90,X                                                        ;A39E9A;
    RTS                                                                  ;A39E9D;


%anchor($A39E9E)
SetPlatformInstList_VerticallyStill_MovingRight:
    LDX.W $0E54                                                          ;A39E9E;
    LDY.W #InstList_Tripper_VerticallyStill_Left_0                       ;A39EA1;
    LDA.L $7E783E,X                                                      ;A39EA4;
    BPL .Tripper                                                         ;A39EA8;
    LDY.W #InstList_Kamer2_VerticallyStill_Right_0                       ;A39EAA;

.Tripper:
    TYA                                                                  ;A39EAD;
    STA.W $0F92,X                                                        ;A39EAE;
    LDA.W #$0001                                                         ;A39EB1;
    STA.W $0F94,X                                                        ;A39EB4;
    STZ.W $0F90,X                                                        ;A39EB7;
    RTS                                                                  ;A39EBA;


%anchor($A39EBB)
SetPlatformInstList_VerticallyMoving:
    LDX.W $0E54                                                          ;A39EBB;
    LDA.L $7E7806,X                                                      ;A39EBE;
    BNE .merge                                                           ;A39EC2;
    LDA.W #$0001                                                         ;A39EC4;
    STA.L $7E7806,X                                                      ;A39EC7;
    LDA.L $7E7804,X                                                      ;A39ECB;
    BEQ .movingLeft                                                      ;A39ECF;
    JSR.W SetPlatformInstList_VerticallyMoving_MovingRight               ;A39ED1;
    BRA .merge                                                           ;A39ED4;


.movingLeft:
    JSR.W SetPlatformInstList_VerticallyMoving_MovingLeft                ;A39ED6;

.merge:
    LDA.W #$0000                                                         ;A39ED9;
    STA.L $7E7808,X                                                      ;A39EDC;
    RTS                                                                  ;A39EE0;


%anchor($A39EE1)
SetPlatformInstList_VerticallyStill:
    LDX.W $0E54                                                          ;A39EE1;
    LDA.L $7E7808,X                                                      ;A39EE4;
    BNE .merge                                                           ;A39EE8;
    LDA.W #$0001                                                         ;A39EEA;
    STA.L $7E7808,X                                                      ;A39EED;
    LDA.L $7E7804,X                                                      ;A39EF1;
    BEQ .movingLeft                                                      ;A39EF5;
    JSR.W SetPlatformInstList_VerticallyStill_MovingRight                ;A39EF7;
    BRA .merge                                                           ;A39EFA;


.movingLeft:
    JSR.W SetPlatformInstList_VerticallyStill_MovingLeft                 ;A39EFC;

.merge:
    LDA.W #$0000                                                         ;A39EFF;
    STA.L $7E7806,X                                                      ;A39F02;
    RTS                                                                  ;A39F06;


%anchor($A39F07)
RTL_A39F07:
    RTL                                                                  ;A39F07;


%anchor($A39F08)
EnemyShot_Tripper:
    JSL.L CommonA3_NormalEnemyShotAI                                     ;A39F08;
    LDX.W $0E54                                                          ;A39F0C;
    LDA.W $0F9E,X                                                        ;A39F0F;
    BEQ .return                                                          ;A39F12;
    LDA.L $7E7804,X                                                      ;A39F14;
    BEQ .movingLeft                                                      ;A39F18;
    LDA.W #Spritemap_Tripper_Frozen_MovingRight                          ;A39F1A;
    STA.W $0F8E,X                                                        ;A39F1D;
    BRA .return                                                          ;A39F20;


.movingLeft:
    LDA.W #Spritemap_Tripper_Frozen_MovingLeft                           ;A39F22;
    STA.W $0F8E,X                                                        ;A39F25;

.return:
    RTL                                                                  ;A39F28;


%anchor($A39F29)
Spritemap_Tripper_VerticallyMoving_Left_0:
    dw $0003                                                             ;A39F29;
    %spritemapEntry(0, $1F9, $08, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $4200, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $43F0, $F8, 0, 0, 2, 0, $100)

%anchor($A39F3A)
Spritemap_Tripper_VerticallyMoving_Left_1:
    dw $0003                                                             ;A39F3A;
    %spritemapEntry(1, $4200, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(0, $1F9, $08, 0, 0, 2, 0, $10F)
    %spritemapEntry(1, $43F0, $F8, 0, 0, 2, 0, $108)

%anchor($A39F4B)
Spritemap_Tripper_VerticallyMoving_Left_2:
    dw $0003                                                             ;A39F4B;
    %spritemapEntry(1, $4200, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(0, $1F9, $08, 0, 0, 2, 0, $10F)
    %spritemapEntry(1, $43F0, $F8, 0, 0, 2, 0, $104)

%anchor($A39F5C)
Spritemap_Tripper_VerticallyMoving_Right_0:
    dw $0003                                                             ;A39F5C;
    %spritemapEntry(0, $1FF, $08, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $43F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $4200, $F8, 0, 1, 2, 0, $100)

%anchor($A39F6D)
Spritemap_Tripper_VerticallyMoving_Right_1:
    dw $0003                                                             ;A39F6D;
    %spritemapEntry(1, $43F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $1FF, $08, 0, 1, 2, 0, $10F)
    %spritemapEntry(1, $4200, $F8, 0, 1, 2, 0, $108)

%anchor($A39F7E)
Spritemap_Tripper_VerticallyMoving_Right_2:
    dw $0003                                                             ;A39F7E;
    %spritemapEntry(1, $43F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $1FF, $08, 0, 1, 2, 0, $10F)
    %spritemapEntry(1, $4200, $F8, 0, 1, 2, 0, $104)

%anchor($A39F8F)
Spritemap_Tripper_VerticallyStill_Right_0:
    dw $0004                                                             ;A39F8F;
    %spritemapEntry(1, $4200, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(0, $0B, $02, 0, 0, 2, 0, $11D)
    %spritemapEntry(0, $03, $02, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F0, $F8, 0, 0, 2, 0, $100)

%anchor($A39FA5)
Spritemap_Tripper_VerticallyStill_Right_1:
    dw $0003                                                             ;A39FA5;
    %spritemapEntry(1, $4200, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(0, $02, $02, 0, 0, 2, 0, $11E)
    %spritemapEntry(1, $43F0, $F8, 0, 0, 2, 0, $104)

%anchor($A39FB6)
Spritemap_Tripper_VerticallyStill_Right_2:
    dw $0004                                                             ;A39FB6;
    %spritemapEntry(1, $4200, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(0, $0B, $02, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $03, $02, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $43F0, $F8, 0, 0, 2, 0, $108)

%anchor($A39FCC)
Spritemap_Tripper_VerticallyStill_Left_0:
    dw $0004                                                             ;A39FCC;
    %spritemapEntry(1, $43F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $1ED, $02, 0, 1, 2, 0, $11D)
    %spritemapEntry(0, $1F5, $02, 0, 1, 2, 0, $11C)
    %spritemapEntry(1, $4200, $F8, 0, 1, 2, 0, $100)

%anchor($A39FE2)
Spritemap_Tripper_VerticallyStill_Left_1:
    dw $0003                                                             ;A39FE2;
    %spritemapEntry(1, $43F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $1F6, $02, 0, 1, 2, 0, $11E)
    %spritemapEntry(1, $4200, $F8, 0, 1, 2, 0, $104)

%anchor($A39FF3)
Spritemap_Tripper_VerticallyStill_Left_2:
    dw $0004                                                             ;A39FF3;
    %spritemapEntry(1, $43F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $1ED, $02, 0, 1, 2, 0, $10D)
    %spritemapEntry(0, $1F5, $02, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $4200, $F8, 0, 1, 2, 0, $108)

%anchor($A3A009)
Spritemap_Tripper_Frozen_MovingLeft:
    dw $0002                                                             ;A3A009;
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $108)

%anchor($A3A015)
Spritemap_Tripper_Frozen_MovingRight:
    dw $0002                                                             ;A3A015;
    %spritemapEntry(1, $1F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $108)

%anchor($A3A021)
Spritemap_Kamer2_0:
    dw $0002                                                             ;A3A021;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $100)

%anchor($A3A02D)
Spritemap_Kamer2_1:
    dw $0002                                                             ;A3A02D;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $102)

%anchor($A3A039)
Spritemap_Kamer2_2:
    dw $0002                                                             ;A3A039;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $104)

%anchor($A3A045)
Spritemap_Kamer2_3:
    dw $0002                                                             ;A3A045;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $106)


%anchor($A3A051)
Palette_Sbug:
    dw $3800,$3F57,$2E4D,$00E2,$0060,$3AB0,$220B,$1166                   ;A3A051;
    dw $0924,$435A,$3694,$15AD,$0508,$03FF,$0237,$00D1                   ;A3A061;

%anchor($A3A071)
InstList_Sbug_FacingUp:
    dw $0005,Spritemap_Sbug_FacingUp_0                                   ;A3A071;
    dw $0005,Spritemap_Sbug_FacingUp_1                                   ;A3A075;
    dw $0005,Spritemap_Sbug_FacingUp_0                                   ;A3A079;
    dw $0005,Spritemap_Sbug_FacingUp_2                                   ;A3A07D;
    dw Instruction_Common_GotoY                                          ;A3A081;
    dw InstList_Sbug_FacingUp                                            ;A3A083;

%anchor($A3A085)
InstList_Sbug_FacingUpLeft:
    dw $0005,Spritemap_Sbug_FacingUpLeft_0                               ;A3A085;
    dw $0005,Spritemap_Sbug_FacingUpLeft_1                               ;A3A089;
    dw $0005,Spritemap_Sbug_FacingUpLeft_0                               ;A3A08D;
    dw $0005,Spritemap_Sbug_FacingUpLeft_2                               ;A3A091;
    dw Instruction_Common_GotoY                                          ;A3A095;
    dw InstList_Sbug_FacingUpLeft                                        ;A3A097;

%anchor($A3A099)
InstList_Sbug_FacingLeft:
    dw $0005,Spritemap_Sbug_FacingLeft_0                                 ;A3A099;
    dw $0005,Spritemap_Sbug_FacingLeft_1                                 ;A3A09D;
    dw $0005,Spritemap_Sbug_FacingLeft_0                                 ;A3A0A1;
    dw $0005,Spritemap_Sbug_FacingLeft_2                                 ;A3A0A5;
    dw Instruction_Common_GotoY                                          ;A3A0A9;
    dw InstList_Sbug_FacingLeft                                          ;A3A0AB;

%anchor($A3A0AD)
InstList_Sbug_FacingDownLeft:
    dw $0005,Spritemap_Sbug_FacingDownLeft_0                             ;A3A0AD;
    dw $0005,Spritemap_Sbug_FacingDownLeft_1                             ;A3A0B1;
    dw $0005,Spritemap_Sbug_FacingDownLeft_0                             ;A3A0B5;
    dw $0005,Spritemap_Sbug_FacingDownLeft_2                             ;A3A0B9;
    dw Instruction_Common_GotoY                                          ;A3A0BD;
    dw InstList_Sbug_FacingDownLeft                                      ;A3A0BF;

%anchor($A3A0C1)
InstList_Sbug_FacingDown:
    dw $0005,Spritemap_Sbug_FacingDown_0                                 ;A3A0C1;
    dw $0005,Spritemap_Sbug_FacingDown_1                                 ;A3A0C5;
    dw $0005,Spritemap_Sbug_FacingDown_0                                 ;A3A0C9;
    dw $0005,Spritemap_Sbug_FacingDown_2                                 ;A3A0CD;
    dw Instruction_Common_GotoY                                          ;A3A0D1;
    dw InstList_Sbug_FacingDown                                          ;A3A0D3;

%anchor($A3A0D5)
InstList_Sbug_FacingDownRight:
    dw $0005,Spritemap_Sbug_FacingDownRight_0                            ;A3A0D5;
    dw $0005,Spritemap_Sbug_FacingDownRight_1                            ;A3A0D9;
    dw $0005,Spritemap_Sbug_FacingDownRight_0                            ;A3A0DD;
    dw $0005,Spritemap_Sbug_FacingDownRight_2                            ;A3A0E1;
    dw Instruction_Common_GotoY                                          ;A3A0E5;
    dw InstList_Sbug_FacingDownRight                                     ;A3A0E7;

%anchor($A3A0E9)
InstList_Sbug_FacingRight:
    dw $0005,Spritemap_Sbug_FacingRight_0                                ;A3A0E9;
    dw $0005,Spritemap_Sbug_FacingRight_1                                ;A3A0ED;
    dw $0005,Spritemap_Sbug_FacingRight_0                                ;A3A0F1;
    dw $0005,Spritemap_Sbug_FacingRight_2                                ;A3A0F5;
    dw Instruction_Common_GotoY                                          ;A3A0F9;
    dw InstList_Sbug_FacingRight                                         ;A3A0FB;

%anchor($A3A0FD)
InstList_Sbug_FacingUpRight:
    dw $0005,Spritemap_Sbug_FacingUpRight_0                              ;A3A0FD;
    dw $0005,Spritemap_Sbug_FacingUpRight_1                              ;A3A101;
    dw $0005,Spritemap_Sbug_FacingUpRight_0                              ;A3A105;
    dw $0005,Spritemap_Sbug_FacingUpRight_2                              ;A3A109;
    dw Instruction_Common_GotoY                                          ;A3A10D;
    dw InstList_Sbug_FacingUpRight                                       ;A3A10F;

%anchor($A3A111)
InstListPointers_Sbug:
    dw InstList_Sbug_FacingUp                                            ;A3A111;
    dw InstList_Sbug_FacingUpLeft                                        ;A3A113;
    dw InstList_Sbug_FacingLeft                                          ;A3A115;
    dw InstList_Sbug_FacingDownLeft                                      ;A3A117;
    dw InstList_Sbug_FacingDown                                          ;A3A119;
    dw InstList_Sbug_FacingDownRight                                     ;A3A11B;
    dw InstList_Sbug_FacingRight                                         ;A3A11D;
    dw InstList_Sbug_FacingUpRight                                       ;A3A11F;

%anchor($A3A121)
ActivateFunctionPointers_Sbug:
; Indexed by [enemy parameter 2 high]
    dw Function_Sbug_Activate_0_MoveForwards                             ;A3A121;
    dw Function_Sbug_Activate_1_MoveForwardsInAZigZag                    ;A3A123;
    dw Function_Sbug_Activate_2_MoveAlong45DegreeAngleTowardsSamus       ;A3A125;
    dw Function_Sbug_Activate_3_MoveRandomly_WaitForSamusIfHitBlock      ;A3A127;
    dw Function_Sbug_Activate_4_MoveRandomly_ReverseUntil6BlockAway      ;A3A129;
    dw Function_Sbug_Activate_5_MoveForwards_WaitForSamus                ;A3A12B;
    dw Function_Sbug_Activate_6_MoveAlong45DegreeAngleAwayFromSamus      ;A3A12D;

%anchor($A3A12F)
SetSbugInstList:
    LDX.W $0E54                                                          ;A3A12F;
    LDA.L $7E8008,X                                                      ;A3A132;
    CMP.L $7E800A,X                                                      ;A3A136;
    BEQ .return                                                          ;A3A13A;
    STA.L $7E800A,X                                                      ;A3A13C;
    STA.W $0F92,X                                                        ;A3A140;
    LDA.W #$0001                                                         ;A3A143;
    STA.W $0F94,X                                                        ;A3A146;
    STZ.W $0F90,X                                                        ;A3A149;

.return:
    RTS                                                                  ;A3A14C;


%anchor($A3A14D)
InitAI_Sbug:
    LDX.W $0E54                                                          ;A3A14D;
    LDA.W #$0000                                                         ;A3A150;
    STA.L $7E800A,X                                                      ;A3A153;
    STA.L $7E8008,X                                                      ;A3A157;
    JSR.W CalculateMovingForwardSpeeds                                   ;A3A15B;
    JSR.W CalculateMovingLeftVelocities                                  ;A3A15E;
    JSR.W CalculateMovingRightVelocities                                 ;A3A161;
    JSR.W DetermineFacingForwardInstListIndex                            ;A3A164;
    JSR.W DetermineFacingLeftInstListIndex                               ;A3A167;
    JSR.W DetermineFacingRightInstListIndex                              ;A3A16A;
    LDA.L $7E8000,X                                                      ;A3A16D;
    TAY                                                                  ;A3A171;
    LDA.W InstListPointers_Sbug,Y                                        ;A3A172;
    STA.L $7E8008,X                                                      ;A3A175;
    JSR.W SetSbugInstList                                                ;A3A179;
    LDA.W #Function_Sbug_WaitForSamusToGetNear                           ;A3A17C;
    STA.W $0FAA,X                                                        ;A3A17F;
    RTL                                                                  ;A3A182;


%anchor($A3A183)
CalculateMovingForwardSpeeds:
    LDA.W $0FB4,X                                                        ;A3A183;
    AND.W #$00FF                                                         ;A3A186;
    STA.B $14                                                            ;A3A189;
    LDA.W $0FB5,X                                                        ;A3A18B;
    AND.W #$00FF                                                         ;A3A18E;
    STA.B $12                                                            ;A3A191;
    JSL.L Do_Some_Math_With_Sine_Cosine_Terrible_Label_Name              ;A3A193; ($16.$18, $1A.$1C) = ([$14] * |cos([$12] * pi / 80h)|, [$14] * |sin([$12] * pi / 80h)|)
    LDA.B $16                                                            ;A3A197;
    STA.L $7E7802,X                                                      ;A3A199;
    LDA.B $18                                                            ;A3A19D;
    STA.L $7E7800,X                                                      ;A3A19F;
    LDA.B $1A                                                            ;A3A1A3;
    STA.L $7E7806,X                                                      ;A3A1A5;
    LDA.B $1C                                                            ;A3A1A9;
    STA.L $7E7804,X                                                      ;A3A1AB;
    RTS                                                                  ;A3A1AF;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A3A1B0)
UNUSED_CalculateMovingForwardVelocities_A3A1B0:
    LDA.W $0FB4,X                                                        ;A3A1B0;
    AND.W #$00FF                                                         ;A3A1B3;
    STA.W $0E32                                                          ;A3A1B6;
    LDA.W $0FB5,X                                                        ;A3A1B9;
    AND.W #$00FF                                                         ;A3A1BC;
    JSL.L EightBitCosineMultiplication_A0B0B2                            ;A3A1BF;
    LDA.W $0E36                                                          ;A3A1C3;
    STA.L $7E7802,X                                                      ;A3A1C6;
    LDA.W $0E38                                                          ;A3A1CA;
    STA.L $7E7800,X                                                      ;A3A1CD;
    LDA.W $0FB4,X                                                        ;A3A1D1;
    AND.W #$00FF                                                         ;A3A1D4;
    STA.W $0E32                                                          ;A3A1D7;
    LDA.W $0FB5,X                                                        ;A3A1DA;
    AND.W #$00FF                                                         ;A3A1DD;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A3A1E0;
    LDA.W $0E36                                                          ;A3A1E4;
    STA.L $7E7806,X                                                      ;A3A1E7;
    LDA.W $0E38                                                          ;A3A1EB;
    STA.L $7E7804,X                                                      ;A3A1EE;
    RTS                                                                  ;A3A1F2;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A3A1F3)
CalculateMovingLeftVelocities:
    LDA.W $0FB4,X                                                        ;A3A1F3;
    AND.W #$00FF                                                         ;A3A1F6;
    STA.W $0E32                                                          ;A3A1F9;
    LDA.W $0FB5,X                                                        ;A3A1FC;
    SEC                                                                  ;A3A1FF;
    SBC.W #$0020                                                         ;A3A200;
    AND.W #$00FF                                                         ;A3A203;
    JSL.L EightBitCosineMultiplication_A0B0B2                            ;A3A206;
    LDA.W $0E36                                                          ;A3A20A;
    STA.L $7E780A,X                                                      ;A3A20D;
    LDA.W $0E38                                                          ;A3A211;
    STA.L $7E7808,X                                                      ;A3A214;
    LDA.W $0FB4,X                                                        ;A3A218;
    AND.W #$00FF                                                         ;A3A21B;
    STA.W $0E32                                                          ;A3A21E;
    LDA.W $0FB5,X                                                        ;A3A221;
    SEC                                                                  ;A3A224;
    SBC.W #$0020                                                         ;A3A225;
    AND.W #$00FF                                                         ;A3A228;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A3A22B;
    LDA.W $0E36                                                          ;A3A22F;
    STA.L $7E780E,X                                                      ;A3A232;
    LDA.W $0E38                                                          ;A3A236;
    STA.L $7E780C,X                                                      ;A3A239;
    RTS                                                                  ;A3A23D;


%anchor($A3A23E)
CalculateMovingRightVelocities:
    LDA.W $0FB4,X                                                        ;A3A23E;
    AND.W #$00FF                                                         ;A3A241;
    STA.W $0E32                                                          ;A3A244;
    LDA.W $0FB5,X                                                        ;A3A247;
    CLC                                                                  ;A3A24A;
    ADC.W #$0020                                                         ;A3A24B;
    AND.W #$00FF                                                         ;A3A24E;
    JSL.L EightBitCosineMultiplication_A0B0B2                            ;A3A251;
    LDA.W $0E36                                                          ;A3A255;
    STA.L $7E7812,X                                                      ;A3A258;
    LDA.W $0E38                                                          ;A3A25C;
    STA.L $7E7810,X                                                      ;A3A25F;
    LDA.W $0FB4,X                                                        ;A3A263;
    AND.W #$00FF                                                         ;A3A266;
    STA.W $0E32                                                          ;A3A269;
    LDA.W $0FB5,X                                                        ;A3A26C;
    CLC                                                                  ;A3A26F;
    ADC.W #$0020                                                         ;A3A270;
    AND.W #$00FF                                                         ;A3A273;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A3A276;
    LDA.W $0E36                                                          ;A3A27A;
    STA.L $7E7816,X                                                      ;A3A27D;
    LDA.W $0E38                                                          ;A3A281;
    STA.L $7E7814,X                                                      ;A3A284;
    RTS                                                                  ;A3A288;


%anchor($A3A289)
DetermineFacingForwardInstListIndex:
    LDA.W $0FB5,X                                                        ;A3A289;
    SEC                                                                  ;A3A28C;
    SBC.W #$0030                                                         ;A3A28D;
    AND.W #$00FF                                                         ;A3A290;
    LSR A                                                                ;A3A293;
    LSR A                                                                ;A3A294;
    LSR A                                                                ;A3A295;
    LSR A                                                                ;A3A296;
    LSR A                                                                ;A3A297;
    ASL A                                                                ;A3A298;
    STA.L $7E8000,X                                                      ;A3A299;
    RTS                                                                  ;A3A29D;


%anchor($A3A29E)
DetermineFacingLeftInstListIndex:
    LDA.W $0FB5,X                                                        ;A3A29E;
    SEC                                                                  ;A3A2A1;
    SBC.W #$0030                                                         ;A3A2A2;
    SEC                                                                  ;A3A2A5;
    SBC.W #$0020                                                         ;A3A2A6;
    AND.W #$00FF                                                         ;A3A2A9;
    LSR A                                                                ;A3A2AC;
    LSR A                                                                ;A3A2AD;
    LSR A                                                                ;A3A2AE;
    LSR A                                                                ;A3A2AF;
    LSR A                                                                ;A3A2B0;
    ASL A                                                                ;A3A2B1;
    STA.L $7E8002,X                                                      ;A3A2B2;
    RTS                                                                  ;A3A2B6;


%anchor($A3A2B7)
DetermineFacingRightInstListIndex:
    LDA.W $0FB5,X                                                        ;A3A2B7;
    SEC                                                                  ;A3A2BA;
    SBC.W #$0030                                                         ;A3A2BB;
    CLC                                                                  ;A3A2BE;
    ADC.W #$0020                                                         ;A3A2BF;
    AND.W #$00FF                                                         ;A3A2C2;
    LSR A                                                                ;A3A2C5;
    LSR A                                                                ;A3A2C6;
    LSR A                                                                ;A3A2C7;
    LSR A                                                                ;A3A2C8;
    LSR A                                                                ;A3A2C9;
    ASL A                                                                ;A3A2CA;
    STA.L $7E8004,X                                                      ;A3A2CB;
    RTS                                                                  ;A3A2CF;


%anchor($A3A2D0)
MainAI_Sbug:
    LDX.W $0E54                                                          ;A3A2D0;
    JSR.W ($0FAA,X)                                                      ;A3A2D3;
    RTL                                                                  ;A3A2D6;


%anchor($A3A2D7)
Function_Sbug_WaitForSamusToGetNear:
    LDX.W $0E54                                                          ;A3A2D7;
    LDA.W $0FB6,X                                                        ;A3A2DA;
    AND.W #$00FF                                                         ;A3A2DD;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A3A2E0;
    BEQ .return                                                          ;A3A2E4;
    LDA.W $0FB6,X                                                        ;A3A2E6;
    AND.W #$00FF                                                         ;A3A2E9;
    JSL.L IsSamusWithingAPixelRowsOfEnemy                                ;A3A2EC;
    BEQ .return                                                          ;A3A2F0;
    LDA.W $0FB7,X                                                        ;A3A2F2;
    AND.W #$00FF                                                         ;A3A2F5;
    ASL A                                                                ;A3A2F8;
    TAY                                                                  ;A3A2F9;
    LDA.W ActivateFunctionPointers_Sbug,Y                                ;A3A2FA;
    STA.W $0FAA,X                                                        ;A3A2FD;

.return:
    RTS                                                                  ;A3A300;


%anchor($A3A301)
Function_Sbug_Activate_0_MoveForwards:
    LDX.W $0E54                                                          ;A3A301;
    LDA.W #Function_Sbug_Activated_0_MoveForwards                        ;A3A304;
    STA.W $0FAA,X                                                        ;A3A307;
    RTS                                                                  ;A3A30A;


%anchor($A3A30B)
Function_Sbug_Activate_1_MoveForwardsInAZigZag:
    LDX.W $0E54                                                          ;A3A30B;
    LDA.W #Function_Sbug_Activated_1_MoveForwardsInAZigZag               ;A3A30E;
    STA.W $0FAA,X                                                        ;A3A311;
    RTS                                                                  ;A3A314;


%anchor($A3A315)
Function_Sbug_Activate_3_MoveRandomly_WaitForSamusIfHitBlock:
    LDX.W $0E54                                                          ;A3A315;
    LDA.W #$000B                                                         ;A3A318;
    STA.W $05E5                                                          ;A3A31B;
    LDA.W #Function_Sbug_Activated_3_MoveRandomly_WaitForSamusIfHitBlock ;A3A31E;
    STA.W $0FAA,X                                                        ;A3A321;
    RTS                                                                  ;A3A324;


%anchor($A3A325)
Function_Sbug_Activate_4_MoveRandomly_ReverseUntil6BlockAway:
    LDX.W $0E54                                                          ;A3A325;
    LDA.W #$0200                                                         ;A3A328;
    STA.W $0FA8,X                                                        ;A3A32B;
    LDA.W #$000B                                                         ;A3A32E;
    STA.W $05E5                                                          ;A3A331;
    LDA.W #Function_Sbug_Activated_4_MoveRandomly_ReverseUntil6BlocksAway ;A3A334;
    STA.W $0FAA,X                                                        ;A3A337;
    RTS                                                                  ;A3A33A;


%anchor($A3A33B)
Function_Sbug_Activate_5_MoveForwards_WaitForSamus:
    LDX.W $0E54                                                          ;A3A33B;
    LDA.W #$0020                                                         ;A3A33E;
    STA.W $0FB2,X                                                        ;A3A341;
    LDA.W #Function_Sbug_Activated_5_MoveForwards_WaitForSamus           ;A3A344;
    STA.W $0FAA,X                                                        ;A3A347;
    RTS                                                                  ;A3A34A;


%anchor($A3A34B)
Function_Sbug_Activate_2_MoveAlong45DegreeAngleTowardsSamus:
    LDX.W $0E54                                                          ;A3A34B;
    JSL.L CalculateAngleOfSamusFromEnemy                                 ;A3A34E;
    SEC                                                                  ;A3A352;
    SBC.W #$0040                                                         ;A3A353;
    EOR.W #$FFFF                                                         ;A3A356;
    INC A                                                                ;A3A359;
    CLC                                                                  ;A3A35A;
    ADC.W #$0100                                                         ;A3A35B;
    AND.W #$00FF                                                         ;A3A35E;
    STA.W $0FAC,X                                                        ;A3A361;
    JSR.W CalculateCustomVelocities                                      ;A3A364;
    JSR.W DetermineCustomInstListIndex                                   ;A3A367;
    LDA.L $7E8006,X                                                      ;A3A36A;
    TAY                                                                  ;A3A36E;
    LDA.W InstListPointers_Sbug,Y                                        ;A3A36F;
    STA.L $7E8008,X                                                      ;A3A372;
    JSR.W SetSbugInstList                                                ;A3A376;
    LDA.W #Function_Sbug_Activated_2_MoveAlong45DegreeAngleTowardsSamus  ;A3A379;
    STA.W $0FAA,X                                                        ;A3A37C;
    RTS                                                                  ;A3A37F;


%anchor($A3A380)
Function_Sbug_Activate_6_MoveAlong45DegreeAngleAwayFromSamus:
    LDX.W $0E54                                                          ;A3A380;
    JSL.L CalculateAngleOfSamusFromEnemy                                 ;A3A383;
    SEC                                                                  ;A3A387;
    SBC.W #$0040                                                         ;A3A388;
    EOR.W #$FFFF                                                         ;A3A38B;
    INC A                                                                ;A3A38E;
    CLC                                                                  ;A3A38F;
    ADC.W #$0080                                                         ;A3A390;
    AND.W #$00FF                                                         ;A3A393;
    STA.W $0FAC,X                                                        ;A3A396;
    JSR.W CalculateCustomVelocities                                      ;A3A399;
    JSR.W DetermineCustomInstListIndex                                   ;A3A39C;
    LDA.L $7E8006,X                                                      ;A3A39F;
    TAY                                                                  ;A3A3A3;
    LDA.W InstListPointers_Sbug,Y                                        ;A3A3A4;
    STA.L $7E8008,X                                                      ;A3A3A7;
    JSR.W SetSbugInstList                                                ;A3A3AB;
    LDA.W #Function_Sbug_Activated_6_MoveAlong45DegAngleAwayFromSamus    ;A3A3AE;
    STA.W $0FAA,X                                                        ;A3A3B1;
    RTS                                                                  ;A3A3B4;


%anchor($A3A3B5)
DetermineCustomInstListIndex:
    LDA.W $0FAC,X                                                        ;A3A3B5;
    SEC                                                                  ;A3A3B8;
    SBC.W #$0030                                                         ;A3A3B9;
    AND.W #$00FF                                                         ;A3A3BC;
    LSR A                                                                ;A3A3BF;
    LSR A                                                                ;A3A3C0;
    LSR A                                                                ;A3A3C1;
    LSR A                                                                ;A3A3C2;
    LSR A                                                                ;A3A3C3;
    ASL A                                                                ;A3A3C4;
    STA.L $7E8006,X                                                      ;A3A3C5;
    RTS                                                                  ;A3A3C9;


%anchor($A3A3CA)
CalculateCustomVelocities:
    LDA.W $0FB4,X                                                        ;A3A3CA;
    AND.W #$00FF                                                         ;A3A3CD;
    STA.W $0E32                                                          ;A3A3D0;
    LDA.W $0FAC,X                                                        ;A3A3D3;
    JSL.L EightBitCosineMultiplication_A0B0B2                            ;A3A3D6;
    LDA.W $0E36                                                          ;A3A3DA;
    STA.L $7E781A,X                                                      ;A3A3DD;
    LDA.W $0E38                                                          ;A3A3E1;
    STA.L $7E7818,X                                                      ;A3A3E4;
    LDA.W $0FB4,X                                                        ;A3A3E8;
    AND.W #$00FF                                                         ;A3A3EB;
    STA.W $0E32                                                          ;A3A3EE;
    LDA.W $0FAC,X                                                        ;A3A3F1;
    JSL.L EightBitNegativeSineMultiplication_A0B0C6                      ;A3A3F4;
    LDA.W $0E36                                                          ;A3A3F8;
    STA.L $7E781E,X                                                      ;A3A3FB;
    LDA.W $0E38                                                          ;A3A3FF;
    STA.L $7E781C,X                                                      ;A3A402;
    RTS                                                                  ;A3A406;


%anchor($A3A407)
Function_Sbug_Activated_0_MoveForwards:
    LDX.W $0E54                                                          ;A3A407;
    JSR.W MoveSbugForward                                                ;A3A40A;
    RTS                                                                  ;A3A40D;


%anchor($A3A40E)
Function_Sbug_Activated_1_MoveForwardsInAZigZag:
    LDX.W $0E54                                                          ;A3A40E;
    LDA.W $0FA4,X                                                        ;A3A411;
    AND.W #$0010                                                         ;A3A414;
    BNE .right                                                           ;A3A417;
    LDA.L $7E8002,X                                                      ;A3A419;
    TAY                                                                  ;A3A41D;
    LDA.W InstListPointers_Sbug,Y                                        ;A3A41E;
    STA.L $7E8008,X                                                      ;A3A421;
    JSR.W SetSbugInstList                                                ;A3A425;
    JSR.W MoveSbugLeft                                                   ;A3A428;
    BRA .return                                                          ;A3A42B;


.right:
    LDA.L $7E8004,X                                                      ;A3A42D;
    TAY                                                                  ;A3A431;
    LDA.W InstListPointers_Sbug,Y                                        ;A3A432;
    STA.L $7E8008,X                                                      ;A3A435;
    JSR.W SetSbugInstList                                                ;A3A439;
    JSR.W MoveSbugRight                                                  ;A3A43C;

.return:
    RTS                                                                  ;A3A43F;


%anchor($A3A440)
Function_Sbug_Activated_2_MoveAlong45DegreeAngleTowardsSamus:
    LDX.W $0E54                                                          ;A3A440;
    JSR.W MoveSbugAlongCustomAngle                                       ;A3A443;
    RTS                                                                  ;A3A446;


%anchor($A3A447)
Function_Sbug_Activated_6_MoveAlong45DegAngleAwayFromSamus:
    LDX.W $0E54                                                          ;A3A447;
    JSR.W MoveSbugAlongCustomAngle                                       ;A3A44A;
    RTS                                                                  ;A3A44D;


%anchor($A3A44E)
Function_Sbug_Activated_5_MoveForwards_WaitForSamus:
    LDX.W $0E54                                                          ;A3A44E;
    DEC.W $0FB2,X                                                        ;A3A451;
    BMI .wait                                                            ;A3A454;
    JSR.W MoveSbugForward                                                ;A3A456;
    BRA .return                                                          ;A3A459;


.wait:
    LDA.W #Function_Sbug_WaitForSamusToGetNear                           ;A3A45B;
    STA.W $0FAA,X                                                        ;A3A45E;

.return:
    RTS                                                                  ;A3A461;


%anchor($A3A462)
Function_Sbug_MoveAlongCustomAngle_WaitForSamusIfHitBlock:
    LDX.W $0E54                                                          ;A3A462;
    DEC.W $0FB2,X                                                        ;A3A465;
    BMI .timerExpired                                                    ;A3A468;
    JSR.W MoveSbugAlongCustomAngle_WaitForSamusIfHitBlock                ;A3A46A;
    BRA .return                                                          ;A3A46D;


.timerExpired:
    LDA.W #Function_Sbug_Activated_3_MoveRandomly_WaitForSamusIfHitBlock ;A3A46F;
    STA.W $0FAA,X                                                        ;A3A472;

.return:
    RTS                                                                  ;A3A475;


%anchor($A3A476)
Function_Sbug_MoveStraightAlongAngle_ReverseUntil6BlocksAway:
    LDX.W $0E54                                                          ;A3A476;
    DEC.W $0FA8,X                                                        ;A3A479;
    BMI .move                                                            ;A3A47C;
    DEC.W $0FB2,X                                                        ;A3A47E;
    BMI .done                                                            ;A3A481;
    LDA.W $0F7A,X                                                        ;A3A483;
    SEC                                                                  ;A3A486;
    SBC.W $0AF6                                                          ;A3A487;
    JSL.L NegateA_A0B067                                                 ;A3A48A;
    CMP.W #$0060                                                         ;A3A48E;
    BPL +                                                                ;A3A491;
    BRA .move                                                            ;A3A493;


  + LDA.W $0F7E,X                                                        ;A3A495;
    SEC                                                                  ;A3A498;
    SBC.W $0AFA                                                          ;A3A499;
    JSL.L NegateA_A0B067                                                 ;A3A49C;
    CMP.W #$0060                                                         ;A3A4A0;
    BPL .reverse                                                         ;A3A4A3;
    BRA .move                                                            ;A3A4A5;


.reverse:
    JSR.W ReverseSbugCustomAngle                                         ;A3A4A7;

.move:
    JSR.W MoveSbugAlongCustomAngle                                       ;A3A4AA;
    BRA .return                                                          ;A3A4AD;


.done:
    LDA.W #Function_Sbug_Activated_4_MoveRandomly_ReverseUntil6BlocksAway ;A3A4AF;
    STA.W $0FAA,X                                                        ;A3A4B2;

.return:
    RTS                                                                  ;A3A4B5;


%anchor($A3A4B6)
Function_Sbug_Activated_4_MoveRandomly_ReverseUntil6BlocksAway:
    LDX.W $0E54                                                          ;A3A4B6;
    JSL.L GenerateRandomNumber                                           ;A3A4B9;
    AND.W #$00FF                                                         ;A3A4BD;
    SEC                                                                  ;A3A4C0;
    SBC.W #$0040                                                         ;A3A4C1;
    AND.W #$00FF                                                         ;A3A4C4;
    CLC                                                                  ;A3A4C7;
    ADC.W $0FAC,X                                                        ;A3A4C8;
    STA.W $0FAC,X                                                        ;A3A4CB;
    JSR.W CalculateCustomVelocities                                      ;A3A4CE;
    JSR.W DetermineCustomInstListIndex                                   ;A3A4D1;
    LDA.L $7E8006,X                                                      ;A3A4D4;
    TAY                                                                  ;A3A4D8;
    LDA.W InstListPointers_Sbug,Y                                        ;A3A4D9;
    STA.L $7E8008,X                                                      ;A3A4DC;
    JSR.W SetSbugInstList                                                ;A3A4E0;
    LDA.W #$0020                                                         ;A3A4E3;
    STA.W $0FB2,X                                                        ;A3A4E6;
    LDA.W #Function_Sbug_MoveStraightAlongAngle_ReverseUntil6BlocksAway  ;A3A4E9;
    STA.W $0FAA,X                                                        ;A3A4EC;
    RTS                                                                  ;A3A4EF;


%anchor($A3A4F0)
Function_Sbug_Activated_3_MoveRandomly_WaitForSamusIfHitBlock:
    LDX.W $0E54                                                          ;A3A4F0;
    JSL.L GenerateRandomNumber                                           ;A3A4F3;
    AND.W #$00FF                                                         ;A3A4F7;
    SEC                                                                  ;A3A4FA;
    SBC.W #$0040                                                         ;A3A4FB;
    AND.W #$00FF                                                         ;A3A4FE;
    CLC                                                                  ;A3A501;
    ADC.W $0FAC,X                                                        ;A3A502;
    STA.W $0FAC,X                                                        ;A3A505;
    JSR.W CalculateCustomVelocities                                      ;A3A508;
    JSR.W DetermineCustomInstListIndex                                   ;A3A50B;
    LDA.L $7E8006,X                                                      ;A3A50E;
    TAY                                                                  ;A3A512;
    LDA.W InstListPointers_Sbug,Y                                        ;A3A513;
    STA.L $7E8008,X                                                      ;A3A516;
    JSR.W SetSbugInstList                                                ;A3A51A;
    LDA.W #$0020                                                         ;A3A51D;
    STA.W $0FB2,X                                                        ;A3A520;
    LDA.W #Function_Sbug_MoveAlongCustomAngle_WaitForSamusIfHitBlock     ;A3A523;
    STA.W $0FAA,X                                                        ;A3A526;
    RTS                                                                  ;A3A529;


%anchor($A3A52A)
ReverseSbugCustomAngle:
    LDX.W $0E54                                                          ;A3A52A;
    LDA.L $7E781A,X                                                      ;A3A52D;
    EOR.W #$FFFF                                                         ;A3A531;
    INC A                                                                ;A3A534;
    STA.L $7E781A,X                                                      ;A3A535;
    LDA.L $7E7818,X                                                      ;A3A539;
    EOR.W #$FFFF                                                         ;A3A53D;
    INC A                                                                ;A3A540;
    STA.L $7E7818,X                                                      ;A3A541;
    LDA.L $7E781E,X                                                      ;A3A545;
    EOR.W #$FFFF                                                         ;A3A549;
    INC A                                                                ;A3A54C;
    STA.L $7E781E,X                                                      ;A3A54D;
    LDA.L $7E781C,X                                                      ;A3A551;
    EOR.W #$FFFF                                                         ;A3A555;
    INC A                                                                ;A3A558;
    STA.L $7E781C,X                                                      ;A3A559;
    LDA.L $7E8006,X                                                      ;A3A55D;
    CLC                                                                  ;A3A561;
    ADC.W #$0004                                                         ;A3A562;
    AND.W #$0007                                                         ;A3A565;
    STA.L $7E8006,X                                                      ;A3A568;
    TAY                                                                  ;A3A56C;
    LDA.W InstListPointers_Sbug,Y                                        ;A3A56D;
    STA.L $7E8008,X                                                      ;A3A570;
    JSR.W SetSbugInstList                                                ;A3A574;
    RTS                                                                  ;A3A577;


%anchor($A3A578)
MoveSbugForward:
    LDA.L $7E7802,X                                                      ;A3A578;
    STA.W $0E24                                                          ;A3A57C;
    LDA.L $7E7800,X                                                      ;A3A57F;
    STA.W $0E26                                                          ;A3A583;
    LDA.L $7E7806,X                                                      ;A3A586;
    STA.W $0E28                                                          ;A3A58A;
    LDA.L $7E7804,X                                                      ;A3A58D;
    STA.W $0E2A                                                          ;A3A591;
    LDA.W $0FB5,X                                                        ;A3A594;
    AND.W #$00FF                                                         ;A3A597;
    STA.W $0E20                                                          ;A3A59A;
    JSL.L MoveEnemyAccordingToAngleAndXYSpeeds                           ;A3A59D;
    RTS                                                                  ;A3A5A1;


%anchor($A3A5A2)
RTS_A3A5A2:
    RTS                                                                  ;A3A5A2;


%anchor($A3A5A3)
MoveSbugLeft:
    LDA.W $0F7A,X                                                        ;A3A5A3;
    CLC                                                                  ;A3A5A6;
    ADC.L $7E780A,X                                                      ;A3A5A7;
    STA.W $0F7A,X                                                        ;A3A5AB;
    LDA.W $0F7C,X                                                        ;A3A5AE;
    CLC                                                                  ;A3A5B1;
    ADC.L $7E7808,X                                                      ;A3A5B2;
    BCC +                                                                ;A3A5B6;
    INC.W $0F7A,X                                                        ;A3A5B8;

  + STA.W $0F7C,X                                                        ;A3A5BB;
    LDA.W $0F7E,X                                                        ;A3A5BE;
    CLC                                                                  ;A3A5C1;
    ADC.L $7E780E,X                                                      ;A3A5C2;
    STA.W $0F7E,X                                                        ;A3A5C6;
    LDA.W $0F80,X                                                        ;A3A5C9;
    CLC                                                                  ;A3A5CC;
    ADC.L $7E780C,X                                                      ;A3A5CD;
    BCC +                                                                ;A3A5D1;
    INC.W $0F7E,X                                                        ;A3A5D3;

  + STA.W $0F80,X                                                        ;A3A5D6;
    RTS                                                                  ;A3A5D9;


%anchor($A3A5DA)
MoveSbugRight:
    LDA.W $0F7A,X                                                        ;A3A5DA;
    CLC                                                                  ;A3A5DD;
    ADC.L $7E7812,X                                                      ;A3A5DE;
    STA.W $0F7A,X                                                        ;A3A5E2;
    LDA.W $0F7C,X                                                        ;A3A5E5;
    CLC                                                                  ;A3A5E8;
    ADC.L $7E7810,X                                                      ;A3A5E9;
    BCC +                                                                ;A3A5ED;
    INC.W $0F7A,X                                                        ;A3A5EF;

  + STA.W $0F7C,X                                                        ;A3A5F2;
    LDA.W $0F7E,X                                                        ;A3A5F5;
    CLC                                                                  ;A3A5F8;
    ADC.L $7E7816,X                                                      ;A3A5F9;
    STA.W $0F7E,X                                                        ;A3A5FD;
    LDA.W $0F80,X                                                        ;A3A600;
    CLC                                                                  ;A3A603;
    ADC.L $7E7814,X                                                      ;A3A604;
    BCC +                                                                ;A3A608;
    INC.W $0F7E,X                                                        ;A3A60A;

  + STA.W $0F80,X                                                        ;A3A60D;
    RTS                                                                  ;A3A610;


%anchor($A3A611)
MoveSbugAlongCustomAngle:
    LDA.W $0F7A,X                                                        ;A3A611;
    CLC                                                                  ;A3A614;
    ADC.L $7E781A,X                                                      ;A3A615;
    STA.W $0F7A,X                                                        ;A3A619;
    LDA.W $0F7C,X                                                        ;A3A61C;
    CLC                                                                  ;A3A61F;
    ADC.L $7E7818,X                                                      ;A3A620;
    BCC +                                                                ;A3A624;
    INC.W $0F7A,X                                                        ;A3A626;

  + STA.W $0F7C,X                                                        ;A3A629;
    LDA.W $0F7E,X                                                        ;A3A62C;
    CLC                                                                  ;A3A62F;
    ADC.L $7E781E,X                                                      ;A3A630;
    STA.W $0F7E,X                                                        ;A3A634;
    LDA.W $0F80,X                                                        ;A3A637;
    CLC                                                                  ;A3A63A;
    ADC.L $7E781C,X                                                      ;A3A63B;
    BCC +                                                                ;A3A63F;
    INC.W $0F7E,X                                                        ;A3A641;

  + STA.W $0F80,X                                                        ;A3A644;
    RTS                                                                  ;A3A647;


%anchor($A3A648)
MoveSbugAlongCustomAngle_WaitForSamusIfHitBlock:
    LDA.L $7E7818,X                                                      ;A3A648;
    STA.B $12                                                            ;A3A64C;
    LDA.L $7E781A,X                                                      ;A3A64E;
    STA.B $14                                                            ;A3A652;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3A654;
    BCC .notCollidedWithWall                                             ;A3A658;
    LDA.W #Function_Sbug_WaitForSamusToGetNear                           ;A3A65A;
    STA.W $0FAA,X                                                        ;A3A65D;
    BRA .return                                                          ;A3A660;


.notCollidedWithWall:
    LDA.L $7E781C,X                                                      ;A3A662;
    STA.B $12                                                            ;A3A666;
    LDA.L $7E781E,X                                                      ;A3A668;
    STA.B $14                                                            ;A3A66C;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3A66E;
    BCC .return                                                          ;A3A672;
    LDA.W #Function_Sbug_WaitForSamusToGetNear                           ;A3A674;
    STA.W $0FAA,X                                                        ;A3A677;

.return:
    RTS                                                                  ;A3A67A;


%anchor($A3A67B)
RTL_A3A67B:
    RTL                                                                  ;A3A67B;


%anchor($A3A67C)
RTL_A3A67C:
    RTL                                                                  ;A3A67C;


%anchor($A3A67D)
Spritemap_Sbug_FacingUp_0:
    dw $0001                                                             ;A3A67D;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $100)

%anchor($A3A684)
Spritemap_Sbug_FacingUp_1:
    dw $0001                                                             ;A3A684;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $101)

%anchor($A3A68B)
Spritemap_Sbug_FacingUp_2:
    dw $0001                                                             ;A3A68B;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $102)

%anchor($A3A692)
Spritemap_Sbug_FacingUpLeft_0:
    dw $0001                                                             ;A3A692;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $103)

%anchor($A3A699)
Spritemap_Sbug_FacingUpLeft_1:
    dw $0001                                                             ;A3A699;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $104)

%anchor($A3A6A0)
Spritemap_Sbug_FacingUpLeft_2:
    dw $0001                                                             ;A3A6A0;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $105)

%anchor($A3A6A7)
Spritemap_Sbug_FacingLeft_0:
    dw $0001                                                             ;A3A6A7;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $106)

%anchor($A3A6AE)
Spritemap_Sbug_FacingLeft_1:
    dw $0001                                                             ;A3A6AE;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $107)

%anchor($A3A6B5)
Spritemap_Sbug_FacingLeft_2:
    dw $0001                                                             ;A3A6B5;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $108)

%anchor($A3A6BC)
Spritemap_Sbug_FacingDownLeft_0:
    dw $0001                                                             ;A3A6BC;
    %spritemapEntry(0, $1FC, $FC, 1, 0, 3, 0, $103)

%anchor($A3A6C3)
Spritemap_Sbug_FacingDownLeft_1:
    dw $0001                                                             ;A3A6C3;
    %spritemapEntry(0, $1FC, $FC, 1, 0, 3, 0, $104)

%anchor($A3A6CA)
Spritemap_Sbug_FacingDownLeft_2:
    dw $0001                                                             ;A3A6CA;
    %spritemapEntry(0, $1FC, $FC, 1, 0, 3, 0, $105)

%anchor($A3A6D1)
Spritemap_Sbug_FacingDown_0:
    dw $0001                                                             ;A3A6D1;
    %spritemapEntry(0, $1FC, $FC, 1, 0, 3, 0, $100)

%anchor($A3A6D8)
Spritemap_Sbug_FacingDown_1:
    dw $0001                                                             ;A3A6D8;
    %spritemapEntry(0, $1FC, $FC, 1, 0, 3, 0, $101)

%anchor($A3A6DF)
Spritemap_Sbug_FacingDown_2:
    dw $0001                                                             ;A3A6DF;
    %spritemapEntry(0, $1FC, $FC, 1, 0, 3, 0, $102)

%anchor($A3A6E6)
Spritemap_Sbug_FacingDownRight_0:
    dw $0001                                                             ;A3A6E6;
    %spritemapEntry(0, $1FC, $FC, 1, 1, 3, 0, $103)

%anchor($A3A6ED)
Spritemap_Sbug_FacingDownRight_1:
    dw $0001                                                             ;A3A6ED;
    %spritemapEntry(0, $1FC, $FC, 1, 1, 3, 0, $104)

%anchor($A3A6F4)
Spritemap_Sbug_FacingDownRight_2:
    dw $0001                                                             ;A3A6F4;
    %spritemapEntry(0, $1FC, $FC, 1, 1, 3, 0, $105)

%anchor($A3A6FB)
Spritemap_Sbug_FacingRight_0:
    dw $0001                                                             ;A3A6FB;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 3, 0, $106)

%anchor($A3A702)
Spritemap_Sbug_FacingRight_1:
    dw $0001                                                             ;A3A702;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 3, 0, $107)

%anchor($A3A709)
Spritemap_Sbug_FacingRight_2:
    dw $0001                                                             ;A3A709;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 3, 0, $108)

%anchor($A3A710)
Spritemap_Sbug_FacingUpRight_0:
    dw $0001                                                             ;A3A710;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 3, 0, $103)

%anchor($A3A717)
Spritemap_Sbug_FacingUpRight_1:
    dw $0001                                                             ;A3A717;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 3, 0, $104)

%anchor($A3A71E)
Spritemap_Sbug_FacingUpRight_2:
    dw $0001                                                             ;A3A71E;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 3, 0, $105)


%anchor($A3A725)
Palette_Mochtroid:
    dw $3800,$3FB7,$2EAD,$0142,$0060,$3B10,$226B,$11C6                   ;A3A725;
    dw $0984,$72FF,$2CDF,$24B9,$1CAF,$2A9D,$19D6,$0D10                   ;A3A735;

%anchor($A3A745)
InstList_Mochtroid_NotTouchingSamus:
    dw $000E,Spritemap_Mochtroid_NotTouchingSamus_0                      ;A3A745;
    dw $000E,Spritemap_Mochtroid_NotTouchingSamus_1                      ;A3A749;
    dw $000E,Spritemap_Mochtroid_NotTouchingSamus_2                      ;A3A74D;
    dw $000E,Spritemap_Mochtroid_NotTouchingSamus_1                      ;A3A751;
    dw Instruction_Common_GotoY                                          ;A3A755;
    dw InstList_Mochtroid_NotTouchingSamus                               ;A3A757;

%anchor($A3A759)
InstList_Mochtroid_TouchingSamus:
    dw $0005,Spritemap_Mochtroid_TouchingSamus_0                         ;A3A759;
    dw $0005,Spritemap_Mochtroid_TouchingSamus_1                         ;A3A75D;
    dw $0005,Spritemap_Mochtroid_TouchingSamus_2                         ;A3A761;
    dw $0005,Spritemap_Mochtroid_TouchingSamus_1                         ;A3A765;
    dw Instruction_Common_GotoY                                          ;A3A769;
    dw InstList_Mochtroid_TouchingSamus                                  ;A3A76B;


%anchor($A3A76D)
MocktroidShakeVelocityTable:
; Velocities for unused main AI function $A88F
; Indexed by [enemy $0FB0]
  .X:
    dw $0002,$0000,$FFFE,$0000                                           ;A3A76D;
  .Y:
    dw $0000,$FFFE,$0000,$0002                                           ;A3A775;

%anchor($A3A77D)
InitAI_Mochtroid:
    LDX.W $0E54                                                          ;A3A77D;
    LDA.W #$0002                                                         ;A3A780;
    STA.W $0F9A,X                                                        ;A3A783;
    LDA.W #InstList_Mochtroid_NotTouchingSamus                           ;A3A786;
    JSR.W SetMochtroidInstList                                           ;A3A789;
    STZ.W $0FB2,X                                                        ;A3A78C;
    RTL                                                                  ;A3A78F;


%anchor($A3A790)
MainAI_Mochtroid:
    LDX.W $0E54                                                          ;A3A790;
    LDA.W $0FB2,X                                                        ;A3A793;
    ASL A                                                                ;A3A796;
    TAX                                                                  ;A3A797;
    PHX                                                                  ;A3A798;
    LDX.W $0E54                                                          ;A3A799;
    STZ.W $0FB2,X                                                        ;A3A79C;
    PLX                                                                  ;A3A79F;
    JSR.W (.pointers,X)                                                  ;A3A7A0;
    RTL                                                                  ;A3A7A3;


.pointers:
    dw Function_Mochtroid_0_NotTouchingSamus                             ;A3A7A4;
    dw Function_Mochtroid_1_TouchingSamus                                ;A3A7A6;
    dw UNUSED_Function_Mochtroid_2_Shaking_A3A88F                        ;A3A7A8;

%anchor($A3A7AA)
Function_Mochtroid_0_NotTouchingSamus:
    LDX.W $0E54                                                          ;A3A7AA;
    STZ.B $12                                                            ;A3A7AD;
    STZ.B $14                                                            ;A3A7AF;
    LDA.W $0F7E,X                                                        ;A3A7B1;
    SEC                                                                  ;A3A7B4;
    SBC.W $0AFA                                                          ;A3A7B5;
    LSR A                                                                ;A3A7B8;
    LSR A                                                                ;A3A7B9;
    STA.B $13                                                            ;A3A7BA;
    AND.W #$2000                                                         ;A3A7BC;
    BEQ +                                                                ;A3A7BF;
    LDA.B $14                                                            ;A3A7C1;
    ORA.W #$FFC0                                                         ;A3A7C3;
    STA.B $14                                                            ;A3A7C6;

  + LDA.W $0FAC,X                                                        ;A3A7C8;
    SEC                                                                  ;A3A7CB;
    SBC.B $12                                                            ;A3A7CC;
    STA.W $0FAC,X                                                        ;A3A7CE;
    LDA.W $0FAE,X                                                        ;A3A7D1;
    SBC.B $14                                                            ;A3A7D4;
    STA.W $0FAE,X                                                        ;A3A7D6;
    BMI .negativeY                                                       ;A3A7D9;
    CMP.W #$0003                                                         ;A3A7DB;
    BCC +                                                                ;A3A7DE;
    LDA.W #$0003                                                         ;A3A7E0;
    BRA .storeYVelocity                                                  ;A3A7E3;


.negativeY:
    CMP.W #$FFFD                                                         ;A3A7E5;
    BCS +                                                                ;A3A7E8;
    LDA.W #$FFFD                                                         ;A3A7EA;

.storeYVelocity:
    STA.W $0FAE,X                                                        ;A3A7ED;
    STZ.W $0FAC,X                                                        ;A3A7F0;

  + LDA.W $0FAC,X                                                        ;A3A7F3;
    BNE +                                                                ;A3A7F6;
    LDA.W $0FAE,X                                                        ;A3A7F8;
    BNE +                                                                ;A3A7FB;
    STZ.W $0FAC,X                                                        ;A3A7FD;
    STZ.W $0FAE,X                                                        ;A3A800;

  + LDA.W $0FAC,X                                                        ;A3A803;
    STA.B $12                                                            ;A3A806;
    LDA.W $0FAE,X                                                        ;A3A808;
    STA.B $14                                                            ;A3A80B;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3A80D;
    BCC .notCollidedWithBlock                                            ;A3A811;
    STZ.W $0FAC,X                                                        ;A3A813;
    STZ.W $0FAE,X                                                        ;A3A816;

.notCollidedWithBlock:
    LDX.W $0E54                                                          ;A3A819;
    STZ.B $12                                                            ;A3A81C;
    STZ.B $14                                                            ;A3A81E;
    LDA.W $0F7A,X                                                        ;A3A820;
    SEC                                                                  ;A3A823;
    SBC.W $0AF6                                                          ;A3A824;
    LSR A                                                                ;A3A827;
    LSR A                                                                ;A3A828;
    STA.B $13                                                            ;A3A829;
    AND.W #$2000                                                         ;A3A82B;
    BEQ +                                                                ;A3A82E;
    LDA.B $14                                                            ;A3A830;
    ORA.W #$FFC0                                                         ;A3A832;
    STA.B $14                                                            ;A3A835;

  + LDA.W $0FA8,X                                                        ;A3A837;
    SEC                                                                  ;A3A83A;
    SBC.B $12                                                            ;A3A83B;
    STA.W $0FA8,X                                                        ;A3A83D;
    LDA.W $0FAA,X                                                        ;A3A840;
    SBC.B $14                                                            ;A3A843;
    STA.W $0FAA,X                                                        ;A3A845;
    BMI .negativeX                                                       ;A3A848;
    CMP.W #$0003                                                         ;A3A84A;
    BCC +                                                                ;A3A84D;
    LDA.W #$0003                                                         ;A3A84F;
    BRA .storeXVelocity                                                  ;A3A852;


.negativeX:
    CMP.W #$FFFD                                                         ;A3A854;
    BCS +                                                                ;A3A857;
    LDA.W #$FFFD                                                         ;A3A859;

.storeXVelocity:
    STA.W $0FAA,X                                                        ;A3A85C;
    STZ.W $0FA8,X                                                        ;A3A85F;

  + LDA.W $0FA8,X                                                        ;A3A862;
    BNE +                                                                ;A3A865;
    LDA.W $0FAA,X                                                        ;A3A867;
    BNE +                                                                ;A3A86A;
    STZ.W $0FA8,X                                                        ;A3A86C;
    STZ.W $0FAA,X                                                        ;A3A86F;

  + LDA.W $0FA8,X                                                        ;A3A872;
    STA.B $12                                                            ;A3A875;
    LDA.W $0FAA,X                                                        ;A3A877;
    STA.B $14                                                            ;A3A87A;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3A87C;
    BCC .noBlockCollision                                                ;A3A880;
    STZ.W $0FA8,X                                                        ;A3A882;
    STZ.W $0FAA,X                                                        ;A3A885;

.noBlockCollision:
    LDA.W #InstList_Mochtroid_NotTouchingSamus                           ;A3A888;
    JSR.W SetMochtroidInstList                                           ;A3A88B;
    RTS                                                                  ;A3A88E;


%anchor($A3A88F)
UNUSED_Function_Mochtroid_2_Shaking_A3A88F:
    LDX.W $0E54                                                          ;A3A88F;
    LDA.W $0FB0,X                                                        ;A3A892;
    AND.W #$0006                                                         ;A3A895;
    TAY                                                                  ;A3A898;
    LDA.W $0F7A,X                                                        ;A3A899;
    CLC                                                                  ;A3A89C;
    ADC.W MocktroidShakeVelocityTable_X,Y                                ;A3A89D;
    STA.W $0F7A,X                                                        ;A3A8A0;
    LDA.W $0F7E,X                                                        ;A3A8A3;
    CLC                                                                  ;A3A8A6;
    ADC.W MocktroidShakeVelocityTable_Y,Y                                ;A3A8A7;
    STA.W $0F7E,X                                                        ;A3A8AA;
    STZ.W $0FA8,X                                                        ;A3A8AD;
    STZ.W $0FAA,X                                                        ;A3A8B0;
    STZ.W $0FAC,X                                                        ;A3A8B3;
    STZ.W $0FAE,X                                                        ;A3A8B6;
    DEC.W $0FB0,X                                                        ;A3A8B9;
    BNE .shaking                                                         ;A3A8BC;
    STZ.W $0FB2,X                                                        ;A3A8BE;

.shaking:
    LDA.W #InstList_Mochtroid_NotTouchingSamus                           ;A3A8C1;
    JSR.W SetMochtroidInstList                                           ;A3A8C4;
    RTS                                                                  ;A3A8C7;


%anchor($A3A8C8)
Function_Mochtroid_1_TouchingSamus:
    LDX.W $0E54                                                          ;A3A8C8;
    LDA.W $0F7A,X                                                        ;A3A8CB;
    CMP.W $0AF6                                                          ;A3A8CE;
    BEQ .centeredX                                                       ;A3A8D1;
    BPL .moveLeft                                                        ;A3A8D3;
    BMI .moveRight                                                       ;A3A8D5;

.centeredX:
    STZ.W $0FA8,X                                                        ;A3A8D7;
    STZ.W $0FAA,X                                                        ;A3A8DA;
    BRA .moveX                                                           ;A3A8DD;


.moveLeft:
    STZ.W $0FA8,X                                                        ;A3A8DF;
    LDA.W #$FFFF                                                         ;A3A8E2;
    STA.W $0FAA,X                                                        ;A3A8E5;
    BRA .moveX                                                           ;A3A8E8;


.moveRight:
    STZ.W $0FA8,X                                                        ;A3A8EA;
    LDA.W #$0001                                                         ;A3A8ED;
    STA.W $0FAA,X                                                        ;A3A8F0;
    BRA .moveX                                                           ;A3A8F3;


.moveX:
    LDA.W $0FA8,X                                                        ;A3A8F5;
    STA.B $12                                                            ;A3A8F8;
    LDA.W $0FAA,X                                                        ;A3A8FA;
    STA.B $14                                                            ;A3A8FD;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3A8FF;
    LDA.W $0F7E,X                                                        ;A3A903;
    CMP.W $0AFA                                                          ;A3A906;
    BEQ .centeredY                                                       ;A3A909;
    BPL .moveUp                                                          ;A3A90B;
    BMI .moveDown                                                        ;A3A90D;

.centeredY:
    STZ.W $0FAC,X                                                        ;A3A90F;
    STZ.W $0FAE,X                                                        ;A3A912;
    BRA .moveY                                                           ;A3A915;


.moveUp:
    STZ.W $0FAC,X                                                        ;A3A917;
    LDA.W #$FFFF                                                         ;A3A91A;
    STA.W $0FAE,X                                                        ;A3A91D;
    BRA .moveY                                                           ;A3A920;


.moveDown:
    STZ.W $0FAC,X                                                        ;A3A922;
    LDA.W #$0001                                                         ;A3A925;
    STA.W $0FAE,X                                                        ;A3A928;
    BRA .moveY                                                           ;A3A92B;


.moveY:
    LDA.W $0FAC,X                                                        ;A3A92D;
    STA.B $12                                                            ;A3A930;
    LDA.W $0FAE,X                                                        ;A3A932;
    STA.B $14                                                            ;A3A935;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3A937;
    RTS                                                                  ;A3A93B;


%anchor($A3A93C)
SetMochtroidInstList:
    CMP.L $7E7802,X                                                      ;A3A93C;
    BEQ .return                                                          ;A3A940;
    STA.L $7E7802,X                                                      ;A3A942;
    STA.W $0F92,X                                                        ;A3A946;
    LDA.W #$0001                                                         ;A3A949;
    STA.W $0F94,X                                                        ;A3A94C;
    STZ.W $0F90,X                                                        ;A3A94F;

.return:
    RTS                                                                  ;A3A952;


%anchor($A3A953)
EnemyTouch_Mochtroid:
    LDX.W $0E54                                                          ;A3A953;
    LDA.W #$0001                                                         ;A3A956;
    STA.W $0FB2,X                                                        ;A3A959;
    LDA.W #InstList_Mochtroid_TouchingSamus                              ;A3A95C;
    JSR.W SetMochtroidInstList                                           ;A3A95F;
    LDA.L $7E8000,X                                                      ;A3A962;
    INC A                                                                ;A3A966;
    STA.L $7E8000,X                                                      ;A3A967;
    LDA.W $0A6E                                                          ;A3A96B;
    BNE .damage                                                          ;A3A96E;
    LDA.W $0E44                                                          ;A3A970;
    AND.W #$0007                                                         ;A3A973;
    CMP.W #$0007                                                         ;A3A976;
    BNE .skipSFX                                                         ;A3A979;
    LDA.W $09C2                                                          ;A3A97B;
    CMP.W #$001E                                                         ;A3A97E;
    BMI .skipSFX                                                         ;A3A981;
    LDA.W #$002D                                                         ;A3A983;
    JSL.L QueueSound_Lib3_Max6                                           ;A3A986;

.skipSFX:
    LDA.L $7E8000,X                                                      ;A3A98A;
    CMP.W #$0050                                                         ;A3A98E;
    BMI .return                                                          ;A3A991;
    LDA.W #$0000                                                         ;A3A993;
    STA.L $7E8000,X                                                      ;A3A996;

.damage:
    JSL.L CommonA3_NormalEnemyTouchAI                                    ;A3A99A;
    LDA.W #$0000                                                         ;A3A99E;
    STA.W $18A8                                                          ;A3A9A1;
    STA.W $18AA                                                          ;A3A9A4;

.return:
    RTL                                                                  ;A3A9A7;


%anchor($A3A9A8)
EnemyShot_Mochtroid:
    LDX.W $0E54                                                          ;A3A9A8;
    JSL.L CommonA3_NormalEnemyShotAI                                     ;A3A9AB;
    RTL                                                                  ;A3A9AF;


%anchor($A3A9B0)
Spritemap_Mochtroid_NotTouchingSamus_0:
    dw $0006                                                             ;A3A9B0;
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $06, $04, 0, 1, 2, 0, $11C)
    %spritemapEntry(0, $1FE, $04, 0, 1, 2, 0, $11D)
    %spritemapEntry(0, $1FA, $04, 0, 0, 2, 0, $11D)
    %spritemapEntry(0, $1F2, $04, 0, 0, 2, 0, $11C)

%anchor($A3A9D0)
Spritemap_Mochtroid_NotTouchingSamus_1:
    dw $0006                                                             ;A3A9D0;
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 0, $102)
    %spritemapEntry(0, $07, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1FF, $04, 0, 1, 2, 0, $10D)
    %spritemapEntry(0, $1F9, $04, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F1, $04, 0, 0, 2, 0, $10C)

%anchor($A3A9F0)
Spritemap_Mochtroid_NotTouchingSamus_2:
    dw $0004                                                             ;A3A9F0;
    %spritemapEntry(1, $00, $F2, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F2, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $1F8, $02, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $02, 0, 0, 2, 0, $10E)

%anchor($A3AA06)
Spritemap_Mochtroid_TouchingSamus_0:
    dw $0004                                                             ;A3AA06;
    %spritemapEntry(1, $1F9, $02, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $00, $F2, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F0, $F2, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1F7, $02, 0, 0, 2, 0, $10E)

%anchor($A3AA1C)
Spritemap_Mochtroid_TouchingSamus_1:
    dw $0004                                                             ;A3AA1C;
    %spritemapEntry(1, $1F0, $F1, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1FA, $01, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F6, $01, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $00, $F1, 0, 1, 2, 0, $108)

%anchor($A3AA32)
Spritemap_Mochtroid_TouchingSamus_2:
    dw $0004                                                             ;A3AA32;
    %spritemapEntry(1, $1F9, $02, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F7, $02, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $00, $F2, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F0, $F2, 0, 0, 2, 0, $10A)


%anchor($A3AA48)
Palette_Sidehopper:
    dw $3800,$57FF,$42F7,$0D4A,$0063,$4F5A,$36B5,$2610                   ;A3AA48;
    dw $1DCE,$4EDA,$3A35,$2990,$14EB,$5FE0,$32A0,$1940                   ;A3AA58;

%anchor($A3AA68)
Instruction_Sidehopper_QueueSoundInY_Lib2_Max3:
    PHY                                                                  ;A3AA68;
    PHX                                                                  ;A3AA69;
    LDA.W $0000,Y                                                        ;A3AA6A;
    JSL.L QueueSound_Lib2_Max3                                           ;A3AA6D;
    PLX                                                                  ;A3AA71;
    PLY                                                                  ;A3AA72;
    INY                                                                  ;A3AA73;
    INY                                                                  ;A3AA74;
    RTL                                                                  ;A3AA75;


%anchor($A3AA76)
InstList_Sidehopper_Hopping_UpsideUp:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3AA76;
    dw Instruction_Sidehopper_QueueSoundInY_Lib2_Max3,$005D              ;A3AA78;
    dw $0001,Spritemap_Sidehopper_2                                      ;A3AA7A;
    dw Instruction_Common_Sleep                                          ;A3AA80;

%anchor($A3AA82)
InstList_Sidehopper_Landed_UpsideUp:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3AA82;
    dw Instruction_Sidehopper_QueueSoundInY_Lib2_Max3,$005E              ;A3AA84;
    dw $0002,Spritemap_Sidehopper_0                                      ;A3AA86;
    dw $0005,Spritemap_Sidehopper_1                                      ;A3AA8C;
    dw $0002,Spritemap_Sidehopper_0                                      ;A3AA90;
    dw $0003,Spritemap_Sidehopper_1                                      ;A3AA94;
    dw Instruction_Hopper_ReadyToHop                                     ;A3AA98;
    dw Instruction_Common_Sleep                                          ;A3AA9A;

%anchor($A3AA9C)
InstList_Sidehopper_Hopping_UpsideDown:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3AA9C;
    dw Instruction_Sidehopper_QueueSoundInY_Lib2_Max3,$005D              ;A3AA9E;
    dw $0001,Spritemap_Sidehopper_5                                      ;A3AAA0;
    dw Instruction_Common_Sleep                                          ;A3AAA6;

%anchor($A3AAA8)
InstList_Sidehopper_Landed_UpsideDown:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3AAA8;
    dw Instruction_Sidehopper_QueueSoundInY_Lib2_Max3,$005E              ;A3AAAA;
    dw $0002,Spritemap_Sidehopper_3                                      ;A3AAAC;
    dw $0005,Spritemap_Sidehopper_4                                      ;A3AAB2;
    dw $0002,Spritemap_Sidehopper_3                                      ;A3AAB6;
    dw $0003,Spritemap_Sidehopper_4                                      ;A3AABA;
    dw Instruction_Hopper_ReadyToHop                                     ;A3AABE;
    dw Instruction_Common_Sleep                                          ;A3AAC0;

; Instruction list pointers. Indexed by [$A0:002A + [enemy ID]] * 2
%anchor($A3AAC2)
InstListPointers_Sidehopper_Landed_UpsideUp:
    dw InstList_Sidehopper_Landed_UpsideUp                               ;A3AAC2;
    dw InstList_SidehopperLarge_Landed_UpsideUp                          ;A3AAC4;
    dw InstList_DessgeegaLarge_Landed_UpsideUp                           ;A3AAC6;
    dw InstList_Dessgeega_Landed_UpsideUp                                ;A3AAC8;

%anchor($A3AACA)
InstListPointers_Sidehopper_Landed_UpsideDown:
    dw InstList_Sidehopper_Landed_UpsideDown                             ;A3AACA;
    dw InstList_SidehopperLarge_Landed_UpsideDown                        ;A3AACC;
    dw InstList_DessgeegaLarge_Landed_UpsideDown                         ;A3AACE;
    dw InstList_Dessgeega_Landed_UpsideDown                              ;A3AAD0;

%anchor($A3AAD2)
InstListPointers_Sidehopper_Hopping_UpsideUp:
    dw InstList_Sidehopper_Hopping_UpsideUp                              ;A3AAD2;
    dw InstList_SidehopperLarge_Hopping_UpsideUp                         ;A3AAD4;
    dw InstList_DessgeegaLarge_Hopping_UpsideUp                          ;A3AAD6;
    dw InstList_Dessgeega_Hopping_UpsideUp                               ;A3AAD8;

%anchor($A3AADA)
InstListPointers_Sidehopper_Hopping_UpsideDown:
    dw InstList_Sidehopper_Hopping_UpsideDown                            ;A3AADA;
    dw InstList_SidehopperLarge_Hopping_UpsideDown                       ;A3AADC;
    dw InstList_DessgeegaLarge_Hopping_UpsideDown                        ;A3AADE;
    dw InstList_Dessgeega_Hopping_UpsideDown                             ;A3AAE0;

%anchor($A3AAE2)
HopFunctionPointers_Sidehopper:
    dw Function_Hopper_SmallHop                                          ;A3AAE2;
    dw Function_Hopper_BigHop                                            ;A3AAE4;

%anchor($A3AAE6)
HopTable_Small:
; Hop table. Indexed by [enemy $7E:800A]
;       __________ Sidehopper
;      |       ___ Desgeega / super-sidehopper / super-desgeega
;      |      |
  .YSpeedTableIndexDelta:                                                ;A3AAE6;
    dw $0003,$0003 ; Small hop - Y speed table index delta
  .XSpeed:                                                               ;A3AAEA;
    dw $0003,$0003 ; Small hop - X speed
  .JumpHeight:                                                           ;A3AAEE;
    dw $1000,$1000 ; Small hop - jump height

%anchor($A3AAF2)
HopTable_Big:
  .YSpeedTableIndexDelta:                                                ;A3AAF2;
    dw $0004,$0004 ; Big hop - Y speed table index delta
  .XSpeed:                                                               ;A3AAF6;
    dw $0003,$0003 ; Big hop - X speed
  .JumpHeight:                                                           ;A3AAFA;
    dw $3000,$3000 ; Big hop - jump height


%anchor($A3AAFE)
Instruction_Hopper_ReadyToHop:
    LDX.W $0E54                                                          ;A3AAFE;
    LDA.W #$0001                                                         ;A3AB01;
    STA.L $7E7808,X                                                      ;A3AB04;
    RTL                                                                  ;A3AB08;


%anchor($A3AB09)
InitAI_Hopper:
    LDX.W $0E54                                                          ;A3AB09;
    LDA.W #$0025                                                         ;A3AB0C;
    STA.W $05E5                                                          ;A3AB0F;
    JSL.L GenerateRandomNumber                                           ;A3AB12;
    LDA.W #$0000                                                         ;A3AB16;
    STA.L $7E7806,X                                                      ;A3AB19;
    STA.L $7E7808,X                                                      ;A3AB1D;
    STA.L $7E780A,X                                                      ;A3AB21;
    LDA.W $0F78,X                                                        ;A3AB25;
    TAX                                                                  ;A3AB28;
    LDA.L $A0002A,X                                                      ;A3AB29;
    ASL A                                                                ;A3AB2D;
    LDX.W $0E54                                                          ;A3AB2E;
    STA.L $7E780C,X                                                      ;A3AB31;
    LDA.W $0FB4,X                                                        ;A3AB35;
    BNE .upsideDown                                                      ;A3AB38;
    LDA.L $7E780C,X                                                      ;A3AB3A;
    TAY                                                                  ;A3AB3E;
    LDA.W InstListPointers_Sidehopper_Landed_UpsideUp,Y                  ;A3AB3F;
    BRA +                                                                ;A3AB42;


.upsideDown:
    LDA.L $7E780C,X                                                      ;A3AB44;
    TAY                                                                  ;A3AB48;
    LDA.W InstListPointers_Sidehopper_Landed_UpsideDown,Y                ;A3AB49;

  + STA.L $7E7800,X                                                      ;A3AB4C;
    JSR.W SetSidehopperInstList                                          ;A3AB50;
    LDA.W $0F78,X                                                        ;A3AB53;
    TAX                                                                  ;A3AB56;
    LDA.L $A0002A,X                                                      ;A3AB57;
    BEQ .sidehopper                                                      ;A3AB5B;
    LDA.W #$0002                                                         ;A3AB5D;
    LDX.W $0E54                                                          ;A3AB60;
    STA.L $7E780A,X                                                      ;A3AB63;

.sidehopper:
    LDX.W $0E54                                                          ;A3AB67;
    LDA.L $7E780A,X                                                      ;A3AB6A;
    TAY                                                                  ;A3AB6E;
    LDA.W HopTable_Small_JumpHeight,Y                                    ;A3AB6F;
    STA.B $16                                                            ;A3AB72;
    LDA.W HopTable_Small_YSpeedTableIndexDelta,Y                         ;A3AB74;
    STA.B $18                                                            ;A3AB77;
    JSR.W Hoppers_CalculateInitialHopSpeed                               ;A3AB79;
    STA.L $7E7802,X                                                      ;A3AB7C;
    LDA.L $7E780A,X                                                      ;A3AB80;
    TAY                                                                  ;A3AB84;
    LDA.W HopTable_Big_JumpHeight,Y                                      ;A3AB85;
    STA.B $16                                                            ;A3AB88;
    LDA.W HopTable_Big_YSpeedTableIndexDelta,Y                           ;A3AB8A;
    STA.B $18                                                            ;A3AB8D;
    JSR.W Hoppers_CalculateInitialHopSpeed                               ;A3AB8F;
    STA.L $7E7804,X                                                      ;A3AB92;
    LDA.W #Function_Hopper_Hop                                           ;A3AB96;
    STA.W $0FAA,X                                                        ;A3AB99;
    RTL                                                                  ;A3AB9C;


%anchor($A3AB9D)
Hoppers_CalculateInitialHopSpeed:
    STZ.B $12                                                            ;A3AB9D;
    STZ.B $14                                                            ;A3AB9F;

.loop:
    LDA.B $12                                                            ;A3ABA1;
    CLC                                                                  ;A3ABA3;
    ADC.B $18                                                            ;A3ABA4;
    STA.B $12                                                            ;A3ABA6;
    ASL A                                                                ;A3ABA8;
    ASL A                                                                ;A3ABA9;
    ASL A                                                                ;A3ABAA;
    TAY                                                                  ;A3ABAB;
    LDA.B $14                                                            ;A3ABAC;
    CLC                                                                  ;A3ABAE;
    ADC.W CommonEnemySpeeds_QuadraticallyIncreasing+1,Y                  ;A3ABAF;
    STA.B $14                                                            ;A3ABB2;
    CMP.B $16                                                            ;A3ABB4;
    BMI .loop                                                            ;A3ABB6;
    LDA.B $12                                                            ;A3ABB8;
    RTS                                                                  ;A3ABBA;


%anchor($A3ABBB)
SetSidehopperInstList:
    LDX.W $0E54                                                          ;A3ABBB;
    LDA.L $7E7800,X                                                      ;A3ABBE;
    STA.W $0F92,X                                                        ;A3ABC2;
    LDA.W #$0001                                                         ;A3ABC5;
    STA.W $0F94,X                                                        ;A3ABC8;
    STZ.W $0F90,X                                                        ;A3ABCB;
    RTS                                                                  ;A3ABCE;


%anchor($A3ABCF)
MainAI_Hopper:
    LDX.W $0E54                                                          ;A3ABCF;
    JSR.W ($0FAA,X)                                                      ;A3ABD2;
    RTL                                                                  ;A3ABD5;


%anchor($A3ABD6)
Function_Hopper_Hop:
    JSL.L GenerateRandomNumber                                           ;A3ABD6;
    AND.W #$0001                                                         ;A3ABDA;
    ASL A                                                                ;A3ABDD;
    TAY                                                                  ;A3ABDE;
    LDA.W HopFunctionPointers_Sidehopper,Y                               ;A3ABDF;
    STA.W $0FAA,X                                                        ;A3ABE2;
    RTS                                                                  ;A3ABE5;


%anchor($A3ABE6)
Function_Hopper_SmallHop:
    LDX.W $0E54                                                          ;A3ABE6;
    LDA.L $7E780A,X                                                      ;A3ABE9;
    TAY                                                                  ;A3ABED;
    LDA.W HopTable_Small_YSpeedTableIndexDelta,Y                         ;A3ABEE;
    STA.W $0FB0,X                                                        ;A3ABF1;
    LDA.W HopTable_Small_XSpeed,Y                                        ;A3ABF4;
    STA.W $0FAE,X                                                        ;A3ABF7;
    LDA.L $7E7802,X                                                      ;A3ABFA;
    STA.W $0FAC,X                                                        ;A3ABFE;
    LDA.W #Function_Hopper_Hop_UpsideUp                                  ;A3AC01;
    STA.W $0FAA,X                                                        ;A3AC04;
    LDA.W $0FB4,X                                                        ;A3AC07;
    BEQ .return                                                          ;A3AC0A;
    LDA.W #Function_Hopper_Hop_UpsideDown                                ;A3AC0C;
    STA.W $0FAA,X                                                        ;A3AC0F;

.return:
    RTS                                                                  ;A3AC12;


%anchor($A3AC13)
Function_Hopper_BigHop:
    LDX.W $0E54                                                          ;A3AC13;
    LDA.L $7E780A,X                                                      ;A3AC16;
    TAY                                                                  ;A3AC1A;
    LDA.W HopTable_Big_YSpeedTableIndexDelta,Y                           ;A3AC1B;
    STA.W $0FB0,X                                                        ;A3AC1E;
    LDA.W HopTable_Big_XSpeed,Y                                          ;A3AC21;
    STA.W $0FAE,X                                                        ;A3AC24;
    LDA.L $7E7804,X                                                      ;A3AC27;
    STA.W $0FAC,X                                                        ;A3AC2B;
    LDA.W #Function_Hopper_Hop_UpsideUp                                  ;A3AC2E;
    STA.W $0FAA,X                                                        ;A3AC31;
    LDA.W $0FB4,X                                                        ;A3AC34;
    BEQ .return                                                          ;A3AC37;
    LDA.W #Function_Hopper_Hop_UpsideDown                                ;A3AC39;
    STA.W $0FAA,X                                                        ;A3AC3C;

.return:
    RTS                                                                  ;A3AC3F;


%anchor($A3AC40)
Function_Hopper_Hop_UpsideUp:
    LDX.W $0E54                                                          ;A3AC40;
    LDA.W #Function_Hopper_HopBackwards_UpsideUp                         ;A3AC43;
    STA.W $0FAA,X                                                        ;A3AC46;
    JSL.L Get_SamusX_minus_EnemyX                                        ;A3AC49;
    BMI .return                                                          ;A3AC4D;
    LDA.W #Function_Hopper_HopForwards_UpsideUp                          ;A3AC4F;
    STA.W $0FAA,X                                                        ;A3AC52;

.return:
    RTS                                                                  ;A3AC55;


%anchor($A3AC56)
Function_Hopper_Hop_UpsideDown:
    LDX.W $0E54                                                          ;A3AC56;
    LDA.W #Function_Hopper_HopBackwards_UpsideDown                       ;A3AC59;
    STA.W $0FAA,X                                                        ;A3AC5C;
    JSL.L Get_SamusX_minus_EnemyX                                        ;A3AC5F;
    BMI .return                                                          ;A3AC63;
    LDA.W #Function_Hopper_HopForwards_UpsideDown                        ;A3AC65;
    STA.W $0FAA,X                                                        ;A3AC68;

.return:
    RTS                                                                  ;A3AC6B;


%anchor($A3AC6C)
Function_Hopper_HopBackwards_UpsideUp:
    LDX.W $0E54                                                          ;A3AC6C;
    LDA.W $0FAE,X                                                        ;A3AC6F;
    EOR.W #$FFFF                                                         ;A3AC72;
    INC A                                                                ;A3AC75;
    STA.W $0FAE,X                                                        ;A3AC76;
    LDA.L $7E780C,X                                                      ;A3AC79;
    TAY                                                                  ;A3AC7D;
    LDA.W InstListPointers_Sidehopper_Hopping_UpsideUp,Y                 ;A3AC7E;
    STA.L $7E7800,X                                                      ;A3AC81;
    JSR.W SetSidehopperInstList                                          ;A3AC85;
    LDA.W #Function_Hopper_Jumping_UpsideUp                              ;A3AC88;
    STA.W $0FAA,X                                                        ;A3AC8B;
    RTS                                                                  ;A3AC8E;


%anchor($A3AC8F)
Function_Hopper_HopForwards_UpsideUp:
    LDX.W $0E54                                                          ;A3AC8F;
    LDA.L $7E780C,X                                                      ;A3AC92;
    TAY                                                                  ;A3AC96;
    LDA.W InstListPointers_Sidehopper_Hopping_UpsideUp,Y                 ;A3AC97;
    STA.L $7E7800,X                                                      ;A3AC9A;
    JSR.W SetSidehopperInstList                                          ;A3AC9E;
    LDA.W #Function_Hopper_Jumping_UpsideUp_duplicate                    ;A3ACA1;
    STA.W $0FAA,X                                                        ;A3ACA4;
    RTS                                                                  ;A3ACA7;


%anchor($A3ACA8)
Function_Hopper_HopBackwards_UpsideDown:
    LDX.W $0E54                                                          ;A3ACA8;
    LDA.W $0FAE,X                                                        ;A3ACAB;
    EOR.W #$FFFF                                                         ;A3ACAE;
    INC A                                                                ;A3ACB1;
    STA.W $0FAE,X                                                        ;A3ACB2;
    LDA.L $7E780C,X                                                      ;A3ACB5;
    TAY                                                                  ;A3ACB9;
    LDA.W InstListPointers_Sidehopper_Hopping_UpsideDown,Y               ;A3ACBA;
    STA.L $7E7800,X                                                      ;A3ACBD;
    JSR.W SetSidehopperInstList                                          ;A3ACC1;
    LDA.W #Function_Hopper_Jumping_UpsideDown                            ;A3ACC4;
    STA.W $0FAA,X                                                        ;A3ACC7;
    RTS                                                                  ;A3ACCA;


%anchor($A3ACCB)
Function_Hopper_HopForwards_UpsideDown:
    LDX.W $0E54                                                          ;A3ACCB;
    LDA.L $7E780C,X                                                      ;A3ACCE;
    TAY                                                                  ;A3ACD2;
    LDA.W InstListPointers_Sidehopper_Hopping_UpsideDown,Y               ;A3ACD3;
    STA.L $7E7800,X                                                      ;A3ACD6;
    JSR.W SetSidehopperInstList                                          ;A3ACDA;
    LDA.W #Function_Hopper_Jumping_UpsideDown_duplicate                  ;A3ACDD;
    STA.W $0FAA,X                                                        ;A3ACE0;
    RTS                                                                  ;A3ACE3;


%anchor($A3ACE4)
Function_Hopper_Landed:
    LDX.W $0E54                                                          ;A3ACE4;
    LDA.L $7E780C,X                                                      ;A3ACE7;
    TAY                                                                  ;A3ACEB;
    LDA.W InstListPointers_Sidehopper_Landed_UpsideUp,Y                  ;A3ACEC;
    STA.L $7E7800,X                                                      ;A3ACEF;
    LDA.W $0FB4,X                                                        ;A3ACF3;
    BEQ .upsideDown                                                      ;A3ACF6;
    LDA.L $7E780C,X                                                      ;A3ACF8;
    TAY                                                                  ;A3ACFC;
    LDA.W InstListPointers_Sidehopper_Landed_UpsideDown,Y                ;A3ACFD;
    STA.L $7E7800,X                                                      ;A3AD00;

.upsideDown:
    JSR.W SetSidehopperInstList                                          ;A3AD04;
    LDA.W #Function_Hopper_WaitToHop                                     ;A3AD07;
    STA.W $0FAA,X                                                        ;A3AD0A;
    RTS                                                                  ;A3AD0D;


%anchor($A3AD0E)
Function_Hopper_Jumping_UpsideUp:
    LDX.W $0E54                                                          ;A3AD0E;
    LDA.L $7E7806,X                                                      ;A3AD11;
    BNE .falling                                                         ;A3AD15;
    JSR.W HopperMovement_Jumping_UpsideUp                                ;A3AD17;
    BRA .return                                                          ;A3AD1A;


.falling:
    JSR.W HopperMovement_Falling_UpsideUp                                ;A3AD1C;

.return:
    RTS                                                                  ;A3AD1F;


%anchor($A3AD20)
Function_Hopper_Jumping_UpsideUp_duplicate:
    LDX.W $0E54                                                          ;A3AD20;
    LDA.L $7E7806,X                                                      ;A3AD23;
    BNE .falling                                                         ;A3AD27;
    JSR.W HopperMovement_Jumping_UpsideUp                                ;A3AD29;
    BRA .return                                                          ;A3AD2C;


.falling:
    JSR.W HopperMovement_Falling_UpsideUp                                ;A3AD2E;

.return:
    RTS                                                                  ;A3AD31;


%anchor($A3AD32)
Function_Hopper_Jumping_UpsideDown:
    LDX.W $0E54                                                          ;A3AD32;
    LDA.L $7E7806,X                                                      ;A3AD35;
    BNE .falling                                                         ;A3AD39;
    JSR.W HopperMovement_Jumping_UpsideDown                              ;A3AD3B;
    BRA .return                                                          ;A3AD3E;


.falling:
    JSR.W HopperMovement_Falling_UpsideDown                              ;A3AD40;

.return:
    RTS                                                                  ;A3AD43;


%anchor($A3AD44)
Function_Hopper_Jumping_UpsideDown_duplicate:
    LDX.W $0E54                                                          ;A3AD44;
    LDA.L $7E7806,X                                                      ;A3AD47;
    BNE .falling                                                         ;A3AD4B;
    JSR.W HopperMovement_Jumping_UpsideDown                              ;A3AD4D;
    BRA .return                                                          ;A3AD50;


.falling:
    JSR.W HopperMovement_Falling_UpsideDown                              ;A3AD52;

.return:
    RTS                                                                  ;A3AD55;


%anchor($A3AD56)
Function_Hopper_WaitToHop:
    LDX.W $0E54                                                          ;A3AD56;
    LDA.L $7E7808,X                                                      ;A3AD59;
    BEQ .return                                                          ;A3AD5D;
    LDA.W #$0000                                                         ;A3AD5F;
    STA.L $7E7808,X                                                      ;A3AD62;
    LDA.W #Function_Hopper_Hop                                           ;A3AD66;
    STA.W $0FAA,X                                                        ;A3AD69;

.return:
    RTS                                                                  ;A3AD6C;


%anchor($A3AD6D)
HopperMovement_Jumping_UpsideUp:
    LDX.W $0E54                                                          ;A3AD6D;
    LDA.W $0FAC,X                                                        ;A3AD70;
    ASL A                                                                ;A3AD73;
    ASL A                                                                ;A3AD74;
    ASL A                                                                ;A3AD75;
    TAY                                                                  ;A3AD76;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+6,Y                  ;A3AD77;
    STA.B $14                                                            ;A3AD7A;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+4,Y                  ;A3AD7C;
    STA.B $12                                                            ;A3AD7F;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3AD81;
    BCC .notCollidedWithBlock                                            ;A3AD85;
    LDA.W $0FAE,X                                                        ;A3AD87;
    EOR.W #$FFFF                                                         ;A3AD8A;
    INC A                                                                ;A3AD8D;
    STA.W $0FAE,X                                                        ;A3AD8E;
    LDA.W #$0001                                                         ;A3AD91;
    STA.L $7E7806,X                                                      ;A3AD94;
    BRA .return                                                          ;A3AD98;


.notCollidedWithBlock:
    LDA.W $0FAE,X                                                        ;A3AD9A;
    STA.B $14                                                            ;A3AD9D;
    STZ.B $12                                                            ;A3AD9F;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3ADA1;
    BCC .notCollidedWithWall                                             ;A3ADA5;
    LDA.W $0FAE,X                                                        ;A3ADA7;
    EOR.W #$FFFF                                                         ;A3ADAA;
    INC A                                                                ;A3ADAD;
    STA.W $0FAE,X                                                        ;A3ADAE;
    LDA.W #$0001                                                         ;A3ADB1;
    STA.L $7E7806,X                                                      ;A3ADB4;
    BRA .return                                                          ;A3ADB8;


.notCollidedWithWall:
    LDA.W $0FAC,X                                                        ;A3ADBA;
    SEC                                                                  ;A3ADBD;
    SBC.W $0FB0,X                                                        ;A3ADBE;
    STA.W $0FAC,X                                                        ;A3ADC1;
    BPL .return                                                          ;A3ADC4;
    LDA.W #$0001                                                         ;A3ADC6;
    STA.L $7E7806,X                                                      ;A3ADC9;
    LDA.W #$0000                                                         ;A3ADCD;
    STA.W $0FAC,X                                                        ;A3ADD0;

.return:
    RTS                                                                  ;A3ADD3;


%anchor($A3ADD4)
HopperMovement_Falling_UpsideUp:
    LDX.W $0E54                                                          ;A3ADD4;
    LDA.W $0FAC,X                                                        ;A3ADD7;
    ASL A                                                                ;A3ADDA;
    ASL A                                                                ;A3ADDB;
    ASL A                                                                ;A3ADDC;
    TAY                                                                  ;A3ADDD;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+2,Y                  ;A3ADDE;
    STA.B $14                                                            ;A3ADE1;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing,Y                    ;A3ADE3;
    STA.B $12                                                            ;A3ADE6;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3ADE8;
    BCC .notCollidedWithBlock                                            ;A3ADEC;
    LDA.W #$0000                                                         ;A3ADEE;
    STA.L $7E7806,X                                                      ;A3ADF1;
    LDA.W #Function_Hopper_Landed                                        ;A3ADF5;
    STA.W $0FAA,X                                                        ;A3ADF8;
    BRA .return                                                          ;A3ADFB;


.notCollidedWithBlock:
    LDA.W $0FAE,X                                                        ;A3ADFD;
    STA.B $14                                                            ;A3AE00;
    STZ.B $12                                                            ;A3AE02;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3AE04;
    BCC .notCollidedWithWall                                             ;A3AE08;
    LDA.W $0FAE,X                                                        ;A3AE0A;
    EOR.W #$FFFF                                                         ;A3AE0D;
    INC A                                                                ;A3AE10;
    STA.W $0FAE,X                                                        ;A3AE11;

.notCollidedWithWall:
    LDA.W $0FAC,X                                                        ;A3AE14;
    CLC                                                                  ;A3AE17;
    ADC.W $0FB0,X                                                        ;A3AE18;
    CMP.W #$0040                                                         ;A3AE1B;
    BMI +                                                                ;A3AE1E;
    LDA.W #$0040                                                         ;A3AE20;

  + STA.W $0FAC,X                                                        ;A3AE23;

.return:
    RTS                                                                  ;A3AE26;


%anchor($A3AE27)
HopperMovement_Jumping_UpsideDown:
    LDX.W $0E54                                                          ;A3AE27;
    LDA.W $0FAC,X                                                        ;A3AE2A;
    ASL A                                                                ;A3AE2D;
    ASL A                                                                ;A3AE2E;
    ASL A                                                                ;A3AE2F;
    TAY                                                                  ;A3AE30;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+2,Y                  ;A3AE31;
    STA.B $14                                                            ;A3AE34;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing,Y                    ;A3AE36;
    STA.B $12                                                            ;A3AE39;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3AE3B;
    BCC .notCollidedWithBlock                                            ;A3AE3F;
    LDA.W $0FAE,X                                                        ;A3AE41;
    EOR.W #$FFFF                                                         ;A3AE44;
    INC A                                                                ;A3AE47;
    STA.W $0FAE,X                                                        ;A3AE48;
    LDA.W #$0001                                                         ;A3AE4B;
    STA.L $7E7806,X                                                      ;A3AE4E;
    BRA .return                                                          ;A3AE52;


.notCollidedWithBlock:
    LDA.W $0FAE,X                                                        ;A3AE54;
    STA.B $14                                                            ;A3AE57;
    STZ.B $12                                                            ;A3AE59;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3AE5B;
    BCC .notCollidedWithWall                                             ;A3AE5F;
    LDA.W $0FAE,X                                                        ;A3AE61;
    EOR.W #$FFFF                                                         ;A3AE64;
    INC A                                                                ;A3AE67;
    STA.W $0FAE,X                                                        ;A3AE68;
    LDA.W #$0001                                                         ;A3AE6B;
    STA.L $7E7806,X                                                      ;A3AE6E;
    BRA .return                                                          ;A3AE72;


.notCollidedWithWall:
    LDA.W $0FAC,X                                                        ;A3AE74;
    SEC                                                                  ;A3AE77;
    SBC.W $0FB0,X                                                        ;A3AE78;
    STA.W $0FAC,X                                                        ;A3AE7B;
    BPL .return                                                          ;A3AE7E;
    LDA.W #$0001                                                         ;A3AE80;
    STA.L $7E7806,X                                                      ;A3AE83;
    LDA.W #$0000                                                         ;A3AE87;
    STA.W $0FAC,X                                                        ;A3AE8A;

.return:
    RTS                                                                  ;A3AE8D;


%anchor($A3AE8E)
HopperMovement_Falling_UpsideDown:
    LDX.W $0E54                                                          ;A3AE8E;
    LDA.W $0FAC,X                                                        ;A3AE91;
    ASL A                                                                ;A3AE94;
    ASL A                                                                ;A3AE95;
    ASL A                                                                ;A3AE96;
    TAY                                                                  ;A3AE97;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+6,Y                  ;A3AE98;
    STA.B $14                                                            ;A3AE9B;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+4,Y                  ;A3AE9D;
    STA.B $12                                                            ;A3AEA0;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3AEA2;
    BCC .notCollidedWithBlock                                            ;A3AEA6;
    LDA.W #$0000                                                         ;A3AEA8;
    STA.L $7E7806,X                                                      ;A3AEAB;
    LDA.W #Function_Hopper_Landed                                        ;A3AEAF;
    STA.W $0FAA,X                                                        ;A3AEB2;
    BRA .return                                                          ;A3AEB5;


.notCollidedWithBlock:
    LDA.W $0FAE,X                                                        ;A3AEB7;
    STA.B $14                                                            ;A3AEBA;
    STZ.B $12                                                            ;A3AEBC;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3AEBE;
    BCC .notCollidedWithWall                                             ;A3AEC2;
    LDA.W $0FAE,X                                                        ;A3AEC4;
    EOR.W #$FFFF                                                         ;A3AEC7;
    INC A                                                                ;A3AECA;
    STA.W $0FAE,X                                                        ;A3AECB;

.notCollidedWithWall:
    LDA.W $0FAC,X                                                        ;A3AECE;
    CLC                                                                  ;A3AED1;
    ADC.W $0FB0,X                                                        ;A3AED2;
    CMP.W #$0040                                                         ;A3AED5;
    BMI +                                                                ;A3AED8;
    LDA.W #$0040                                                         ;A3AEDA;

  + STA.W $0FAC,X                                                        ;A3AEDD;

.return:
    RTS                                                                  ;A3AEE0;


%anchor($A3AEE1)
RTL_A3AEE1:
    RTL                                                                  ;A3AEE1;


%anchor($A3AEE2)
RTL_A3AEE2:
    RTL                                                                  ;A3AEE2;


%anchor($A3AEE3)
Spritemap_Sidehopper_0:
    dw $0005                                                             ;A3AEE3;
    %spritemapEntry(1, $1F8, $F3, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $04, $EC, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $04, $FC, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1EC, $EC, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1EC, $FC, 0, 0, 2, 0, $104)

%anchor($A3AEFE)
Spritemap_Sidehopper_1:
    dw $0005                                                             ;A3AEFE;
    %spritemapEntry(1, $1F8, $F5, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $04, $EC, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1EC, $EC, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $04, $FC, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1EC, $FC, 0, 0, 2, 0, $108)

%anchor($A3AF19)
Spritemap_Sidehopper_2:
    dw $0005                                                             ;A3AF19;
    %spritemapEntry(1, $1F8, $EF, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $04, $04, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $04, $F4, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1EC, $04, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1EC, $F4, 0, 0, 2, 0, $10C)

%anchor($A3AF34)
Spritemap_Sidehopper_3:
    dw $0005                                                             ;A3AF34;
    %spritemapEntry(1, $1F8, $FD, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $04, $04, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $04, $F4, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1EC, $04, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $1EC, $F4, 1, 0, 2, 0, $104)

%anchor($A3AF4F)
Spritemap_Sidehopper_4:
    dw $0005                                                             ;A3AF4F;
    %spritemapEntry(1, $1F8, $FB, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $04, $04, 1, 1, 2, 0, $10A)
    %spritemapEntry(1, $1EC, $04, 1, 0, 2, 0, $10A)
    %spritemapEntry(1, $04, $F4, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $1EC, $F4, 1, 0, 2, 0, $108)

%anchor($A3AF6A)
Spritemap_Sidehopper_5:
    dw $0005                                                             ;A3AF6A;
    %spritemapEntry(1, $1F8, $01, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $04, $EC, 1, 1, 2, 0, $10E)
    %spritemapEntry(1, $04, $FC, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1EC, $EC, 1, 0, 2, 0, $10E)
    %spritemapEntry(1, $1EC, $FC, 1, 0, 2, 0, $10C)


%anchor($A3AF85)
Palette_Dessgeega:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A3AF85;
    dw $2C63,$241F,$1C17,$142F,$0C47,$03E0,$02A0,$0140                   ;A3AF95;

%anchor($A3AFA5)
InstList_Dessgeega_Hopping_UpsideUp:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3AFA5;
    dw $0001,Spritemap_Dessgeega_2                                       ;A3AFA7;
    dw Instruction_Common_Sleep                                          ;A3AFAB;

%anchor($A3AFAD)
InstList_Dessgeega_Landed_UpsideUp:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3AFAD;
    dw $0002,Spritemap_Dessgeega_0                                       ;A3AFAF;
    dw $0005,Spritemap_Dessgeega_1                                       ;A3AFB3;
    dw $0002,Spritemap_Dessgeega_0                                       ;A3AFB7;
    dw $0003,Spritemap_Dessgeega_1                                       ;A3AFBB;
    dw Instruction_Hopper_ReadyToHop                                     ;A3AFBF;
    dw Instruction_Common_Sleep                                          ;A3AFC1;

%anchor($A3AFC3)
InstList_Dessgeega_Hopping_UpsideDown:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3AFC3;
    dw $0001,Spritemap_Dessgeega_5                                       ;A3AFC5;
    dw Instruction_Common_Sleep                                          ;A3AFC9;

%anchor($A3AFCB)
InstList_Dessgeega_Landed_UpsideDown:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3AFCB;
    dw $0002,Spritemap_Dessgeega_3                                       ;A3AFCD;
    dw $0005,Spritemap_Dessgeega_4                                       ;A3AFD1;
    dw $0002,Spritemap_Dessgeega_3                                       ;A3AFD5;
    dw $0003,Spritemap_Dessgeega_4                                       ;A3AFD9;
    dw Instruction_Hopper_ReadyToHop                                     ;A3AFDD;
    dw Instruction_Common_Sleep                                          ;A3AFDF;

%anchor($A3AFE1)
RTL_A3AFE1:
    RTL                                                                  ;A3AFE1;


%anchor($A3AFE2)
RTL_A3AFE2:
    RTL                                                                  ;A3AFE2;


%anchor($A3AFE3)
Spritemap_Dessgeega_0:
    dw $0005                                                             ;A3AFE3;
    %spritemapEntry(1, $1F8, $F3, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $04, $EC, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $04, $FC, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1EC, $EC, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1EC, $FC, 0, 0, 2, 0, $104)

%anchor($A3AFFE)
Spritemap_Dessgeega_1:
    dw $0005                                                             ;A3AFFE;
    %spritemapEntry(1, $1F8, $F5, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $04, $EC, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1EC, $EC, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $04, $FC, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1EC, $FC, 0, 0, 2, 0, $108)

%anchor($A3B019)
Spritemap_Dessgeega_2:
    dw $0005                                                             ;A3B019;
    %spritemapEntry(1, $1F8, $EF, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $04, $04, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $04, $F4, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1EC, $04, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1EC, $F4, 0, 0, 2, 0, $10C)

%anchor($A3B034)
Spritemap_Dessgeega_3:
    dw $0005                                                             ;A3B034;
    %spritemapEntry(1, $1F8, $FD, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $04, $04, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $04, $F4, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1EC, $04, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $1EC, $F4, 1, 0, 2, 0, $104)

%anchor($A3B04F)
Spritemap_Dessgeega_4:
    dw $0005                                                             ;A3B04F;
    %spritemapEntry(1, $1F8, $FB, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $04, $04, 1, 1, 2, 0, $10A)
    %spritemapEntry(1, $1EC, $04, 1, 0, 2, 0, $10A)
    %spritemapEntry(1, $04, $F4, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $1EC, $F4, 1, 0, 2, 0, $108)

%anchor($A3B06A)
Spritemap_Dessgeega_5:
    dw $0005                                                             ;A3B06A;
    %spritemapEntry(1, $1F8, $01, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $04, $EC, 1, 1, 2, 0, $10E)
    %spritemapEntry(1, $04, $FC, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1EC, $EC, 1, 0, 2, 0, $10E)
    %spritemapEntry(1, $1EC, $FC, 1, 0, 2, 0, $10C)


%anchor($A3B085)
Palette_SidehopperLarge:
    dw $3800,$57FF,$42F7,$0D4A,$0063,$4F5A,$36B5,$2610                   ;A3B085;
    dw $1DCE,$4EDA,$3A35,$2990,$14EB,$5FE0,$32A0,$1940                   ;A3B095;

%anchor($A3B0A5)
Palette_SidehopperTourian:
    dw $3800,$7FFF,$56E0,$3180,$18C0,$6BC0,$5EC0,$4A20                   ;A3B0A5;
    dw $35A0,$7FFF,$039C,$0237,$00D1,$03FF,$0237,$00D1                   ;A3B0B5;

%anchor($A3B0C5)
InstList_SidehopperLarge_Hopping_UpsideUp:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3B0C5;
    dw Instruction_Sidehopper_QueueSoundInY_Lib2_Max3,$005D              ;A3B0C7;
    dw $0001,Spritemap_SidehopperTourian_2                               ;A3B0C9;
    dw Instruction_Common_Sleep                                          ;A3B0CF;

%anchor($A3B0D1)
InstList_SidehopperLarge_Landed_UpsideUp:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3B0D1;
    dw Instruction_Sidehopper_QueueSoundInY_Lib2_Max3,$005E              ;A3B0D3;
    dw $0002,Spritemap_SidehopperTourian_0                               ;A3B0D5;
    dw $0005,Spritemap_SidehopperTourian_1                               ;A3B0DB;
    dw $0002,Spritemap_SidehopperTourian_0                               ;A3B0DF;
    dw $0003,Spritemap_SidehopperTourian_1                               ;A3B0E3;
    dw Instruction_Hopper_ReadyToHop                                     ;A3B0E7;
    dw Instruction_Common_Sleep                                          ;A3B0E9;

%anchor($A3B0EB)
InstList_SidehopperLarge_Hopping_UpsideDown:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3B0EB;
    dw Instruction_Sidehopper_QueueSoundInY_Lib2_Max3,$005D              ;A3B0ED;
    dw $0001,Spritemap_SidehopperTourian_5                               ;A3B0EF;
    dw Instruction_Common_Sleep                                          ;A3B0F5;

%anchor($A3B0F7)
InstList_SidehopperLarge_Landed_UpsideDown:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3B0F7;
    dw Instruction_Sidehopper_QueueSoundInY_Lib2_Max3,$005E              ;A3B0F9;
    dw $0002,Spritemap_SidehopperTourian_3                               ;A3B0FB;
    dw $0005,Spritemap_SidehopperTourian_4                               ;A3B101;
    dw $0002,Spritemap_SidehopperTourian_3                               ;A3B105;
    dw $0003,Spritemap_SidehopperTourian_4                               ;A3B109;
    dw Instruction_Hopper_ReadyToHop                                     ;A3B10D;
    dw Instruction_Common_Sleep                                          ;A3B10F;

%anchor($A3B111)
Spritemap_SidehopperTourian_0:
    dw $0007                                                             ;A3B111;
    %spritemapEntry(0, $00, $EC, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F8, $EC, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $420C, $04, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $43E4, $04, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $4208, $F4, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $43E8, $F4, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $43F8, $F4, 0, 0, 2, 0, $110)

%anchor($A3B136)
Spritemap_SidehopperTourian_1:
    dw $0007                                                             ;A3B136;
    %spritemapEntry(1, $43F8, $F6, 0, 0, 2, 0, $112)
    %spritemapEntry(1, $420D, $04, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $43E3, $04, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $4208, $F4, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $43E8, $F4, 0, 0, 2, 0, $108)
    %spritemapEntry(0, $00, $EE, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F8, $EE, 0, 0, 2, 0, $100)

%anchor($A3B15B)
Spritemap_SidehopperTourian_2:
    dw $000B                                                             ;A3B15B;
    %spritemapEntry(0, $10, $0C, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $08, $0C, 0, 1, 2, 0, $103)
    %spritemapEntry(0, $1F0, $0C, 0, 0, 2, 0, $103)
    %spritemapEntry(0, $1E8, $0C, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $4208, $FC, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $43E8, $FC, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $4208, $EC, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $E3, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F8, $E3, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $EB, 0, 0, 2, 0, $110)

%anchor($A3B194)
Spritemap_SidehopperTourian_3:
    dw $0007                                                             ;A3B194;
    %spritemapEntry(0, $00, $0C, 1, 0, 2, 0, $101)
    %spritemapEntry(0, $1F8, $0C, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $420C, $EC, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $43E4, $EC, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $4208, $FC, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $43E8, $FC, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $43F8, $FC, 1, 0, 2, 0, $110)

%anchor($A3B1B9)
Spritemap_SidehopperTourian_4:
    dw $0007                                                             ;A3B1B9;
    %spritemapEntry(1, $43F8, $FA, 1, 0, 2, 0, $112)
    %spritemapEntry(1, $420D, $EC, 1, 1, 2, 0, $10A)
    %spritemapEntry(1, $43E3, $EC, 1, 0, 2, 0, $10A)
    %spritemapEntry(1, $4208, $FC, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $43E8, $FC, 1, 0, 2, 0, $108)
    %spritemapEntry(0, $00, $0A, 1, 0, 2, 0, $101)
    %spritemapEntry(0, $1F8, $0A, 1, 0, 2, 0, $100)

%anchor($A3B1DE)
Spritemap_SidehopperTourian_5:
    dw $000B                                                             ;A3B1DE;
    %spritemapEntry(0, $10, $EC, 1, 1, 2, 0, $102)
    %spritemapEntry(0, $08, $EC, 1, 1, 2, 0, $103)
    %spritemapEntry(0, $1F0, $EC, 1, 0, 2, 0, $103)
    %spritemapEntry(0, $1E8, $EC, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $4208, $F4, 1, 1, 2, 0, $10E)
    %spritemapEntry(1, $43E8, $F4, 1, 0, 2, 0, $10E)
    %spritemapEntry(1, $4208, $04, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $43E8, $04, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $15, 1, 0, 2, 0, $101)
    %spritemapEntry(0, $1F8, $15, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $05, 1, 0, 2, 0, $110)


%anchor($A3B217)
Palette_DessgeegaLarge:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A3B217;
    dw $2C63,$241F,$1C17,$142F,$0C47,$03E0,$02A0,$0140                   ;A3B227;

%anchor($A3B237)
InstList_DessgeegaLarge_Hopping_UpsideUp:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3B237;
    dw $0001,Spritemap_DessgeegaLarge_2                                  ;A3B239;
    dw Instruction_CommonA3_Sleep                                        ;A3B23D;

%anchor($A3B23F)
InstList_DessgeegaLarge_Landed_UpsideUp:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3B23F;
    dw $0002,Spritemap_DessgeegaLarge_0                                  ;A3B241;
    dw $0005,Spritemap_DessgeegaLarge_1                                  ;A3B245;
    dw $0002,Spritemap_DessgeegaLarge_0                                  ;A3B249;
    dw $0003,Spritemap_DessgeegaLarge_1                                  ;A3B24D;
    dw Instruction_Hopper_ReadyToHop                                     ;A3B251;
    dw Instruction_Common_Sleep                                          ;A3B253;

%anchor($A3B255)
InstList_DessgeegaLarge_Hopping_UpsideDown:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3B255;
    dw $0001,Spritemap_DessgeegaLarge_5                                  ;A3B257;
    dw Instruction_Common_Sleep                                          ;A3B25B;

%anchor($A3B25D)
InstList_DessgeegaLarge_Landed_UpsideDown:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3B25D;
    dw $0002,Spritemap_DessgeegaLarge_3                                  ;A3B25F;
    dw $0005,Spritemap_DessgeegaLarge_4                                  ;A3B263;
    dw $0002,Spritemap_DessgeegaLarge_3                                  ;A3B267;
    dw $0003,Spritemap_DessgeegaLarge_4                                  ;A3B26B;
    dw Instruction_Hopper_ReadyToHop                                     ;A3B26F;
    dw Instruction_Common_Sleep                                          ;A3B271;

%anchor($A3B273)
Spritemap_DessgeegaLarge_0:
    dw $0009                                                             ;A3B273;
    %spritemapEntry(1, $43F8, $F5, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43E5, $F4, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $420B, $F4, 0, 1, 2, 0, $104)
    %spritemapEntry(0, $06, $F5, 0, 1, 2, 0, $11A)
    %spritemapEntry(0, $1F2, $F5, 0, 0, 2, 0, $11A)
    %spritemapEntry(1, $420B, $04, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $43E5, $04, 0, 0, 2, 0, $106)
    %spritemapEntry(0, $00, $ED, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F8, $ED, 0, 0, 2, 0, $10C)

%anchor($A3B2A2)
Spritemap_DessgeegaLarge_1:
    dw $0009                                                             ;A3B2A2;
    %spritemapEntry(1, $43F8, $F6, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $420A, $F4, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $43E6, $F4, 0, 0, 2, 0, $104)
    %spritemapEntry(0, $06, $F6, 0, 1, 2, 0, $11C)
    %spritemapEntry(0, $1F2, $F6, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $420B, $04, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $43E5, $04, 0, 0, 2, 0, $106)
    %spritemapEntry(0, $00, $EE, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $1F8, $EE, 0, 0, 2, 0, $10A)

%anchor($A3B2D1)
Spritemap_DessgeegaLarge_2:
    dw $000B                                                             ;A3B2D1;
    %spritemapEntry(1, $43F8, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $420B, $F4, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $43E5, $F4, 0, 0, 2, 0, $104)
    %spritemapEntry(0, $07, $F4, 0, 1, 2, 0, $11B)
    %spritemapEntry(0, $1F1, $F4, 0, 0, 2, 0, $11B)
    %spritemapEntry(0, $00, $E8, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F8, $E8, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $420A, $14, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $43E6, $14, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $420A, $04, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $43E6, $04, 0, 0, 2, 0, $108)

%anchor($A3B30A)
Spritemap_DessgeegaLarge_3:
    dw $0009                                                             ;A3B30A;
    %spritemapEntry(1, $43F8, $FB, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $43E5, $FC, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $420B, $FC, 1, 1, 2, 0, $104)
    %spritemapEntry(0, $06, $03, 1, 1, 2, 0, $11A)
    %spritemapEntry(0, $1F2, $03, 1, 0, 2, 0, $11A)
    %spritemapEntry(1, $420B, $EC, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $43E5, $EC, 1, 0, 2, 0, $106)
    %spritemapEntry(0, $00, $0B, 1, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F8, $0B, 1, 0, 2, 0, $10C)

%anchor($A3B339)
Spritemap_DessgeegaLarge_4:
    dw $0009                                                             ;A3B339;
    %spritemapEntry(1, $43F8, $FA, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $420A, $FC, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $43E6, $FC, 1, 0, 2, 0, $104)
    %spritemapEntry(0, $06, $02, 1, 1, 2, 0, $11C)
    %spritemapEntry(0, $1F2, $02, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $420B, $EC, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $43E5, $EC, 1, 0, 2, 0, $106)
    %spritemapEntry(0, $00, $0A, 1, 0, 2, 0, $10B)
    %spritemapEntry(0, $1F8, $0A, 1, 0, 2, 0, $10A)

%anchor($A3B368)
Spritemap_DessgeegaLarge_5:
    dw $000B                                                             ;A3B368;
    %spritemapEntry(1, $43F8, $04, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $420B, $00, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $43E5, $00, 1, 0, 2, 0, $104)
    %spritemapEntry(0, $07, $08, 1, 1, 2, 0, $11B)
    %spritemapEntry(0, $1F1, $08, 1, 0, 2, 0, $11B)
    %spritemapEntry(0, $00, $14, 1, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F8, $14, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $420A, $E0, 1, 1, 2, 0, $10E)
    %spritemapEntry(1, $43E6, $E0, 1, 0, 2, 0, $10E)
    %spritemapEntry(1, $420A, $F0, 1, 1, 2, 0, $108)
    %spritemapEntry(1, $43E6, $F0, 1, 0, 2, 0, $108)


%anchor($A3B3A1)
Palette_Zoa:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A3B3A1;
    dw $2C63,$1D79,$1933,$150E,$10C8,$3BE0,$2680,$1580                   ;A3B3B1;

%anchor($A3B3C1)
InstList_Zoa_FacingLeft_Shooting:
    dw Instruction_Zoa_SetXSpeedTableIndexTo4                            ;A3B3C1;
    dw $0040,Spritemap_Zoa_0                                             ;A3B3C3;
    dw Instruction_Zoa_SetXSpeedTableIndexTo8                            ;A3B3C7;
    dw $0008,Spritemap_Zoa_1                                             ;A3B3C9;
    dw Instruction_Zoa_SetXSpeedTableIndexToC                            ;A3B3CD;
    dw $0030,Spritemap_Zoa_2                                             ;A3B3CF;
    dw Instruction_Common_GotoY                                          ;A3B3D3;
    dw InstList_Zoa_FacingLeft_Shooting                                  ;A3B3D5;

%anchor($A3B3D7)
InstList_Zoa_FacingLeft_Rising:
    dw $0004,Spritemap_Zoa_4                                             ;A3B3D7;
    dw $0004,Spritemap_Zoa_3                                             ;A3B3DB;
    dw $0004,Spritemap_Zoa_5                                             ;A3B3DF;
    dw Instruction_Common_GotoY                                          ;A3B3E3;
    dw InstList_Zoa_FacingLeft_Rising                                    ;A3B3E5;

%anchor($A3B3E7)
InstList_Zoa_FacingRight_Shooting:
    dw Instruction_Zoa_SetXSpeedTableIndexTo4                            ;A3B3E7;
    dw $0040,Spritemap_Zoa_6                                             ;A3B3E9;
    dw Instruction_Zoa_SetXSpeedTableIndexTo8                            ;A3B3ED;
    dw $0008,Spritemap_Zoa_7                                             ;A3B3EF;
    dw Instruction_Zoa_SetXSpeedTableIndexToC                            ;A3B3F3;
    dw $0030,Spritemap_Zoa_8                                             ;A3B3F5;
    dw Instruction_Common_GotoY                                          ;A3B3F9;
    dw InstList_Zoa_FacingRight_Shooting                                 ;A3B3FB;

%anchor($A3B3FD)
InstList_Zoa_FacingRight_Rising:
    dw $0004,Spritemap_Zoa_A                                             ;A3B3FD;
    dw $0004,Spritemap_Zoa_9                                             ;A3B401;
    dw $0004,Spritemap_Zoa_B                                             ;A3B405;
    dw Instruction_Common_GotoY                                          ;A3B409;
    dw InstList_Zoa_FacingRight_Rising                                   ;A3B40B;

%anchor($A3B40D)
InstListPointers_Zoa:
    dw InstList_Zoa_FacingLeft_Shooting                                  ;A3B40D;
    dw InstList_Zoa_FacingLeft_Rising                                    ;A3B40F;
    dw InstList_Zoa_FacingRight_Shooting                                 ;A3B411;
    dw InstList_Zoa_FacingRight_Rising                                   ;A3B413;

%anchor($A3B415)
ZoaXSpeedTable:
; Indexed by enemy $7E:7800
;        _________ X speed
;       |      ___ X subspeed
;       |     |
  .speed:
    dw $0000                                                             ;A3B415;
  .subSpeed:
    dw       $0000                                                       ;A3B417;
    dw $0000,$8000
    dw $0000,$A000
    dw $0002,$0000
    dw $0000
    dw $0000

%anchor($A3B429)
Instruction_Zoa_SetXSpeedTableIndexTo4:
    LDX.W $0E54                                                          ;A3B429;
    LDA.W #$0004                                                         ;A3B42C;
    STA.L $7E7800,X                                                      ;A3B42F;
    RTL                                                                  ;A3B433;


%anchor($A3B434)
Instruction_Zoa_SetXSpeedTableIndexTo8:
    LDX.W $0E54                                                          ;A3B434;
    LDA.W #$0008                                                         ;A3B437;
    STA.L $7E7800,X                                                      ;A3B43A;
    RTL                                                                  ;A3B43E;


%anchor($A3B43F)
Instruction_Zoa_SetXSpeedTableIndexToC:
    LDX.W $0E54                                                          ;A3B43F;
    LDA.W #$000C                                                         ;A3B442;
    STA.L $7E7800,X                                                      ;A3B445;
    RTL                                                                  ;A3B449;


%anchor($A3B44A)
InitAI_Zoa:
    LDX.W $0E54                                                          ;A3B44A;
    LDA.W #Function_Zoa_WaitForSamusToGetNear                            ;A3B44D;
    STA.W $0FB4,X                                                        ;A3B450;
    LDA.W #$0000                                                         ;A3B453;
    STA.W $0FAE,X                                                        ;A3B456;
    STA.W $0FB0,X                                                        ;A3B459;
    STA.L $7E7800,X                                                      ;A3B45C;
    LDA.W #InstList_Zoa_FacingLeft_Shooting                              ;A3B460;
    STA.W $0F92,X                                                        ;A3B463;
    LDA.W $0F86,X                                                        ;A3B466;
    ORA.W #$0100                                                         ;A3B469;
    STA.W $0F86,X                                                        ;A3B46C;
    LDA.W $0F7A,X                                                        ;A3B46F;
    STA.W $0FAA,X                                                        ;A3B472;
    LDA.W $0F7E,X                                                        ;A3B475;
    STA.W $0FAC,X                                                        ;A3B478;
    RTL                                                                  ;A3B47B;


%anchor($A3B47C)
MainAI_Zoa:
    LDX.W $0E54                                                          ;A3B47C;
    JMP.W ($0FB4,X)                                                      ;A3B47F;


%anchor($A3B482)
Function_Zoa_WaitForSamusToGetNear:
    LDX.W $0E54                                                          ;A3B482;
    LDA.W #$0080                                                         ;A3B485;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A3B488;
    BEQ .return                                                          ;A3B48C;
    LDY.W #$0001                                                         ;A3B48E;
    JSL.L Get_SamusX_minus_EnemyX                                        ;A3B491;
    BMI .keepLeft                                                        ;A3B495;
    LDY.W #$0003                                                         ;A3B497;

.keepLeft:
    TYA                                                                  ;A3B49A;
    STA.W $0FAE,X                                                        ;A3B49B;
    JSR.W SetZoaInstList                                                 ;A3B49E;
    LDA.W #Function_Zoa_Rising                                           ;A3B4A1;
    STA.W $0FB4,X                                                        ;A3B4A4;

.return:
    RTL                                                                  ;A3B4A7;


%anchor($A3B4A8)
Function_Zoa_Rising:
    LDA.W $0F86,X                                                        ;A3B4A8;
    AND.W #$FEFF                                                         ;A3B4AB;
    STA.W $0F86,X                                                        ;A3B4AE;
    JSL.L Get_SamusY_minus_EnemyY                                        ;A3B4B1;
    BMI .rising                                                          ;A3B4B5;
    DEC.W $0FAE,X                                                        ;A3B4B7;
    JSR.W SetZoaInstList                                                 ;A3B4BA;
    STZ.W $0FB2,X                                                        ;A3B4BD;
    LDA.W #Function_Zoa_Shooting                                         ;A3B4C0;
    STA.W $0FB4,X                                                        ;A3B4C3;
    RTL                                                                  ;A3B4C6;


.rising:
    LDA.W #$0000                                                         ;A3B4C7;
    STA.B $14                                                            ;A3B4CA;
    LDA.W #$8000                                                         ;A3B4CC;
    STA.B $12                                                            ;A3B4CF;
    JSL.L MoveEnemyY_minus_12_14                                         ;A3B4D1;
    RTL                                                                  ;A3B4D5;


%anchor($A3B4D6)
Function_Zoa_Shooting:
    LDA.W $0FAE,X                                                        ;A3B4D6;
    BEQ .right                                                           ;A3B4D9;
    LDA.L $7E7800,X                                                      ;A3B4DB;
    TAY                                                                  ;A3B4DF;
    LDA.W ZoaXSpeedTable_speed,Y                                         ;A3B4E0;
    STA.B $14                                                            ;A3B4E3;
    LDA.W ZoaXSpeedTable_subSpeed,Y                                      ;A3B4E5;
    STA.B $12                                                            ;A3B4E8;
    JSL.L MoveEnemyX_plus_12_14                                          ;A3B4EA;
    JSL.L CheckIfEnemyCenterIsOnScreen                                   ;A3B4EE;
    BNE .offScreen                                                       ;A3B4F2;
    JSR.W SetZoaInstList                                                 ;A3B4F4;
    RTL                                                                  ;A3B4F7;


.right:
    LDA.L $7E7800,X                                                      ;A3B4F8;
    TAY                                                                  ;A3B4FC;
    LDA.W ZoaXSpeedTable_speed,Y                                         ;A3B4FD;
    STA.B $14                                                            ;A3B500;
    LDA.W ZoaXSpeedTable_subSpeed,Y                                      ;A3B502;
    STA.B $12                                                            ;A3B505;
    JSL.L MoveEnemyX_minus_12_14                                         ;A3B507;
    JSL.L CheckIfEnemyCenterIsOnScreen                                   ;A3B50B;
    BNE .offScreen                                                       ;A3B50F;
    JSR.W SetZoaInstList                                                 ;A3B511;
    RTL                                                                  ;A3B514;


.offScreen:
    LDA.W $0F86,X                                                        ;A3B515;
    ORA.W #$0100                                                         ;A3B518;
    STA.W $0F86,X                                                        ;A3B51B;
    LDA.W $0FAA,X                                                        ;A3B51E;
    STA.W $0F7A,X                                                        ;A3B521;
    LDA.W $0FAC,X                                                        ;A3B524;
    STA.W $0F7E,X                                                        ;A3B527;
    STZ.W $0FAE,X                                                        ;A3B52A;
    JSR.W SetZoaInstList                                                 ;A3B52D;
    LDA.W #Function_Zoa_WaitForSamusToGetNear                            ;A3B530;
    STA.W $0FB4,X                                                        ;A3B533;
    RTL                                                                  ;A3B536;


%anchor($A3B537)
SetZoaInstList:
    LDX.W $0E54                                                          ;A3B537;
    LDA.W $0FAE,X                                                        ;A3B53A;
    CMP.W $0FB0,X                                                        ;A3B53D;
    BEQ .return                                                          ;A3B540;
    STA.W $0FB0,X                                                        ;A3B542;
    ASL A                                                                ;A3B545;
    TAY                                                                  ;A3B546;
    LDA.W InstListPointers_Zoa,Y                                         ;A3B547;
    STA.W $0F92,X                                                        ;A3B54A;
    LDA.W #$0001                                                         ;A3B54D;
    STA.W $0F94,X                                                        ;A3B550;
    STZ.W $0F90,X                                                        ;A3B553;

.return:
    RTS                                                                  ;A3B556;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A3B557)
UNUSED_GetEnemyIndex_A3B557:
    LDX.W $0E54                                                          ;A3B557;
    RTL                                                                  ;A3B55A;
endif ; !FEATURE_KEEP_UNREFERENCED


if !FEATURE_KEEP_UNREFERENCED
%anchor($A3B55B)
UNUSED_GetEnemyIndex_A3B55B:
    LDX.W $0E54                                                          ;A3B55B;
    RTL                                                                  ;A3B55E;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A3B55F)
Spritemap_Zoa_0:
    dw $0001                                                             ;A3B55F;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)

%anchor($A3B566)
Spritemap_Zoa_1:
    dw $0001                                                             ;A3B566;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $102)

%anchor($A3B56D)
Spritemap_Zoa_2:
    dw $0001                                                             ;A3B56D;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $104)

%anchor($A3B574)
Spritemap_Zoa_3:
    dw $0001                                                             ;A3B574;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $106)

%anchor($A3B57B)
Spritemap_Zoa_4:
    dw $0001                                                             ;A3B57B;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $108)

%anchor($A3B582)
Spritemap_Zoa_5:
    dw $0001                                                             ;A3B582;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10A)

%anchor($A3B589)
Spritemap_Zoa_6:
    dw $0001                                                             ;A3B589;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $100)

%anchor($A3B590)
Spritemap_Zoa_7:
    dw $0001                                                             ;A3B590;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $102)

%anchor($A3B597)
Spritemap_Zoa_8:
    dw $0001                                                             ;A3B597;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $104)

%anchor($A3B59E)
Spritemap_Zoa_9:
    dw $0001                                                             ;A3B59E;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $106)

%anchor($A3B5A5)
Spritemap_Zoa_A:
    dw $0001                                                             ;A3B5A5;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $108)

%anchor($A3B5AC)
Spritemap_Zoa_B:
    dw $0001                                                             ;A3B5AC;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $10A)


%anchor($A3B5B3)
Palette_Viola:
    dw $3800,$7FFF,$56E0,$3180,$18C0,$6BC0,$5EC0,$4A20                   ;A3B5B3;
    dw $35A0,$241F,$1C17,$142F,$0C47,$03E0,$02A0,$0140                   ;A3B5C3;

%anchor($A3B5D3)
InstList_Viola_UpsideDown:
    dw Instruction_Crawlers_FunctionInY                                  ;A3B5D3;
    dw Function_Crawlers_CrawlingHorizontally                            ;A3B5D5;
    dw Instruction_Common_GotoY                                          ;A3B5D7;
    dw InstList_Viola_Normal                                             ;A3B5D9;

%anchor($A3B5DB)
InstList_Viola_UpsideUp:
    dw Instruction_Crawlers_FunctionInY                                  ;A3B5DB;
    dw Function_Crawlers_CrawlingHorizontally                            ;A3B5DD;
    dw Instruction_Common_GotoY                                          ;A3B5DF;
    dw InstList_Viola_Normal                                             ;A3B5E1;

%anchor($A3B5E3)
InstList_Viola_UpsideRight:
    dw Instruction_Crawlers_FunctionInY                                  ;A3B5E3;
    dw Function_Crawlers_CrawlingVertically                              ;A3B5E5;
    dw Instruction_Common_GotoY                                          ;A3B5E7;
    dw InstList_Viola_Normal                                             ;A3B5E9;

%anchor($A3B5EB)
InstList_Viola_UpsideLeft:
    dw Instruction_Crawlers_FunctionInY                                  ;A3B5EB;
    dw Function_Crawlers_CrawlingVertically                              ;A3B5ED;

%anchor($A3B5EF)
InstList_Viola_Normal:
    dw $000A,Spritemap_Viola_Normal_0                                    ;A3B5EF;
    dw $000A,Spritemap_Viola_Normal_1                                    ;A3B5F3;
    dw $000A,Spritemap_Viola_Normal_2                                    ;A3B5F7;
    dw $000A,Spritemap_Viola_Normal_3                                    ;A3B5FB;
    dw $000A,Spritemap_Viola_Normal_4                                    ;A3B5FF;
    dw $000A,Spritemap_Viola_Normal_5                                    ;A3B603;
    dw $000A,Spritemap_Viola_Normal_6                                    ;A3B607;
    dw $000A,Spritemap_Viola_Normal_7                                    ;A3B60B;
    dw $000A,Spritemap_Viola_Normal_6                                    ;A3B60F;
    dw $000A,Spritemap_Viola_Normal_5                                    ;A3B613;
    dw $000A,Spritemap_Viola_Normal_4                                    ;A3B617;
    dw $000A,Spritemap_Viola_Normal_3                                    ;A3B61B;
    dw $000A,Spritemap_Viola_Normal_2                                    ;A3B61F;
    dw $000A,Spritemap_Viola_Normal_1                                    ;A3B623;
    dw Instruction_Common_GotoY                                          ;A3B627;
    dw InstList_Viola_Normal                                             ;A3B629;

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3B62B)
UNUSED_InstList_Viola_XFlipped_A3B62B:
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6C1                      ;A3B62B;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6C8                      ;A3B62F;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6CF                      ;A3B633;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6D6                      ;A3B637;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6DD                      ;A3B63B;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6E4                      ;A3B63F;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6EB                      ;A3B643;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6F2                      ;A3B647;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6EB                      ;A3B64B;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6E4                      ;A3B64F;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6DD                      ;A3B653;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6D6                      ;A3B657;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6CF                      ;A3B65B;
    dw $0006,UNUSED_Spritemap_Viola_XFlipped_A3B6C8                      ;A3B65F;
    dw Instruction_Common_GotoY                                          ;A3B663;
    dw UNUSED_InstList_Viola_XFlipped_A3B62B                             ;A3B665;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3B667)
InitialInstListPointers_Viola:
    dw InstList_Viola_UpsideRight                                        ;A3B667;
    dw InstList_Viola_UpsideLeft                                         ;A3B669;
    dw InstList_Viola_UpsideDown                                         ;A3B66B;
    dw InstList_Viola_UpsideUp                                           ;A3B66D;

%anchor($A3B66F)
InitAI_Viola:
    LDX.W $0E54                                                          ;A3B66F;
    LDA.W #$0006                                                         ;A3B672;
    STA.W $0FB6,X                                                        ;A3B675;
    LDA.W $0F86,X                                                        ;A3B678;
    AND.W #$0003                                                         ;A3B67B;
    ASL A                                                                ;A3B67E;
    TAY                                                                  ;A3B67F;
    LDA.W InitialInstListPointers_Viola,Y                                ;A3B680;
    STA.W $0F92,X                                                        ;A3B683;
    JMP.W InitAI_Crawlers_Common                                         ;A3B686;


%anchor($A3B689)
Spritemap_Viola_Normal_0:
    dw $0001                                                             ;A3B689;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)

%anchor($A3B690)
Spritemap_Viola_Normal_1:
    dw $0001                                                             ;A3B690;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $102)

%anchor($A3B697)
Spritemap_Viola_Normal_2:
    dw $0001                                                             ;A3B697;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $104)

%anchor($A3B69E)
Spritemap_Viola_Normal_3:
    dw $0001                                                             ;A3B69E;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $106)

%anchor($A3B6A5)
Spritemap_Viola_Normal_4:
    dw $0001                                                             ;A3B6A5;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $108)

%anchor($A3B6AC)
Spritemap_Viola_Normal_5:
    dw $0001                                                             ;A3B6AC;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10A)

%anchor($A3B6B3)
Spritemap_Viola_Normal_6:
    dw $0001                                                             ;A3B6B3;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10C)

%anchor($A3B6BA)
Spritemap_Viola_Normal_7:
    dw $0001                                                             ;A3B6BA;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10E)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3B6C1)
UNUSED_Spritemap_Viola_XFlipped_A3B6C1:
    dw $0001                                                             ;A3B6C1;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $100)

%anchor($A3B6C8)
UNUSED_Spritemap_Viola_XFlipped_A3B6C8:
    dw $0001                                                             ;A3B6C8;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $102)

%anchor($A3B6CF)
UNUSED_Spritemap_Viola_XFlipped_A3B6CF:
    dw $0001                                                             ;A3B6CF;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $104)

%anchor($A3B6D6)
UNUSED_Spritemap_Viola_XFlipped_A3B6D6:
    dw $0001                                                             ;A3B6D6;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $106)

%anchor($A3B6DD)
UNUSED_Spritemap_Viola_XFlipped_A3B6DD:
    dw $0001                                                             ;A3B6DD;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $108)

%anchor($A3B6E4)
UNUSED_Spritemap_Viola_XFlipped_A3B6E4:
    dw $0001                                                             ;A3B6E4;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $10A)

%anchor($A3B6EB)
UNUSED_Spritemap_Viola_XFlipped_A3B6EB:
    dw $0001                                                             ;A3B6EB;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $10C)

%anchor($A3B6F2)
UNUSED_Spritemap_Viola_XFlipped_A3B6F2:
    dw $0001                                                             ;A3B6F2;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $10E)


%anchor($A3B6F9)
UNUSED_CrashIfEnemyInitParamIsNonZero_A3B6F9:
    LDX.W $0E54                                                          ;A3B6F9;
    LDA.W $0F92,X                                                        ;A3B6FC;

.crash:
    BNE .crash                                                           ;A3B6FF;
    RTL                                                                  ;A3B701;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A3B702)
Palette_Bang:
    dw $3800,$013F,$00D8,$0091,$002B,$7F12,$5B13,$2B15                   ;A3B702;
    dw $0318,$6A03,$5DA2,$40E1,$2C60,$2020,$7FFF,$0842                   ;A3B712;

%anchor($A3B722)
InstListPointers_Bang:
    dw InstList_Bang_Core_Growth0_Idling                                 ;A3B722;
    dw InstList_Bang_Core_Growth0_Growing                                ;A3B724;
    dw InstList_Bang_Core_Growth1_Idling                                 ;A3B726;
    dw InstList_Bang_Core_Growth1_Growing                                ;A3B728;
    dw InstList_Bang_Core_Growth2_Idling                                 ;A3B72A;
    dw InstList_Bang_Core_Growth2_Growing                                ;A3B72C;
    dw InstList_Bang_Core_Growth3_Idling                                 ;A3B72E;
    dw InstList_Bang_Core_Growth3_Growing                                ;A3B730;
    dw InstList_Bang_Core_Growth4_Idling                                 ;A3B732;
    dw InstList_Bang_Core_Growth4_Growing                                ;A3B734;
    dw InstList_Bang_Electricity_None                                    ;A3B736;
    dw InstList_Bang_Electricity_None                                    ;A3B738;
    dw InstList_Bang_Electricity_None                                    ;A3B73A;
    dw InstList_Bang_Electricity_None                                    ;A3B73C;
    dw InstList_Bang_Electricity_None                                    ;A3B73E;
    dw InstList_Bang_Electricity_None                                    ;A3B740;
    dw InstList_Bang_Electricity_None                                    ;A3B742;
    dw InstList_Bang_Electricity_Growth3_4_Growing                       ;A3B744;
    dw InstList_Bang_Electricity_None                                    ;A3B746;
    dw InstList_Bang_Electricity_Growth3_4_Growing                       ;A3B748;
    dw InstList_Bang_Shell_Growth0_Idling                                ;A3B74A;
    dw InstList_Bang_Shell_Growth0_Growing                               ;A3B74C;
    dw InstList_Bang_Shell_Growth1_Idling                                ;A3B74E;
    dw InstList_Bang_Shell_Growth1_Growing                               ;A3B750;
    dw InstList_Bang_Shell_Growth2_Idling                                ;A3B752;
    dw InstList_Bang_Shell_Growth2_Growing                               ;A3B754;
    dw InstList_Bang_Shell_Growth3_Idling                                ;A3B756;
    dw InstList_Bang_Shell_Growth3_Growing                               ;A3B758;
    dw InstList_Bang_Shell_Growth4_Idling                                ;A3B75A;
    dw InstList_Bang_Shell_Growth4_Growing                               ;A3B75C;

%anchor($A3B75E)
InstList_Bang_Core_Growth0_Idling:
    dw $0020,Spritemap_Bang_Growth0_Idling_0                             ;A3B75E;
    dw $000D,Spritemap_Bang_Growth0_Idling_2                             ;A3B762;
    dw $0010,Spritemap_Bang_Growth0_Idling_4                             ;A3B766;
    dw $000D,Spritemap_Bang_Growth0_Idling_2                             ;A3B76A;
    dw Instruction_Common_GotoY                                          ;A3B76E;
    dw InstList_Bang_Core_Growth0_Idling                                 ;A3B770;

%anchor($A3B772)
InstList_Bang_Core_Growth0_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B772;
    dw $0004,Spritemap_Bang_Growth0_Growing_0                            ;A3B774;
    dw $0008,Spritemap_Bang_Growth0_Growing_1                            ;A3B778;
    dw $0004,Spritemap_Bang_Growth0_Growing_0                            ;A3B77C;
    dw $0002,Spritemap_Bang_Growth0_Growing_2                            ;A3B780;
    dw $0004,Spritemap_Bang_Growth0_Growing_4                            ;A3B784;
    dw $0010,Spritemap_Bang_Growth0_Growing_6                            ;A3B788;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B78C;
    dw Instruction_Common_Sleep                                          ;A3B78E;

%anchor($A3B790)
InstList_Bang_Core_Growth1_Idling:
    dw $0010,Spritemap_Bang_Growth1_Idling_0                             ;A3B790;
    dw $0008,Spritemap_Bang_Growth1_Idling_2                             ;A3B794;
    dw $000D,Spritemap_Bang_Growth1_Idling_4                             ;A3B798;
    dw $0008,Spritemap_Bang_Growth1_Idling_2                             ;A3B79C;
    dw Instruction_Common_GotoY                                          ;A3B7A0;
    dw InstList_Bang_Core_Growth1_Idling                                 ;A3B7A2;

%anchor($A3B7A4)
InstList_Bang_Core_Growth1_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B7A4;
    dw $0004,Spritemap_Bang_Growth1_Growing_0                            ;A3B7A6;
    dw $0008,Spritemap_Bang_Growth1_Growing_1                            ;A3B7AA;
    dw $0004,Spritemap_Bang_Growth1_Growing_0                            ;A3B7AE;
    dw $0002,Spritemap_Bang_Growth1_Growing_2                            ;A3B7B2;
    dw $0004,Spritemap_Bang_Growth1_Growing_4                            ;A3B7B6;
    dw $0010,Spritemap_Bang_Growth1_Growing_6                            ;A3B7BA;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B7BE;
    dw Instruction_Common_Sleep                                          ;A3B7C0;

%anchor($A3B7C2)
InstList_Bang_Core_Growth2_Idling:
    dw $000C,Spritemap_Bang_Growth2_Idling_0                             ;A3B7C2;
    dw $0006,Spritemap_Bang_Growth2_Idling_2                             ;A3B7C6;
    dw $0004,Spritemap_Bang_Growth2_Idling_4                             ;A3B7CA;
    dw $0006,Spritemap_Bang_Growth2_Idling_2                             ;A3B7CE;
    dw Instruction_Common_GotoY                                          ;A3B7D2;
    dw InstList_Bang_Core_Growth2_Idling                                 ;A3B7D4;

%anchor($A3B7D6)
InstList_Bang_Core_Growth2_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B7D6;
    dw $0004,Spritemap_Bang_Growth2_Growing_0                            ;A3B7D8;
    dw $0008,Spritemap_Bang_Growth2_Growing_2                            ;A3B7DC;
    dw $0004,Spritemap_Bang_Growth2_Growing_0                            ;A3B7E0;
    dw $0002,Spritemap_Bang_Growth2_Growing_4                            ;A3B7E4;
    dw $0004,Spritemap_Bang_Growth2_Growing_6                            ;A3B7E8;
    dw $0010,Spritemap_Bang_Growth2_Growing_8                            ;A3B7EC;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B7F0;
    dw Instruction_Common_Sleep                                          ;A3B7F2;

%anchor($A3B7F4)
InstList_Bang_Core_Growth3_Idling:
    dw $0008,Spritemap_Bang_Growth3_Idling_0                             ;A3B7F4;
    dw $0003,Spritemap_Bang_Growth3_Idling_2                             ;A3B7F8;
    dw $0002,Spritemap_Bang_Growth3_Idling_4                             ;A3B7FC;
    dw $0003,Spritemap_Bang_Growth3_Idling_2                             ;A3B800;
    dw $0008,Spritemap_Bang_Growth3_Idling_6                             ;A3B804;
    dw $0003,Spritemap_Bang_Growth3_Idling_8                             ;A3B808;
    dw $0002,Spritemap_Bang_Growth3_Idling_A                             ;A3B80C;
    dw $0003,Spritemap_Bang_Growth3_Idling_8                             ;A3B810;
    dw $0008,Spritemap_Bang_Growth3_Idling_0                             ;A3B814;
    dw $0003,Spritemap_Bang_Growth3_Idling_2                             ;A3B818;
    dw $0002,Spritemap_Bang_Growth3_Idling_4                             ;A3B81C;
    dw $0003,Spritemap_Bang_Growth3_Idling_2                             ;A3B820;
    dw $0008,Spritemap_Bang_Growth3_Idling_C                             ;A3B824;
    dw $0003,Spritemap_Bang_Growth3_Idling_E                             ;A3B828;
    dw $0002,Spritemap_Bang_Growth3_Idling_10                            ;A3B82C;
    dw $0003,Spritemap_Bang_Growth3_Idling_E                             ;A3B830;
    dw Instruction_Common_GotoY                                          ;A3B834;
    dw InstList_Bang_Core_Growth3_Idling                                 ;A3B836;

%anchor($A3B838)
InstList_Bang_Core_Growth3_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B838;
    dw $0004,Spritemap_Bang_Growth3_Growing_0                            ;A3B83A;
    dw $0008,Spritemap_Bang_Growth3_Growing_2                            ;A3B83E;
    dw $0004,Spritemap_Bang_Growth3_Growing_0                            ;A3B842;
    dw $0002,Spritemap_Bang_Growth3_Growing_4                            ;A3B846;
    dw $0004,Spritemap_Bang_Growth3_Growing_6                            ;A3B84A;
    dw $0004,Spritemap_Bang_Growth3_Growing_8                            ;A3B84E;
    dw $0010,Spritemap_Bang_Growth3_Growing_A                            ;A3B852;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B856;
    dw Instruction_Common_Sleep                                          ;A3B858;

%anchor($A3B85A)
InstList_Bang_Core_Growth4_Idling:
    dw $0006,Spritemap_Bang_Growth4_Idling_0                             ;A3B85A;
    dw $0002,Spritemap_Bang_Growth4_Idling_2                             ;A3B85E;
    dw $0001,Spritemap_Bang_Growth4_Idling_4                             ;A3B862;
    dw $0002,Spritemap_Bang_Growth4_Idling_2                             ;A3B866;
    dw $0006,Spritemap_Bang_Growth4_Idling_6                             ;A3B86A;
    dw $0001,Spritemap_Bang_Growth4_Idling_4                             ;A3B86E;
    dw $0002,Spritemap_Bang_Growth4_Idling_2                             ;A3B872;
    dw $0006,Spritemap_Bang_Growth4_Idling_8                             ;A3B876;
    dw $0002,Spritemap_Bang_Growth4_Idling_A                             ;A3B87A;
    dw $0001,Spritemap_Bang_Growth4_Idling_C                             ;A3B87E;
    dw $0002,Spritemap_Bang_Growth4_Idling_A                             ;A3B882;
    dw Instruction_Common_GotoY                                          ;A3B886;
    dw InstList_Bang_Core_Growth4_Idling                                 ;A3B888;

%anchor($A3B88A)
InstList_Bang_Core_Growth4_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B88A;
    dw $0004,Spritemap_Bang_Growth4_Growing_0                            ;A3B88C;
    dw $0008,Spritemap_Bang_Growth4_Growing_2                            ;A3B890;
    dw $0004,Spritemap_Bang_Growth4_Growing_0                            ;A3B894;
    dw $0002,Spritemap_Bang_Growth4_Growing_4                            ;A3B898;
    dw $0004,Spritemap_Bang_Growth4_Growing_6                            ;A3B89C;
    dw $0004,Spritemap_Bang_Growth4_Growing_8                            ;A3B8A0;
    dw $0010,Spritemap_Bang_Growth4_Growing_A                            ;A3B8A4;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B8A8;
    dw Instruction_Common_Sleep                                          ;A3B8AA;

%anchor($A3B8AC)
InstList_Bang_Shell_Growth0_Idling:
    dw $0020,Spritemap_Bang_Growth0_Idling_1                             ;A3B8AC;
    dw $000D,Spritemap_Bang_Growth0_Idling_3                             ;A3B8B0;
    dw $0010,Spritemap_Bang_Growth0_Idling_5                             ;A3B8B4;
    dw $000D,Spritemap_Bang_Growth0_Idling_3                             ;A3B8B8;
    dw Instruction_Common_GotoY                                          ;A3B8BC;
    dw InstList_Bang_Shell_Growth0_Idling                                ;A3B8BE;

%anchor($A3B8C0)
InstList_Bang_Shell_Growth0_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B8C0;
    dw $0004,Spritemap_CommonA3_Nothing                                  ;A3B8C2;
    dw $0008,Spritemap_CommonA3_Nothing                                  ;A3B8C6;
    dw $0004,Spritemap_CommonA3_Nothing                                  ;A3B8CA;
    dw $0002,Spritemap_Bang_Growth0_Growing_3                            ;A3B8CE;
    dw $0004,Spritemap_Bang_Growth0_Growing_5                            ;A3B8D2;
    dw $0010,Spritemap_Bang_Growth0_Growing_7                            ;A3B8D6;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B8DA;
    dw Instruction_Common_Sleep                                          ;A3B8DC;

%anchor($A3B8DE)
InstList_Bang_Shell_Growth1_Idling:
    dw $0010,Spritemap_Bang_Growth1_Idling_1                             ;A3B8DE;
    dw $0008,Spritemap_Bang_Growth1_Idling_3                             ;A3B8E2;
    dw $000D,Spritemap_Bang_Growth1_Idling_5                             ;A3B8E6;
    dw $0008,Spritemap_Bang_Growth1_Idling_3                             ;A3B8EA;
    dw Instruction_Common_GotoY                                          ;A3B8EE;
    dw InstList_Bang_Shell_Growth1_Idling                                ;A3B8F0;

%anchor($A3B8F2)
InstList_Bang_Shell_Growth1_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B8F2;
    dw $0004,Spritemap_CommonA3_Nothing                                  ;A3B8F4;
    dw $0008,Spritemap_CommonA3_Nothing                                  ;A3B8F8;
    dw $0004,Spritemap_CommonA3_Nothing                                  ;A3B8FC;
    dw $0002,Spritemap_Bang_Growth1_Growing_3                            ;A3B900;
    dw $0004,Spritemap_Bang_Growth1_Growing_5                            ;A3B904;
    dw $0010,Spritemap_Bang_Growth1_Growing_7                            ;A3B908;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B90C;
    dw Instruction_Common_Sleep                                          ;A3B90E;

%anchor($A3B910)
InstList_Bang_Shell_Growth2_Idling:
    dw $000C,Spritemap_Bang_Growth2_Idling_1                             ;A3B910;
    dw $0006,Spritemap_Bang_Growth2_Idling_3                             ;A3B914;
    dw $0004,Spritemap_Bang_Growth2_Idling_5                             ;A3B918;
    dw $0006,Spritemap_Bang_Growth2_Idling_3                             ;A3B91C;
    dw Instruction_Common_GotoY                                          ;A3B920;
    dw InstList_Bang_Shell_Growth2_Idling                                ;A3B922;

%anchor($A3B924)
InstList_Bang_Shell_Growth2_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B924;
    dw $0004,Spritemap_Bang_Growth2_Growing_1                            ;A3B926;
    dw $0008,Spritemap_Bang_Growth2_Growing_3                            ;A3B92A;
    dw $0004,Spritemap_Bang_Growth2_Growing_1                            ;A3B92E;
    dw $0002,Spritemap_Bang_Growth2_Growing_5                            ;A3B932;
    dw $0004,Spritemap_Bang_Growth2_Growing_7                            ;A3B936;
    dw $0010,Spritemap_Bang_Growth2_Growing_9                            ;A3B93A;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B93E;
    dw Instruction_Common_Sleep                                          ;A3B940;

%anchor($A3B942)
InstList_Bang_Shell_Growth3_Idling:
    dw $0008,Spritemap_Bang_Growth3_Idling_1                             ;A3B942;
    dw $0003,Spritemap_Bang_Growth3_Idling_3                             ;A3B946;
    dw $0002,Spritemap_Bang_Growth3_Idling_5                             ;A3B94A;
    dw $0003,Spritemap_Bang_Growth3_Idling_3                             ;A3B94E;
    dw $0008,Spritemap_Bang_Growth3_Idling_7                             ;A3B952;
    dw $0003,Spritemap_Bang_Growth3_Idling_9                             ;A3B956;
    dw $0002,Spritemap_Bang_Growth3_Idling_B                             ;A3B95A;
    dw $0003,Spritemap_Bang_Growth3_Idling_9                             ;A3B95E;
    dw $0008,Spritemap_Bang_Growth3_Idling_1                             ;A3B962;
    dw $0003,Spritemap_Bang_Growth3_Idling_3                             ;A3B966;
    dw $0002,Spritemap_Bang_Growth3_Idling_5                             ;A3B96A;
    dw $0003,Spritemap_Bang_Growth3_Idling_3                             ;A3B96E;
    dw $0008,Spritemap_Bang_Growth3_Idling_D                             ;A3B972;
    dw $0003,Spritemap_Bang_Growth3_Idling_F                             ;A3B976;
    dw $0002,Spritemap_Bang_Growth3_Idling_11                            ;A3B97A;
    dw $0003,Spritemap_Bang_Growth3_Idling_F                             ;A3B97E;
    dw Instruction_Common_GotoY                                          ;A3B982;
    dw InstList_Bang_Shell_Growth3_Idling                                ;A3B984;

%anchor($A3B986)
InstList_Bang_Shell_Growth3_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B986;
    dw $0004,Spritemap_Bang_Growth3_Growing_1                            ;A3B988;
    dw $0008,Spritemap_Bang_Growth3_Growing_3                            ;A3B98C;
    dw $0004,Spritemap_Bang_Growth3_Growing_1                            ;A3B990;
    dw $0002,Spritemap_Bang_Growth3_Growing_5                            ;A3B994;
    dw $0004,Spritemap_Bang_Growth3_Growing_7                            ;A3B998;
    dw $0004,Spritemap_Bang_Growth3_Growing_9                            ;A3B99C;
    dw $0010,Spritemap_Bang_Growth3_Growing_B                            ;A3B9A0;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B9A4;
    dw Instruction_Common_Sleep                                          ;A3B9A6;

%anchor($A3B9A8)
InstList_Bang_Shell_Growth4_Idling:
    dw $0006,Spritemap_Bang_Growth4_Idling_1                             ;A3B9A8;
    dw $0002,Spritemap_Bang_Growth4_Idling_3                             ;A3B9AC;
    dw $0001,Spritemap_Bang_Growth4_Idling_5                             ;A3B9B0;
    dw $0002,Spritemap_Bang_Growth4_Idling_3                             ;A3B9B4;
    dw $0006,Spritemap_Bang_Growth4_Idling_7                             ;A3B9B8;
    dw $0001,Spritemap_Bang_Growth4_Idling_5                             ;A3B9BC;
    dw $0002,Spritemap_Bang_Growth4_Idling_3                             ;A3B9C0;
    dw $0006,Spritemap_Bang_Growth4_Idling_9                             ;A3B9C4;
    dw $0002,Spritemap_Bang_Growth4_Idling_B                             ;A3B9C8;
    dw $0001,Spritemap_Bang_Growth4_Idling_D                             ;A3B9CC;
    dw $0002,Spritemap_Bang_Growth4_Idling_B                             ;A3B9D0;
    dw Instruction_Common_GotoY                                          ;A3B9D4;
    dw InstList_Bang_Shell_Growth4_Idling                                ;A3B9D6;

%anchor($A3B9D8)
InstList_Bang_Shell_Growth4_Growing:
    dw Instruction_Bang_PlayAcquiredSuitSFX                              ;A3B9D8;
    dw $0004,Spritemap_Bang_Growth4_Growing_1                            ;A3B9DA;
    dw $0008,Spritemap_Bang_Growth4_Growing_3                            ;A3B9DE;
    dw $0004,Spritemap_Bang_Growth4_Growing_1                            ;A3B9E2;
    dw $0002,Spritemap_Bang_Growth4_Growing_5                            ;A3B9E6;
    dw $0004,Spritemap_Bang_Growth4_Growing_7                            ;A3B9EA;
    dw $0004,Spritemap_Bang_Growth4_Growing_9                            ;A3B9EE;
    dw $0010,Spritemap_CommonA3_Nothing                                  ;A3B9F2;
    dw Instruction_Bang_SetFinishedGrowingFlagTo1                        ;A3B9F6;
    dw Instruction_Common_Sleep                                          ;A3B9F8;

%anchor($A3B9FA)
InstList_Bang_Electricity_None:
    dw $0001,Spritemap_CommonA3_Nothing                                  ;A3B9FA;
    dw Instruction_Common_Sleep                                          ;A3B9FE;

%anchor($A3BA00)
InstList_Bang_Electricity_Growth3_4_Growing:
    dw $0002,Spritemap_Bang_Electricity_Growth3_4_Growing_0              ;A3BA00;
    dw $0003,Spritemap_Bang_Electricity_Growth3_4_Growing_1              ;A3BA04;
    dw $0004,Spritemap_Bang_Electricity_Growth3_4_Growing_2              ;A3BA08;
    dw $0002,Spritemap_CommonA3_Nothing                                  ;A3BA0C;
    dw $0004,Spritemap_Bang_Electricity_Growth3_4_Growing_3              ;A3BA10;
    dw $0002,Spritemap_Bang_Electricity_Growth3_4_Growing_4              ;A3BA14;
    dw $0003,Spritemap_Bang_Electricity_Growth3_4_Growing_5              ;A3BA18;
    dw $0002,Spritemap_Bang_Electricity_Growth3_4_Growing_6              ;A3BA1C;
    dw $0004,Spritemap_Bang_Electricity_Growth3_4_Growing_7              ;A3BA20;
    dw $0003,Spritemap_Bang_Electricity_Growth3_4_Growing_8              ;A3BA24;
    dw $000A,Spritemap_CommonA3_Nothing                                  ;A3BA28;
    dw $0003,Spritemap_Bang_Electricity_Growth3_4_Growing_9              ;A3BA2C;
    dw $0002,Spritemap_Bang_Electricity_Growth3_4_Growing_A              ;A3BA30;
    dw $0004,Spritemap_Bang_Electricity_Growth3_4_Growing_B              ;A3BA34;
    dw Instruction_Common_GotoY                                          ;A3BA38;
    dw InstList_Bang_Electricity_Growth3_4_Growing                       ;A3BA3A;

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3BA3C)
UNSUED_InstList_Bang_Electricity_Growing_A3BA3C:
    dw $0002,UNUSED_Spritemap_Bang_Electricity_A3C5AE                    ;A3BA3C;
    dw $0003,UNUSED_Spritemap_Bang_Electricity_A3C5BA                    ;A3BA40;
    dw $0004,UNUSED_Spritemap_Bang_Electricity_A3C5C6                    ;A3BA44;
    dw $0002,Spritemap_CommonA3_Nothing                                  ;A3BA48;
    dw $0004,UNUSED_Spritemap_Bang_Electricity_A3C5D2                    ;A3BA4C;
    dw $0002,UNUSED_Spritemap_Bang_Electricity_A3C5DE                    ;A3BA50;
    dw $0003,UNUSED_Spritemap_Bang_Electricity_A3C5EA                    ;A3BA54;
    dw $0002,UNUSED_Spritemap_Bang_Electricity_A3C5F6                    ;A3BA58;
    dw $0004,UNUSED_Spritemap_Bang_Electricity_A3C602                    ;A3BA5C;
    dw $0003,UNUSED_Spritemap_Bang_Electricity_A3C60E                    ;A3BA60;
    dw $000A,Spritemap_CommonA3_Nothing                                  ;A3BA64;
    dw $0003,UNUSED_Spritemap_Bang_Electricity_A3C61A                    ;A3BA68;
    dw $0002,UNUSED_Spritemap_Bang_Electricity_A3C626                    ;A3BA6C;
    dw $0004,UNUSED_Spritemap_Bang_Electricity_A3C632                    ;A3BA70;
    dw Instruction_Common_GotoY                                          ;A3BA74;
    dw UNSUED_InstList_Bang_Electricity_Growing_A3BA3C                   ;A3BA76;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3BA78)
Instruction_Bang_PlayAcquiredSuitSFX:
    PHY                                                                  ;A3BA78;
    PHX                                                                  ;A3BA79;
    LDA.W #$0056                                                         ;A3BA7A;
    JSL.L QueueSound_Lib2_Max6                                           ;A3BA7D;
    PLX                                                                  ;A3BA81;
    PLY                                                                  ;A3BA82;
    RTL                                                                  ;A3BA83;


%anchor($A3BA84)
BangMaxSpeeds:
    dw $02FF,$03FF,$04FF,$05FF,$06FF,$07FF,$08FF,$09FF                   ;A3BA84;

%anchor($A3BA94)
BangAngles:                                                              ;A3BA94;
    dw $00C0 ; 0: Up, facing right
    dw $00E0 ; 1: Up-right
    dw $0000 ; 2: Right
    dw $0020 ; 3: Down-right
    dw $0040 ; 4: Down, facing right
    dw $0040 ; 5: Down, facing left
    dw $0060 ; 6: Down-left
    dw $0080 ; 7: Left
    dw $00A0 ; 8: Up-left
    dw $00C0 ; 9: Up, facing left

%anchor($A3BAA8)
Instruction_Bang_SetFinishedGrowingFlagTo1:
    LDX.W $0E54                                                          ;A3BAA8;
    LDA.W #$0001                                                         ;A3BAAB;
    STA.L $7E8004,X                                                      ;A3BAAE;
    RTL                                                                  ;A3BAB2;


%anchor($A3BAB3)
InitAI_Bang:
    LDX.W $0E54                                                          ;A3BAB3;
    LDA.W $0F96,X                                                        ;A3BAB6;
    STA.W $0FAA,X                                                        ;A3BAB9;
    LDA.W $0F86,X                                                        ;A3BABC;
    ORA.W #$1000                                                         ;A3BABF;
    STA.W $0F86,X                                                        ;A3BAC2;
    LDA.W #Function_Bang_Movement_MovementDelay                          ;A3BAC5;
    STA.W $0FB2,X                                                        ;A3BAC8;
    LDA.W #$0010                                                         ;A3BACB;
    STA.L $7E7800,X                                                      ;A3BACE;
    LDA.W #$0000                                                         ;A3BAD2;
    STA.L $7E7802,X                                                      ;A3BAD5;
    STA.L $7E7804,X                                                      ;A3BAD9;
    STA.L $7E8000,X                                                      ;A3BADD;
    STA.L $7E8002,X                                                      ;A3BAE1;
    STA.L $7E8004,X                                                      ;A3BAE5;
    LDA.W $0FB6,X                                                        ;A3BAE9;
    AND.W #$00FF                                                         ;A3BAEC;
    ASL A                                                                ;A3BAEF;
    TAY                                                                  ;A3BAF0;
    LDA.W BangMaxSpeeds,Y                                                ;A3BAF1;
    STA.L $7E7816,X                                                      ;A3BAF4;
    LDA.W $0FB7,X                                                        ;A3BAF8;
    AND.W #$00FF                                                         ;A3BAFB;
    ASL A                                                                ;A3BAFE;
    ASL A                                                                ;A3BAFF;
    TAY                                                                  ;A3BB00;
    LDA.W BangAccelerationIntervalTimeResetValues_accel,Y                ;A3BB01;
    STA.L $7E7818,X                                                      ;A3BB04;
    STA.L $7E781A,X                                                      ;A3BB08;
    LDA.W BangAccelerationIntervalTimeResetValues_decel,Y                ;A3BB0C;
    STA.L $7E781C,X                                                      ;A3BB0F;
    LDA.W $0F92,X                                                        ;A3BB13;
    BNE .idling                                                          ;A3BB16;
    LDA.W #Function_Bang_Movement_GetEnemyIndex                          ;A3BB18;
    STA.W $0FB2,X                                                        ;A3BB1B;

.idling:
    LDA.W #InstList_Bang_Core_Growth0_Idling                             ;A3BB1E;
    STA.W $0F92,X                                                        ;A3BB21;
    RTL                                                                  ;A3BB24;


%anchor($A3BB25)
MainAI_Bang:
    LDX.W $0E54                                                          ;A3BB25;
    JMP.W ($0FB4,X)                                                      ;A3BB28;


%anchor($A3BB2B)
BangAI_Electricity:
    LDX.W $0E54                                                          ;A3BB2B;
    LDA.L $7E8040,X                                                      ;A3BB2E;
    CLC                                                                  ;A3BB32;
    ADC.W #$000A                                                         ;A3BB33;
    STA.L $7E8000,X                                                      ;A3BB36;
    JSR.W SetBangInstList                                                ;A3BB3A;
    LDX.W $0E54                                                          ;A3BB3D;
    LDA.W $0F86,X                                                        ;A3BB40;
    ORA.W #$0400                                                         ;A3BB43;
    STA.W $0F86,X                                                        ;A3BB46;
    RTL                                                                  ;A3BB49;


%anchor($A3BB4A)
BangAI_Shell:
    LDX.W $0E54                                                          ;A3BB4A;
    LDA.L $7E7FC0,X                                                      ;A3BB4D;
    CLC                                                                  ;A3BB51;
    ADC.W #$0014                                                         ;A3BB52;
    STA.L $7E8000,X                                                      ;A3BB55;
    JSR.W SetBangInstList                                                ;A3BB59;
    LDA.W $0F86,X                                                        ;A3BB5C;
    ORA.W #$0400                                                         ;A3BB5F;
    STA.W $0F86,X                                                        ;A3BB62;
    RTL                                                                  ;A3BB65;


%anchor($A3BB66)
BangAI_Core:
    LDX.W $0E54                                                          ;A3BB66;
    JSR.W ExecuteBangeMovementFunction                                   ;A3BB69;
    LDA.W $0F7A,X                                                        ;A3BB6C;
    STA.W $0F3A,X                                                        ;A3BB6F;
    STA.W $0FBA,X                                                        ;A3BB72;
    LDA.W $0F7E,X                                                        ;A3BB75;
    STA.W $0F3E,X                                                        ;A3BB78;
    STA.W $0FBE,X                                                        ;A3BB7B;
    LDY.W $0FAA,X                                                        ;A3BB7E;
    LDA.L $7E8000,X                                                      ;A3BB81;
    AND.W #$0001                                                         ;A3BB85;
    BEQ +                                                                ;A3BB88;
    LDY.W #$0C00                                                         ;A3BB8A;

  + TYA                                                                  ;A3BB8D;
    STA.W $0F96,X                                                        ;A3BB8E;
    JSR.W SetBangInstList                                                ;A3BB91;
    LDA.L $7E8004,X                                                      ;A3BB94;
    BNE +                                                                ;A3BB98;
    RTL                                                                  ;A3BB9A;


  + LDA.W #$0000                                                         ;A3BB9B;
    STA.L $7E8004,X                                                      ;A3BB9E;
    LDA.L $7E8000,X                                                      ;A3BBA2;
    CMP.W #$0009                                                         ;A3BBA6;
    BNE +                                                                ;A3BBA9;
    LDA.W #$0010                                                         ;A3BBAB;
    STA.W $0FA0,X                                                        ;A3BBAE;
    LDA.W $0F86,X                                                        ;A3BBB1;
    ORA.W #$0400                                                         ;A3BBB4;
    STA.W $0F86,X                                                        ;A3BBB7;
    JSL.L DetermineDirectionOfSamusFromEnemy                             ;A3BBBA;
    JSR.W FireChargedBeamAtSamus                                         ;A3BBBE;
    JSL.L EnemyDeath                                                     ;A3BBC1;
    LDX.W $0E54                                                          ;A3BBC5;
    LDA.W $0FC6,X                                                        ;A3BBC8;
    ORA.W #$0200                                                         ;A3BBCB;
    STA.W $0FC6,X                                                        ;A3BBCE;
    LDA.W $0F46,X                                                        ;A3BBD1;
    ORA.W #$0200                                                         ;A3BBD4;
    STA.W $0F46,X                                                        ;A3BBD7;
    RTL                                                                  ;A3BBDA;


  + LDX.W $0E54                                                          ;A3BBDB;
    LDA.L $7E8000,X                                                      ;A3BBDE;
    INC A                                                                ;A3BBE2;
    STA.L $7E8000,X                                                      ;A3BBE3;
    JSR.W SetBangInstList                                                ;A3BBE7;
    RTL                                                                  ;A3BBEA;


%anchor($A3BBEB)
FireChargedBeamAtSamus:
    STA.W $1872                                                          ;A3BBEB;
    LDX.W $0E54                                                          ;A3BBEE;
    LDA.W $0CCE                                                          ;A3BBF1;
    CMP.W #$0005                                                         ;A3BBF4;
    BPL .fail                                                            ;A3BBF7;
    LDA.W #$0000                                                         ;A3BBF9;
    TAY                                                                  ;A3BBFC;

.loop:
    LDA.W $0C2C,Y                                                        ;A3BBFD;
    BEQ .zeroDamage                                                      ;A3BC00;
    INY                                                                  ;A3BC02;
    INY                                                                  ;A3BC03;
    BRA .loop                                                            ;A3BC04;


.zeroDamage:
    LDA.W $0F7A,X                                                        ;A3BC06;
    STA.W $0B64,Y                                                        ;A3BC09;
    LDA.W $0F7E,X                                                        ;A3BC0C;
    STA.W $0B78,Y                                                        ;A3BC0F;
    LDA.W $1872                                                          ;A3BC12;
    STA.W $0C04,Y                                                        ;A3BC15;
    LDA.W $09A6                                                          ;A3BC18;
    AND.W #$000F                                                         ;A3BC1B;
    ORA.W #$0010                                                         ;A3BC1E;
    STA.W $0C18,Y                                                        ;A3BC21;
    INC.W $0CCE                                                          ;A3BC24;
    STY.B $14                                                            ;A3BC27;
    JSL.L ProjectileReflection                                           ;A3BC29;
    LDA.W $0FB0,X                                                        ;A3BC2D;
    STA.W $0C2C,Y                                                        ;A3BC30;
    LDA.W $0C18,Y                                                        ;A3BC33;
    AND.W #$000F                                                         ;A3BC36;
    ASL A                                                                ;A3BC39;
    TAX                                                                  ;A3BC3A;
    LDA.W .beamTypes,X                                                   ;A3BC3B;
    JSL.L QueueSound_Lib1_Max6                                           ;A3BC3E;
    LDA.W #$0000                                                         ;A3BC42;
    RTS                                                                  ;A3BC45;


.fail:
    LDA.W #$0001                                                         ;A3BC46;
    RTS                                                                  ;A3BC49;


.beamTypes:                                                              ;A3BC4A;
    dw $0017  ; Charged power beam
    dw $0019  ; Charged wave beam
    dw $0018  ; Charged ice beam
    dw $001A  ; Charged ice + wave beam
              ; <-- Missing charged spazer beam
    dw $001E  ; Charged spazer + wave beam
    dw $001C  ; Charged spazer + ice beam
    dw $001D  ; Charged spazer + ice + wave beam
    dw $001F  ; Charged plasma beam
    dw $0022  ; Charged plasma + wave beam
    dw $0020  ; Charged plasma + ice beam
    dw $0021  ; Charged plasma + ice + wave beam
    dw $0000,$0000,$0000,$0000,$0000

%anchor($A3BC6A)
BangAccelerationIntervalTimeResetValues:
;        _________ Acceleration interval timer
;       |      ___ Deceleration interval timer
;       |     |
  .accel:
    dw $0003                                                             ;A3BC6A;
  .decel:
    dw       $0001                                                       ;A3BC6C;
    dw $0004,$0001
    dw $0005,$0002
    dw $0006,$0002
    dw $0007,$0002
    dw $0008,$0003
    dw $0009,$0003
    dw $000A,$0004
    dw $000B,$0004
    dw $000C,$0005
    dw $000D,$0005
    dw $000E,$0006
    dw $000F,$0006

%anchor($A3BC9E)
ExecuteBangeMovementFunction:
    LDX.W $0E54                                                          ;A3BC9E;
    JSR.W ($0FB2,X)                                                      ;A3BCA1;
    RTS                                                                  ;A3BCA4;


%anchor($A3BCA5)
Function_Bang_Movement_MovementDelay:
    LDX.W $0E54                                                          ;A3BCA5;
    LDA.L $7E7800,X                                                      ;A3BCA8;
    DEC A                                                                ;A3BCAC;
    STA.L $7E7800,X                                                      ;A3BCAD;
    BNE .return                                                          ;A3BCB1;
    LDA.W #$0010                                                         ;A3BCB3;
    STA.L $7E7800,X                                                      ;A3BCB6;
    LDA.W #Function_Bang_Movement_TargetSamus                            ;A3BCBA;
    STA.W $0FB2,X                                                        ;A3BCBD;

.return:
    RTS                                                                  ;A3BCC0;


%anchor($A3BCC1)
Function_Bang_Movement_GetEnemyIndex:
    LDX.W $0E54                                                          ;A3BCC1;
    RTS                                                                  ;A3BCC4;


%anchor($A3BCC5)
Function_Bang_Movement_TargetSamus:
    LDX.W $0E54                                                          ;A3BCC5;
    JSL.L CalculateAngleOfSamusFromEnemy                                 ;A3BCC8;
    SEC                                                                  ;A3BCCC;
    SBC.W #$0040                                                         ;A3BCCD;
    AND.W #$00FF                                                         ;A3BCD0;
    STA.L $7E7802,X                                                      ;A3BCD3;
    LDA.W #Function_Bang_Movement_Accelerating                           ;A3BCD7;
    STA.W $0FB2,X                                                        ;A3BCDA;
    LDA.W #$0000                                                         ;A3BCDD;
    STA.L $7E780E,X                                                      ;A3BCE0;
    STA.L $7E7810,X                                                      ;A3BCE4;
    STA.L $7E7812,X                                                      ;A3BCE8;
    STA.L $7E7814,X                                                      ;A3BCEC;
    RTS                                                                  ;A3BCF0;


%anchor($A3BCF1)
TriggerBangDecelerationIfTooFarOffTarget:
    LDX.W $0E54                                                          ;A3BCF1;
    JSL.L CalculateAngleOfSamusFromEnemy                                 ;A3BCF4;
    SEC                                                                  ;A3BCF8;
    SBC.W #$0040                                                         ;A3BCF9;
    AND.W #$00FF                                                         ;A3BCFC;
    STA.L $7E7804,X                                                      ;A3BCFF;
    SEC                                                                  ;A3BD03;
    SBC.L $7E7802,X                                                      ;A3BD04;
    JSL.L Sign_Extend_A                                                  ;A3BD08;
    JSL.L NegateA_A0B067                                                 ;A3BD0C;
    CMP.W #$0030                                                         ;A3BD10;
    BMI .return                                                          ;A3BD13;
    LDA.W #Function_Bang_Movement_Decelerating                           ;A3BD15;
    STA.W $0FB2,X                                                        ;A3BD18;

.return:
    RTS                                                                  ;A3BD1B;


%anchor($A3BD1C)
Function_Bang_Movement_Accelerating:
    LDX.W $0E54                                                          ;A3BD1C;
    JSR.W BangXMovement                                                  ;A3BD1F;
    JSR.W BangYMovement                                                  ;A3BD22;
    JSR.W AccelerateBang                                                 ;A3BD25;
    JSR.W TriggerBangDecelerationIfTooFarOffTarget                       ;A3BD28;
    RTS                                                                  ;A3BD2B;


%anchor($A3BD2C)
Function_Bang_Movement_Decelerating:
    LDX.W $0E54                                                          ;A3BD2C;
    JSR.W BangXMovement                                                  ;A3BD2F;
    JSR.W BangYMovement                                                  ;A3BD32;
    JSR.W DecelerateBang                                                 ;A3BD35;
    LDA.L $7E7814,X                                                      ;A3BD38;
    BNE .delay                                                           ;A3BD3C;
    BMI .delay                                                           ;A3BD3E;
    LDA.L $7E7812,X                                                      ;A3BD40;
    BEQ .delay                                                           ;A3BD44;
    BPL .return                                                          ;A3BD46;

.delay:
    LDA.W #Function_Bang_Movement_MovementDelay                          ;A3BD48;
    STA.W $0FB2,X                                                        ;A3BD4B;

.return:
    RTS                                                                  ;A3BD4E;


%anchor($A3BD4F)
AccelerateBang:
    LDX.W $0E54                                                          ;A3BD4F;
    LDA.L $7E7818,X                                                      ;A3BD52;
    DEC A                                                                ;A3BD56;
    STA.L $7E7818,X                                                      ;A3BD57;
    BPL .return                                                          ;A3BD5B;
    LDA.L $7E781A,X                                                      ;A3BD5D;
    STA.L $7E7818,X                                                      ;A3BD61;
    LDA.L $7E7814,X                                                      ;A3BD65;
    CMP.L $7E7816,X                                                      ;A3BD69;
    BPL .return                                                          ;A3BD6D;
    LDA.L $7E7812,X                                                      ;A3BD6F;
    CLC                                                                  ;A3BD73;
    ADC.W #$0016                                                         ;A3BD74;
    STA.L $7E7812,X                                                      ;A3BD77;
    LDA.L $7E7814,X                                                      ;A3BD7B;
    CLC                                                                  ;A3BD7F;
    ADC.L $7E7812,X                                                      ;A3BD80;
    STA.L $7E7814,X                                                      ;A3BD84;

.return:
    RTS                                                                  ;A3BD88;


%anchor($A3BD89)
DecelerateBang:
    LDX.W $0E54                                                          ;A3BD89;
    LDA.L $7E7818,X                                                      ;A3BD8C;
    DEC A                                                                ;A3BD90;
    STA.L $7E7818,X                                                      ;A3BD91;
    BPL .return                                                          ;A3BD95;
    LDA.L $7E781C,X                                                      ;A3BD97;
    STA.L $7E7818,X                                                      ;A3BD9B;
    LDA.L $7E7812,X                                                      ;A3BD9F;
    SEC                                                                  ;A3BDA3;
    SBC.W #$0016                                                         ;A3BDA4;
    STA.L $7E7812,X                                                      ;A3BDA7;
    LDA.L $7E7814,X                                                      ;A3BDAB;
    SEC                                                                  ;A3BDAF;
    SBC.L $7E7812,X                                                      ;A3BDB0;
    STA.L $7E7814,X                                                      ;A3BDB4;

.return:
    RTS                                                                  ;A3BDB8;


%anchor($A3BDB9)
BangXMovement:
    LDX.W $0E54                                                          ;A3BDB9;
    LDA.L $7E7802,X                                                      ;A3BDBC;
    PHX                                                                  ;A3BDC0;
    CLC                                                                  ;A3BDC1;
    ADC.W #$0040                                                         ;A3BDC2;
    AND.W #$00FF                                                         ;A3BDC5;
    ASL A                                                                ;A3BDC8;
    TAX                                                                  ;A3BDC9;
    LDA.L SineCosineTables_16bitSine,X                                   ;A3BDCA;
    STA.B $12                                                            ;A3BDCE;
    PLX                                                                  ;A3BDD0;
    LDA.B $12                                                            ;A3BDD1;
    BPL +                                                                ;A3BDD3;
    LDA.W #$0001                                                         ;A3BDD5;
    STA.L $7E780E,X                                                      ;A3BDD8;

  + LDA.B $12                                                            ;A3BDDC;
    JSL.L NegateA_A0B067                                                 ;A3BDDE;
    AND.W #$FF00                                                         ;A3BDE2;
    XBA                                                                  ;A3BDE5;
    STA.B $16                                                            ;A3BDE6;
    LDA.L $7E7814,X                                                      ;A3BDE8;
    STA.B $18                                                            ;A3BDEC;
    JSR.W UnsignedMultiplication_24bit_A3BE7B                            ;A3BDEE;
    LDA.B $1C                                                            ;A3BDF1;
    STA.B $16                                                            ;A3BDF3;
    LDA.B $1E                                                            ;A3BDF5;
    STA.B $18                                                            ;A3BDF7;
    LDA.L $7E780E,X                                                      ;A3BDF9;
    BEQ +                                                                ;A3BDFD;
    JSR.W StrugglingWithMultiWordNegation                                ;A3BDFF;
    LDA.B $1C                                                            ;A3BE02;
    STA.B $16                                                            ;A3BE04;
    LDA.B $1E                                                            ;A3BE06;
    STA.B $18                                                            ;A3BE08;

  + CLC                                                                  ;A3BE0A;
    LDA.W $0F7C,X                                                        ;A3BE0B;
    ADC.B $16                                                            ;A3BE0E;
    STA.W $0F7C,X                                                        ;A3BE10;
    LDA.W $0F7A,X                                                        ;A3BE13;
    ADC.B $18                                                            ;A3BE16;
    STA.W $0F7A,X                                                        ;A3BE18;
    RTS                                                                  ;A3BE1B;


%anchor($A3BE1C)
BangYMovement:
    LDX.W $0E54                                                          ;A3BE1C;
    LDA.L $7E7802,X                                                      ;A3BE1F;
    PHX                                                                  ;A3BE23;
    AND.W #$00FF                                                         ;A3BE24;
    ASL A                                                                ;A3BE27;
    TAX                                                                  ;A3BE28;
    LDA.L SineCosineTables_16bitSine,X                                   ;A3BE29;
    STA.B $12                                                            ;A3BE2D;
    PLX                                                                  ;A3BE2F;
    LDA.B $12                                                            ;A3BE30;
    BPL +                                                                ;A3BE32;
    LDA.W #$0001                                                         ;A3BE34;
    STA.L $7E7810,X                                                      ;A3BE37;

  + LDA.B $12                                                            ;A3BE3B;
    JSL.L NegateA_A0B067                                                 ;A3BE3D;
    AND.W #$FF00                                                         ;A3BE41;
    XBA                                                                  ;A3BE44;
    STA.B $16                                                            ;A3BE45;
    LDA.L $7E7814,X                                                      ;A3BE47;
    STA.B $18                                                            ;A3BE4B;
    JSR.W UnsignedMultiplication_24bit_A3BE7B                            ;A3BE4D;
    LDA.B $1C                                                            ;A3BE50;
    STA.B $16                                                            ;A3BE52;
    LDA.B $1E                                                            ;A3BE54;
    STA.B $18                                                            ;A3BE56;
    LDA.L $7E7810,X                                                      ;A3BE58;
    BEQ +                                                                ;A3BE5C;
    JSR.W StrugglingWithMultiWordNegation                                ;A3BE5E;
    LDA.B $1C                                                            ;A3BE61;
    STA.B $16                                                            ;A3BE63;
    LDA.B $1E                                                            ;A3BE65;
    STA.B $18                                                            ;A3BE67;

  + CLC                                                                  ;A3BE69;
    LDA.W $0F80,X                                                        ;A3BE6A;
    ADC.B $16                                                            ;A3BE6D;
    STA.W $0F80,X                                                        ;A3BE6F;
    LDA.W $0F7E,X                                                        ;A3BE72;
    ADC.B $18                                                            ;A3BE75;
    STA.W $0F7E,X                                                        ;A3BE77;
    RTS                                                                  ;A3BE7A;


%anchor($A3BE7B)
UnsignedMultiplication_24bit_A3BE7B:
    PHP                                                                  ;A3BE7B;
    SEP #$20                                                             ;A3BE7C;
    LDA.B $16                                                            ;A3BE7E;
    STA.W $4202                                                          ;A3BE80;
    LDA.B $18                                                            ;A3BE83;
    STA.W $4203                                                          ;A3BE85;
    NOP                                                                  ;A3BE88;
    NOP                                                                  ;A3BE89;
    NOP                                                                  ;A3BE8A;
    REP #$20                                                             ;A3BE8B;
    LDA.W $4216                                                          ;A3BE8D;
    STA.B $1C                                                            ;A3BE90;
    SEP #$20                                                             ;A3BE92;
    LDA.B $16                                                            ;A3BE94;
    STA.W $4202                                                          ;A3BE96;
    LDA.B $19                                                            ;A3BE99;
    STA.W $4203                                                          ;A3BE9B;
    NOP                                                                  ;A3BE9E;
    NOP                                                                  ;A3BE9F;
    NOP                                                                  ;A3BEA0;
    REP #$20                                                             ;A3BEA1;
    LDA.W $4216                                                          ;A3BEA3;
    AND.W #$FF00                                                         ;A3BEA6;
    XBA                                                                  ;A3BEA9;
    STA.B $1E                                                            ;A3BEAA;
    LDA.W $4216                                                          ;A3BEAC;
    AND.W #$00FF                                                         ;A3BEAF;
    XBA                                                                  ;A3BEB2;
    CLC                                                                  ;A3BEB3;
    ADC.B $1C                                                            ;A3BEB4;
    STA.B $1C                                                            ;A3BEB6;
    BCC .return                                                          ;A3BEB8;
    INC.B $1E                                                            ;A3BEBA;

.return:
    PLP                                                                  ;A3BEBC;
    RTS                                                                  ;A3BEBD;


%anchor($A3BEBE)
StrugglingWithMultiWordNegation:
    LDA.B $16                                                            ;A3BEBE;
    BNE +                                                                ;A3BEC0;
    LDA.B $18                                                            ;A3BEC2;
    BNE +                                                                ;A3BEC4;
    BRA .return                                                          ;A3BEC6;


  + LDA.B $16                                                            ;A3BEC8;
    LDA.W #$0000                                                         ;A3BECA;
    SEC                                                                  ;A3BECD;
    SBC.B $16                                                            ;A3BECE;
    STA.B $1C                                                            ;A3BED0;
    LDA.B $18                                                            ;A3BED2;
    EOR.W #$FFFF                                                         ;A3BED4;
    STA.B $1E                                                            ;A3BED7;

.return:
    RTS                                                                  ;A3BED9;


%anchor($A3BEDA)
SetBangInstList:
    LDX.W $0E54                                                          ;A3BEDA;
    LDA.L $7E8000,X                                                      ;A3BEDD;
    CMP.L $7E8002,X                                                      ;A3BEE1;
    BEQ .return                                                          ;A3BEE5;
    STA.L $7E8002,X                                                      ;A3BEE7;
    ASL A                                                                ;A3BEEB;
    TAY                                                                  ;A3BEEC;
    LDA.W InstListPointers_Bang,Y                                        ;A3BEED;
    STA.W $0F92,X                                                        ;A3BEF0;
    LDA.W #$0001                                                         ;A3BEF3;
    STA.W $0F94,X                                                        ;A3BEF6;
    STZ.W $0F90,X                                                        ;A3BEF9;

.return:
    RTS                                                                  ;A3BEFC;


%anchor($A3BEFD)
EnemyShot_Bang:
    LDX.W $0E54                                                          ;A3BEFD;
    LDA.W $0FB2,X                                                        ;A3BF00;
    CMP.W #Function_Bang_Movement_GetEnemyIndex                          ;A3BF03;
    BEQ .RTSFunction                                                     ;A3BF06;
    LDA.W $18A6                                                          ;A3BF08;
    ASL A                                                                ;A3BF0B;
    TAY                                                                  ;A3BF0C;
    LDA.W $0C04,Y                                                        ;A3BF0D;
    AND.W #$000F                                                         ;A3BF10;
    ASL A                                                                ;A3BF13;
    TAY                                                                  ;A3BF14;
    LDA.W BangAngles,Y                                                   ;A3BF15;
    STA.L $7E7802,X                                                      ;A3BF18;
    LDA.W #Function_Bang_Movement_Decelerating                           ;A3BF1C;
    STA.W $0FB2,X                                                        ;A3BF1F;
    LDA.W #$0000                                                         ;A3BF22;
    STA.L $7E780E,X                                                      ;A3BF25;
    STA.L $7E7810,X                                                      ;A3BF29;
    LDA.W #$0100                                                         ;A3BF2D;
    STA.L $7E7812,X                                                      ;A3BF30;
    LDA.W #$0600                                                         ;A3BF34;
    STA.L $7E7814,X                                                      ;A3BF37;

.RTSFunction:
    LDA.L $7E8000,X                                                      ;A3BF3B;
    CMP.W #$0009                                                         ;A3BF3F;
    BNE .notIndex9                                                       ;A3BF42;
    RTL                                                                  ;A3BF44;


.notIndex9:
    LDA.L $7E8000,X                                                      ;A3BF45;
    INC A                                                                ;A3BF49;
    STA.L $7E8000,X                                                      ;A3BF4A;
    JSR.W SetBangInstList                                                ;A3BF4E;
    LDA.W $18A6                                                          ;A3BF51;
    ASL A                                                                ;A3BF54;
    TAY                                                                  ;A3BF55;
    LDA.W $0C2C,Y                                                        ;A3BF56;
    CLC                                                                  ;A3BF59;
    ADC.W $0FB0,X                                                        ;A3BF5A;
    STA.W $0FB0,X                                                        ;A3BF5D;
    LDA.W $0C04,Y                                                        ;A3BF60;
    ORA.W #$0010                                                         ;A3BF63;
    STA.W $0C04,Y                                                        ;A3BF66;
    LDX.W $0E54                                                          ;A3BF69;
    LDA.L $7E8000,X                                                      ;A3BF6C;
    CMP.W #$0009                                                         ;A3BF70;
    BEQ +                                                                ;A3BF73;
    RTL                                                                  ;A3BF75;


  + LDA.W #$0001                                                         ;A3BF76;
    STA.W $0FAE,X                                                        ;A3BF79;
    RTL                                                                  ;A3BF7C;


%anchor($A3BF7D)
Spritemap_Bang_Growth0_Idling_0:
    dw $0001                                                             ;A3BF7D;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $113)

%anchor($A3BF84)
Spritemap_Bang_Growth0_Idling_1:
    dw $0001                                                             ;A3BF84;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $110)

%anchor($A3BF8B)
Spritemap_Bang_Growth0_Idling_2:
    dw $0001                                                             ;A3BF8B;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $114)

%anchor($A3BF92)
Spritemap_Bang_Growth0_Idling_3:
    dw $0001                                                             ;A3BF92;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $111)

%anchor($A3BF99)
Spritemap_Bang_Growth0_Idling_4:
    dw $0001                                                             ;A3BF99;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $115)

%anchor($A3BFA0)
Spritemap_Bang_Growth0_Idling_5:
    dw $0001                                                             ;A3BFA0;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $112)

%anchor($A3BFA7)
Spritemap_Bang_Growth0_Growing_0:
    dw $0001                                                             ;A3BFA7;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $170)

%anchor($A3BFAE)
Spritemap_Bang_Growth0_Growing_1:
    dw $0001                                                             ;A3BFAE;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $160)

%anchor($A3BFB5)
Spritemap_Bang_Growth0_Growing_2:
    dw $0001                                                             ;A3BFB5;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $116)

%anchor($A3BFBC)
Spritemap_Bang_Growth0_Growing_3:
    dw $0004                                                             ;A3BFBC;
    %spritemapEntry(0, $1F9, $FF, 1, 1, 3, 0, $101)
    %spritemapEntry(0, $1FF, $FF, 1, 0, 3, 0, $101)
    %spritemapEntry(0, $1FF, $F9, 0, 0, 3, 0, $101)
    %spritemapEntry(0, $1F9, $F9, 0, 0, 3, 0, $100)

%anchor($A3BFD2)
Spritemap_Bang_Growth0_Growing_4:
    dw $0001                                                             ;A3BFD2;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $116)

%anchor($A3BFD9)
Spritemap_Bang_Growth0_Growing_5:
    dw $0004                                                             ;A3BFD9;
    %spritemapEntry(0, $1F8, $FF, 1, 1, 3, 0, $101)
    %spritemapEntry(0, $00, $FF, 1, 0, 3, 0, $101)
    %spritemapEntry(0, $00, $F9, 0, 0, 3, 0, $101)
    %spritemapEntry(0, $1F8, $F9, 0, 0, 3, 0, $100)

%anchor($A3BFEF)
Spritemap_Bang_Growth0_Growing_6:
    dw $0001                                                             ;A3BFEF;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $116)

%anchor($A3BFF6)
Spritemap_Bang_Growth0_Growing_7:
    dw $0004                                                             ;A3BFF6;
    %spritemapEntry(0, $1F8, $00, 1, 1, 3, 0, $101)
    %spritemapEntry(0, $00, $00, 1, 0, 3, 0, $101)
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 0, $101)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $100)

%anchor($A3C00C)
Spritemap_Bang_Growth1_Idling_0:
    dw $0001                                                             ;A3C00C;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $116)

%anchor($A3C013)
Spritemap_Bang_Growth1_Idling_1:
    dw $0004                                                             ;A3C013;
    %spritemapEntry(0, $1F8, $00, 1, 1, 3, 0, $101)
    %spritemapEntry(0, $00, $00, 1, 0, 3, 0, $101)
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 0, $101)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $100)

%anchor($A3C029)
Spritemap_Bang_Growth1_Idling_2:
    dw $0001                                                             ;A3C029;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $117)

%anchor($A3C030)
Spritemap_Bang_Growth1_Idling_3:
    dw $0004                                                             ;A3C030;
    %spritemapEntry(0, $1F8, $00, 1, 1, 3, 0, $103)
    %spritemapEntry(0, $00, $00, 1, 0, 3, 0, $103)
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 0, $103)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $102)

%anchor($A3C046)
Spritemap_Bang_Growth1_Idling_4:
    dw $0001                                                             ;A3C046;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $118)

%anchor($A3C04D)
Spritemap_Bang_Growth1_Idling_5:
    dw $0004                                                             ;A3C04D;
    %spritemapEntry(0, $1F8, $00, 1, 1, 3, 0, $105)
    %spritemapEntry(0, $00, $00, 1, 0, 3, 0, $105)
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 0, $105)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $104)

%anchor($A3C063)
Spritemap_Bang_Growth1_Growing_0:
    dw $0004                                                             ;A3C063;
    %spritemapEntry(0, $00, $00, 1, 1, 3, 0, $172)
    %spritemapEntry(0, $1F8, $00, 1, 0, 3, 0, $172)
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 0, $172)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $172)

%anchor($A3C079)
Spritemap_Bang_Growth1_Growing_1:
    dw $0004                                                             ;A3C079;
    %spritemapEntry(0, $00, $00, 1, 1, 3, 0, $171)
    %spritemapEntry(0, $1F8, $00, 1, 0, 3, 0, $171)
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 0, $171)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $171)

%anchor($A3C08F)
Spritemap_Bang_Growth1_Growing_2:
    dw $0001                                                             ;A3C08F;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $119)

%anchor($A3C096)
Spritemap_Bang_Growth1_Growing_3:
    dw $0004                                                             ;A3C096;
    %spritemapEntry(0, $1F9, $FF, 1, 1, 3, 0, $107)
    %spritemapEntry(0, $1FF, $FF, 1, 0, 3, 0, $107)
    %spritemapEntry(0, $1FF, $F9, 0, 0, 3, 0, $107)
    %spritemapEntry(0, $1F9, $F9, 0, 0, 3, 0, $106)

%anchor($A3C0AC)
Spritemap_Bang_Growth1_Growing_4:
    dw $0001                                                             ;A3C0AC;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $119)

%anchor($A3C0B3)
Spritemap_Bang_Growth1_Growing_5:
    dw $0004                                                             ;A3C0B3;
    %spritemapEntry(0, $1F9, $00, 1, 1, 3, 0, $107)
    %spritemapEntry(0, $1FF, $00, 1, 0, 3, 0, $107)
    %spritemapEntry(0, $1FF, $F8, 0, 0, 3, 0, $107)
    %spritemapEntry(0, $1F9, $F8, 0, 0, 3, 0, $106)

%anchor($A3C0C9)
Spritemap_Bang_Growth1_Growing_6:
    dw $0001                                                             ;A3C0C9;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $119)

%anchor($A3C0D0)
Spritemap_Bang_Growth1_Growing_7:
    dw $0004                                                             ;A3C0D0;
    %spritemapEntry(0, $1F8, $00, 1, 1, 3, 0, $107)
    %spritemapEntry(0, $00, $00, 1, 0, 3, 0, $107)
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 0, $107)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $106)

%anchor($A3C0E6)
Spritemap_Bang_Growth2_Idling_0:
    dw $0001                                                             ;A3C0E6;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $119)

%anchor($A3C0ED)
Spritemap_Bang_Growth2_Idling_1:
    dw $0004                                                             ;A3C0ED;
    %spritemapEntry(0, $1F8, $00, 1, 1, 3, 0, $107)
    %spritemapEntry(0, $00, $00, 1, 0, 3, 0, $107)
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 0, $107)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $106)

%anchor($A3C103)
Spritemap_Bang_Growth2_Idling_2:
    dw $0001                                                             ;A3C103;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $11A)

%anchor($A3C10A)
Spritemap_Bang_Growth2_Idling_3:
    dw $0004                                                             ;A3C10A;
    %spritemapEntry(0, $1F8, $00, 1, 1, 3, 0, $109)
    %spritemapEntry(0, $00, $00, 1, 0, 3, 0, $109)
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 0, $109)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $108)

%anchor($A3C120)
Spritemap_Bang_Growth2_Idling_4:
    dw $0001                                                             ;A3C120;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $11B)

%anchor($A3C127)
Spritemap_Bang_Growth2_Idling_5:
    dw $0004                                                             ;A3C127;
    %spritemapEntry(0, $1F8, $00, 1, 1, 3, 0, $10B)
    %spritemapEntry(0, $00, $00, 1, 0, 3, 0, $10B)
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 0, $10B)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $10A)

%anchor($A3C13D)
Spritemap_Bang_Growth2_Growing_0:
    dw $0001                                                             ;A3C13D;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $119)

%anchor($A3C144)
Spritemap_Bang_Growth2_Growing_1:
    dw $0004                                                             ;A3C144;
    %spritemapEntry(0, $00, $00, 1, 1, 3, 0, $177)
    %spritemapEntry(0, $1F8, $00, 1, 0, 3, 0, $177)
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 0, $177)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $177)

%anchor($A3C15A)
Spritemap_Bang_Growth2_Growing_2:
    dw $0001                                                             ;A3C15A;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 0, $119)

%anchor($A3C161)
Spritemap_Bang_Growth2_Growing_3:
    dw $0004                                                             ;A3C161;
    %spritemapEntry(0, $00, $00, 1, 1, 3, 0, $167)
    %spritemapEntry(0, $1F8, $00, 1, 0, 3, 0, $167)
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 0, $167)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $167)

%anchor($A3C177)
Spritemap_Bang_Growth2_Growing_4:
    dw $0001                                                             ;A3C177;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10C)

%anchor($A3C17E)
Spritemap_Bang_Growth2_Growing_5:
    dw $0004                                                             ;A3C17E;
    %spritemapEntry(1, $43F2, $FE, 1, 1, 3, 0, $122)
    %spritemapEntry(1, $43FE, $FE, 1, 0, 3, 0, $122)
    %spritemapEntry(1, $43FE, $F2, 0, 0, 3, 0, $122)
    %spritemapEntry(1, $43F2, $F2, 0, 0, 3, 0, $120)

%anchor($A3C194)
Spritemap_Bang_Growth2_Growing_6:
    dw $0001                                                             ;A3C194;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10C)

%anchor($A3C19B)
Spritemap_Bang_Growth2_Growing_7:
    dw $0004                                                             ;A3C19B;
    %spritemapEntry(1, $43FF, $F1, 0, 0, 3, 0, $122)
    %spritemapEntry(1, $43F1, $F1, 0, 0, 3, 0, $120)
    %spritemapEntry(1, $43F1, $FF, 1, 1, 3, 0, $122)
    %spritemapEntry(1, $43FF, $FF, 1, 0, 3, 0, $122)

%anchor($A3C1B1)
Spritemap_Bang_Growth2_Growing_8:
    dw $0001                                                             ;A3C1B1;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10C)

%anchor($A3C1B8)
Spritemap_Bang_Growth2_Growing_9:
    dw $0004                                                             ;A3C1B8;
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $122)
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $122)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $122)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $120)

%anchor($A3C1CE)
Spritemap_Bang_Growth3_Idling_0:
    dw $0001                                                             ;A3C1CE;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10C)

%anchor($A3C1D5)
Spritemap_Bang_Growth3_Idling_1:
    dw $0004                                                             ;A3C1D5;
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $122)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $120)
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $122)
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $122)

%anchor($A3C1EB)
Spritemap_Bang_Growth3_Idling_2:
    dw $0001                                                             ;A3C1EB;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $12C)

%anchor($A3C1F2)
Spritemap_Bang_Growth3_Idling_3:
    dw $0004                                                             ;A3C1F2;
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $126)
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $126)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $126)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $124)

%anchor($A3C208)
Spritemap_Bang_Growth3_Idling_4:
    dw $0001                                                             ;A3C208;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $14C)

%anchor($A3C20F)
Spritemap_Bang_Growth3_Idling_5:
    dw $0004                                                             ;A3C20F;
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $12A)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $128)
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $12A)
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $12A)

%anchor($A3C225)
Spritemap_Bang_Growth3_Idling_6:
    dw $0001                                                             ;A3C225;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10C)

%anchor($A3C22C)
Spritemap_Bang_Growth3_Idling_7:
    dw $0004                                                             ;A3C22C;
    %spritemapEntry(1, $4200, $FF, 1, 0, 3, 0, $122)
    %spritemapEntry(1, $43F0, $FF, 1, 1, 3, 0, $122)
    %spritemapEntry(1, $4200, $F1, 0, 0, 3, 0, $122)
    %spritemapEntry(1, $43F0, $F1, 0, 0, 3, 0, $120)

%anchor($A3C242)
Spritemap_Bang_Growth3_Idling_8:
    dw $0001                                                             ;A3C242;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $12C)

%anchor($A3C249)
Spritemap_Bang_Growth3_Idling_9:
    dw $0004                                                             ;A3C249;
    %spritemapEntry(1, $4200, $FF, 1, 0, 3, 0, $126)
    %spritemapEntry(1, $43F0, $FF, 1, 1, 3, 0, $126)
    %spritemapEntry(1, $4200, $F1, 0, 0, 3, 0, $126)
    %spritemapEntry(1, $43F0, $F1, 0, 0, 3, 0, $124)

%anchor($A3C25F)
Spritemap_Bang_Growth3_Idling_A:
    dw $0001                                                             ;A3C25F;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $14C)

%anchor($A3C266)
Spritemap_Bang_Growth3_Idling_B:
    dw $0004                                                             ;A3C266;
    %spritemapEntry(1, $4200, $FF, 1, 0, 3, 0, $12A)
    %spritemapEntry(1, $43F0, $FF, 1, 1, 3, 0, $12A)
    %spritemapEntry(1, $4200, $F1, 0, 0, 3, 0, $12A)
    %spritemapEntry(1, $43F0, $F1, 0, 0, 3, 0, $128)

%anchor($A3C27C)
Spritemap_Bang_Growth3_Idling_C:
    dw $0001                                                             ;A3C27C;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10C)

%anchor($A3C283)
Spritemap_Bang_Growth3_Idling_D:
    dw $0004                                                             ;A3C283;
    %spritemapEntry(1, $43FF, $00, 1, 0, 3, 0, $122)
    %spritemapEntry(1, $43F1, $00, 1, 1, 3, 0, $122)
    %spritemapEntry(1, $43FF, $F0, 0, 0, 3, 0, $122)
    %spritemapEntry(1, $43F1, $F0, 0, 0, 3, 0, $120)

%anchor($A3C299)
Spritemap_Bang_Growth3_Idling_E:
    dw $0001                                                             ;A3C299;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $12C)

%anchor($A3C2A0)
Spritemap_Bang_Growth3_Idling_F:
    dw $0004                                                             ;A3C2A0;
    %spritemapEntry(1, $43FF, $00, 1, 0, 3, 0, $126)
    %spritemapEntry(1, $43F1, $00, 1, 1, 3, 0, $126)
    %spritemapEntry(1, $43FF, $F0, 0, 0, 3, 0, $126)
    %spritemapEntry(1, $43F1, $F0, 0, 0, 3, 0, $124)

%anchor($A3C2B6)
Spritemap_Bang_Growth3_Idling_10:
    dw $0001                                                             ;A3C2B6;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $14C)

%anchor($A3C2BD)
Spritemap_Bang_Growth3_Idling_11:
    dw $0004                                                             ;A3C2BD;
    %spritemapEntry(1, $43FF, $00, 1, 0, 3, 0, $12A)
    %spritemapEntry(1, $43F1, $00, 1, 1, 3, 0, $12A)
    %spritemapEntry(1, $43FF, $F0, 0, 0, 3, 0, $12A)
    %spritemapEntry(1, $43F1, $F0, 0, 0, 3, 0, $128)

%anchor($A3C2D3)
Spritemap_Bang_Growth3_Growing_0:
    dw $0001                                                             ;A3C2D3;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16A)

%anchor($A3C2DA)
Spritemap_Bang_Growth3_Growing_1:
    dw $0004                                                             ;A3C2DA;
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $122)
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $122)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $122)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $120)

%anchor($A3C2F0)
Spritemap_Bang_Growth3_Growing_2:
    dw $0001                                                             ;A3C2F0;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $168)

%anchor($A3C2F7)
Spritemap_Bang_Growth3_Growing_3:
    dw $0004                                                             ;A3C2F7;
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $122)
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $122)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $122)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $120)

%anchor($A3C30D)
Spritemap_Bang_Growth3_Growing_4:
    dw $0001                                                             ;A3C30D;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16C)

%anchor($A3C314)
Spritemap_Bang_Growth3_Growing_5:
    dw $0004                                                             ;A3C314;
    %spritemapEntry(1, $43F2, $FE, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $43FE, $FE, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $43FE, $F2, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F2, $F2, 0, 0, 3, 0, $140)

%anchor($A3C32A)
Spritemap_Bang_Growth3_Growing_6:
    dw $0001                                                             ;A3C32A;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16E)

%anchor($A3C331)
Spritemap_Bang_Growth3_Growing_7:
    dw $0004                                                             ;A3C331;
    %spritemapEntry(1, $43F1, $FF, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $43FF, $FF, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $43FF, $F1, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F1, $F1, 0, 0, 3, 0, $140)

%anchor($A3C347)
Spritemap_Bang_Growth3_Growing_8:
    dw $0001                                                             ;A3C347;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16C)

%anchor($A3C34E)
Spritemap_Bang_Growth3_Growing_9:
    dw $0004                                                             ;A3C34E;
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $140)

%anchor($A3C364)
Spritemap_Bang_Growth3_Growing_A:
    dw $0001                                                             ;A3C364;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10E)

%anchor($A3C36B)
Spritemap_Bang_Growth3_Growing_B:
    dw $0004                                                             ;A3C36B;
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $140)

%anchor($A3C381)
Spritemap_Bang_Electricity_Growth3_4_Growing_0:
    dw $0002                                                             ;A3C381;
    %spritemapEntry(0, $04, $FC, 0, 0, 3, 0, $164)
    %spritemapEntry(0, $1F6, $F6, 0, 0, 3, 0, $161)

%anchor($A3C38D)
Spritemap_Bang_Electricity_Growth3_4_Growing_1:
    dw $0002                                                             ;A3C38D;
    %spritemapEntry(0, $04, $FC, 0, 0, 3, 0, $165)
    %spritemapEntry(0, $1F6, $F6, 0, 0, 3, 0, $162)

%anchor($A3C399)
Spritemap_Bang_Electricity_Growth3_4_Growing_2:
    dw $0002                                                             ;A3C399;
    %spritemapEntry(0, $04, $FC, 0, 0, 3, 0, $166)
    %spritemapEntry(0, $1F6, $F6, 0, 0, 3, 0, $163)

%anchor($A3C3A5)
Spritemap_Bang_Electricity_Growth3_4_Growing_3:
    dw $0002                                                             ;A3C3A5;
    %spritemapEntry(0, $02, $F6, 0, 1, 3, 0, $161)
    %spritemapEntry(0, $1F4, $FD, 0, 0, 3, 0, $164)

%anchor($A3C3B1)
Spritemap_Bang_Electricity_Growth3_4_Growing_4:
    dw $0002                                                             ;A3C3B1;
    %spritemapEntry(0, $02, $F6, 0, 1, 3, 0, $162)
    %spritemapEntry(0, $1F4, $FD, 0, 0, 3, 0, $165)

%anchor($A3C3BD)
Spritemap_Bang_Electricity_Growth3_4_Growing_5:
    dw $0002                                                             ;A3C3BD;
    %spritemapEntry(0, $1F4, $FD, 0, 0, 3, 0, $166)
    %spritemapEntry(0, $02, $F6, 0, 1, 3, 0, $163)

%anchor($A3C3C9)
Spritemap_Bang_Electricity_Growth3_4_Growing_6:
    dw $0002                                                             ;A3C3C9;
    %spritemapEntry(0, $1FA, $03, 0, 0, 3, 0, $176)
    %spritemapEntry(0, $1FC, $F5, 0, 0, 3, 0, $174)

%anchor($A3C3D5)
Spritemap_Bang_Electricity_Growth3_4_Growing_7:
    dw $0002                                                             ;A3C3D5;
    %spritemapEntry(0, $1FA, $03, 0, 0, 3, 0, $175)
    %spritemapEntry(0, $1FC, $F5, 0, 0, 3, 0, $175)

%anchor($A3C3E1)
Spritemap_Bang_Electricity_Growth3_4_Growing_8:
    dw $0002                                                             ;A3C3E1;
    %spritemapEntry(0, $1FB, $03, 0, 0, 3, 0, $174)
    %spritemapEntry(0, $1FC, $F5, 0, 0, 3, 0, $176)

%anchor($A3C3ED)
Spritemap_Bang_Electricity_Growth3_4_Growing_9:
    dw $0002                                                             ;A3C3ED;
    %spritemapEntry(0, $02, $02, 0, 0, 3, 0, $163)
    %spritemapEntry(0, $1F6, $02, 0, 1, 3, 0, $161)

%anchor($A3C3F9)
Spritemap_Bang_Electricity_Growth3_4_Growing_A:
    dw $0002                                                             ;A3C3F9;
    %spritemapEntry(0, $02, $02, 0, 0, 3, 0, $162)
    %spritemapEntry(0, $1F6, $02, 0, 1, 3, 0, $162)

%anchor($A3C405)
Spritemap_Bang_Electricity_Growth3_4_Growing_B:
    dw $0002                                                             ;A3C405;
    %spritemapEntry(0, $02, $02, 0, 0, 3, 0, $161)
    %spritemapEntry(0, $1F6, $02, 0, 1, 3, 0, $163)

%anchor($A3C411)
Spritemap_Bang_Growth4_Idling_0:
    dw $0001                                                             ;A3C411;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10E)

%anchor($A3C418)
Spritemap_Bang_Growth4_Idling_1:
    dw $0004                                                             ;A3C418;
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $140)

%anchor($A3C42E)
Spritemap_Bang_Growth4_Idling_2:
    dw $0001                                                             ;A3C42E;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $12E)

%anchor($A3C435)
Spritemap_Bang_Growth4_Idling_3:
    dw $0004                                                             ;A3C435;
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $146)
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $146)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $146)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $144)

%anchor($A3C44B)
Spritemap_Bang_Growth4_Idling_4:
    dw $0001                                                             ;A3C44B;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $14E)

%anchor($A3C452)
Spritemap_Bang_Growth4_Idling_5:
    dw $0004                                                             ;A3C452;
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $14A)
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $14A)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $14A)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $148)

%anchor($A3C468)
Spritemap_Bang_Growth4_Idling_6:
    dw $0001                                                             ;A3C468;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10E)

%anchor($A3C46F)
Spritemap_Bang_Growth4_Idling_7:
    dw $0004                                                             ;A3C46F;
    %spritemapEntry(1, $43F0, $FF, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $4200, $FF, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $4200, $F1, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $F1, 0, 0, 3, 0, $140)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3C485)
UNUSED_Spritemap_Bang_Growth4_Idling_A3C485:
    dw $0001                                                             ;A3C485;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $12E)

%anchor($A3C48C)
UNUSED_Spritemap_Bang_Growth4_Idling_A3C48C:
    dw $0004                                                             ;A3C48C;
    %spritemapEntry(1, $43F0, $FF, 1, 1, 3, 0, $146)
    %spritemapEntry(1, $4200, $FF, 1, 0, 3, 0, $146)
    %spritemapEntry(1, $4200, $F1, 0, 0, 3, 0, $146)
    %spritemapEntry(1, $43F0, $F1, 0, 0, 3, 0, $144)

%anchor($A3C4A2)
UNUSED_Spritemap_Bang_Growth4_Idling_A3C4A2:
    dw $0001                                                             ;A3C4A2;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $14E)

%anchor($A3C4A9)
UNUSED_Spritemap_Bang_Growth4_Idling_A3C4A9:
    dw $0004                                                             ;A3C4A9;
    %spritemapEntry(1, $43F0, $FF, 1, 1, 3, 0, $14A)
    %spritemapEntry(1, $4200, $FF, 1, 0, 3, 0, $14A)
    %spritemapEntry(1, $4200, $F1, 0, 0, 3, 0, $14A)
    %spritemapEntry(1, $43F0, $F1, 0, 0, 3, 0, $148)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3C4BF)
Spritemap_Bang_Growth4_Idling_8:
    dw $0001                                                             ;A3C4BF;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $10E)

%anchor($A3C4C6)
Spritemap_Bang_Growth4_Idling_9:
    dw $0004                                                             ;A3C4C6;
    %spritemapEntry(1, $43FF, $00, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $43F1, $00, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $43FF, $F0, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F1, $F0, 0, 0, 3, 0, $140)

%anchor($A3C4DC)
Spritemap_Bang_Growth4_Idling_A:
    dw $0001                                                             ;A3C4DC;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $12E)

%anchor($A3C4E3)
Spritemap_Bang_Growth4_Idling_B:
    dw $0004                                                             ;A3C4E3;
    %spritemapEntry(1, $43FF, $00, 1, 0, 3, 0, $146)
    %spritemapEntry(1, $43F1, $00, 1, 1, 3, 0, $146)
    %spritemapEntry(1, $43FF, $F0, 0, 0, 3, 0, $146)
    %spritemapEntry(1, $43F1, $F0, 0, 0, 3, 0, $144)

%anchor($A3C4F9)
Spritemap_Bang_Growth4_Idling_C:
    dw $0001                                                             ;A3C4F9;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $14E)

%anchor($A3C500)
Spritemap_Bang_Growth4_Idling_D:
    dw $0004                                                             ;A3C500;
    %spritemapEntry(1, $43FF, $00, 1, 0, 3, 0, $14A)
    %spritemapEntry(1, $43F1, $00, 1, 1, 3, 0, $14A)
    %spritemapEntry(1, $43FF, $F0, 0, 0, 3, 0, $14A)
    %spritemapEntry(1, $43F1, $F0, 0, 0, 3, 0, $148)

%anchor($A3C516)
Spritemap_Bang_Growth4_Growing_0:
    dw $0001                                                             ;A3C516;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16E)

%anchor($A3C51D)
Spritemap_Bang_Growth4_Growing_1:
    dw $0004                                                             ;A3C51D;
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $140)

%anchor($A3C533)
Spritemap_Bang_Growth4_Growing_2:
    dw $0001                                                             ;A3C533;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16C)

%anchor($A3C53A)
Spritemap_Bang_Growth4_Growing_3:
    dw $0004                                                             ;A3C53A;
    %spritemapEntry(1, $4200, $00, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $00, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $4200, $F0, 0, 0, 3, 0, $142)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 3, 0, $140)

%anchor($A3C550)
Spritemap_Bang_Growth4_Growing_4:
    dw $0001                                                             ;A3C550;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16E)

%anchor($A3C557)
Spritemap_Bang_Growth4_Growing_5:
    dw $0004                                                             ;A3C557;
    %spritemapEntry(1, $43EF, $EF, 0, 1, 3, 0, $142)
    %spritemapEntry(1, $43EF, $01, 1, 1, 3, 0, $142)
    %spritemapEntry(1, $4201, $01, 1, 0, 3, 0, $142)
    %spritemapEntry(1, $4201, $EF, 0, 0, 3, 0, $142)

%anchor($A3C56D)
Spritemap_Bang_Growth4_Growing_6:
    dw $0001                                                             ;A3C56D;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16C)

%anchor($A3C574)
Spritemap_Bang_Growth4_Growing_7:
    dw $0004                                                             ;A3C574;
    %spritemapEntry(1, $43EE, $EE, 0, 1, 3, 0, $146)
    %spritemapEntry(1, $43EE, $02, 1, 1, 3, 0, $146)
    %spritemapEntry(1, $4202, $02, 1, 0, 3, 0, $146)
    %spritemapEntry(1, $4202, $EE, 0, 0, 3, 0, $146)

%anchor($A3C58A)
Spritemap_Bang_Growth4_Growing_8:
    dw $0001                                                             ;A3C58A;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16E)

%anchor($A3C591)
Spritemap_Bang_Growth4_Growing_9:
    dw $0004                                                             ;A3C591;
    %spritemapEntry(1, $43ED, $ED, 0, 1, 3, 0, $14A)
    %spritemapEntry(1, $43ED, $03, 1, 1, 3, 0, $14A)
    %spritemapEntry(1, $4203, $03, 1, 0, 3, 0, $14A)
    %spritemapEntry(1, $4203, $ED, 0, 0, 3, 0, $14A)

%anchor($A3C5A7)
Spritemap_Bang_Growth4_Growing_A:
    dw $0001                                                             ;A3C5A7;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $16C)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3C5AE)
UNUSED_Spritemap_Bang_Electricity_A3C5AE:
    dw $0002                                                             ;A3C5AE;
    %spritemapEntry(0, $06, $FC, 0, 0, 3, 0, $164)
    %spritemapEntry(0, $1F5, $F5, 0, 0, 3, 0, $161)

%anchor($A3C5BA)
UNUSED_Spritemap_Bang_Electricity_A3C5BA:
    dw $0002                                                             ;A3C5BA;
    %spritemapEntry(0, $06, $FC, 0, 0, 3, 0, $165)
    %spritemapEntry(0, $1F5, $F5, 0, 0, 3, 0, $162)

%anchor($A3C5C6)
UNUSED_Spritemap_Bang_Electricity_A3C5C6:
    dw $0002                                                             ;A3C5C6;
    %spritemapEntry(0, $06, $FC, 0, 0, 3, 0, $166)
    %spritemapEntry(0, $1F5, $F5, 0, 0, 3, 0, $163)

%anchor($A3C5D2)
UNUSED_Spritemap_Bang_Electricity_A3C5D2:
    dw $0002                                                             ;A3C5D2;
    %spritemapEntry(0, $03, $F5, 0, 1, 3, 0, $161)
    %spritemapEntry(0, $1F2, $FD, 0, 0, 3, 0, $164)

%anchor($A3C5DE)
UNUSED_Spritemap_Bang_Electricity_A3C5DE:
    dw $0002                                                             ;A3C5DE;
    %spritemapEntry(0, $03, $F5, 0, 1, 3, 0, $162)
    %spritemapEntry(0, $1F2, $FD, 0, 0, 3, 0, $165)

%anchor($A3C5EA)
UNUSED_Spritemap_Bang_Electricity_A3C5EA:
    dw $0002                                                             ;A3C5EA;
    %spritemapEntry(0, $1F2, $FD, 0, 0, 3, 0, $166)
    %spritemapEntry(0, $03, $F5, 0, 1, 3, 0, $163)

%anchor($A3C5F6)
UNUSED_Spritemap_Bang_Electricity_A3C5F6:
    dw $0002                                                             ;A3C5F6;
    %spritemapEntry(0, $1FA, $05, 0, 0, 3, 0, $176)
    %spritemapEntry(0, $1FC, $F3, 0, 0, 3, 0, $174)

%anchor($A3C602)
UNUSED_Spritemap_Bang_Electricity_A3C602:
    dw $0002                                                             ;A3C602;
    %spritemapEntry(0, $1FA, $05, 0, 0, 3, 0, $175)
    %spritemapEntry(0, $1FC, $F3, 0, 0, 3, 0, $175)

%anchor($A3C60E)
UNUSED_Spritemap_Bang_Electricity_A3C60E:
    dw $0002                                                             ;A3C60E;
    %spritemapEntry(0, $1FB, $05, 0, 0, 3, 0, $174)
    %spritemapEntry(0, $1FC, $F3, 0, 0, 3, 0, $176)

%anchor($A3C61A)
UNUSED_Spritemap_Bang_Electricity_A3C61A:
    dw $0002                                                             ;A3C61A;
    %spritemapEntry(0, $03, $03, 0, 0, 3, 0, $163)
    %spritemapEntry(0, $1F5, $03, 0, 1, 3, 0, $161)

%anchor($A3C626)
UNUSED_Spritemap_Bang_Electricity_A3C626:
    dw $0002                                                             ;A3C626;
    %spritemapEntry(0, $03, $03, 0, 0, 3, 0, $162)
    %spritemapEntry(0, $1F5, $03, 0, 1, 3, 0, $162)

%anchor($A3C632)
UNUSED_Spritemap_Bang_Electricity_A3C632:
    dw $0002                                                             ;A3C632;
    %spritemapEntry(0, $03, $03, 0, 0, 3, 0, $161)
    %spritemapEntry(0, $1F5, $03, 0, 1, 3, 0, $163)
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A3C63E)
Palette_Skree:
    dw $3800,$3F57,$2E4D,$00E2,$0060,$3AB0,$220B,$1166                   ;A3C63E;
    dw $0924,$7FFF,$039C,$0237,$00D1,$61BF,$38B6,$1448                   ;A3C64E;

%anchor($A3C65E)
InstList_Skree_Idling:
    dw $000A,Spritemap_Skree_0                                           ;A3C65E;
    dw $000A,Spritemap_Skree_2                                           ;A3C662;
    dw $000A,Spritemap_Skree_3                                           ;A3C666;
    dw $000A,Spritemap_Skree_4                                           ;A3C66A;
    dw Instruction_Common_GotoY                                          ;A3C66E;
    dw InstList_Skree_Idling                                             ;A3C670;

%anchor($A3C672)
InstList_Skree_PrepareToLaunchAttack:
    dw $0010,Spritemap_Skree_0                                           ;A3C672;
    dw $0008,Spritemap_Skree_1                                           ;A3C676;
    dw Instruction_Skree_SetAttackReadyFlag                              ;A3C67A;
    dw Instruction_Common_Sleep                                          ;A3C67C;

%anchor($A3C67E)
InstList_Skree_LaunchedAttack_0:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A3C67E;

%anchor($A3C680)
InstList_Skree_LaunchedAttack_1:
    dw $0002,Spritemap_Skree_2                                           ;A3C680;
    dw $0002,Spritemap_Skree_3                                           ;A3C684;
    dw $0002,Spritemap_Skree_4                                           ;A3C688;
    dw $0002,Spritemap_Skree_0                                           ;A3C68C;
    dw Instruction_Common_GotoY                                          ;A3C690;
    dw InstList_Skree_LaunchedAttack_1                                   ;A3C692;

%anchor($A3C694)
UNUSED_InstList_Skree_StopAnimating_A3C694:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A3C694;
    dw $0001,Spritemap_Skree_0                                           ;A3C696;
    dw Instruction_Common_Sleep                                          ;A3C69A;

%anchor($A3C69C)
InstListPointers_Skree:
; Indexed by [enemy $0FAE]
    dw InstList_Skree_Idling                                             ;A3C69C;
    dw InstList_Skree_PrepareToLaunchAttack                              ;A3C69E;
    dw InstList_Skree_LaunchedAttack_0                                   ;A3C6A0;
    dw UNUSED_InstList_Skree_StopAnimating_A3C694                        ;A3C6A2;

%anchor($A3C6A4)
Instruction_Skree_SetAttackReadyFlag:
    LDX.W $0E54                                                          ;A3C6A4;
    LDA.W #$0001                                                         ;A3C6A7;
    STA.W $0FB0,X                                                        ;A3C6AA;
    RTL                                                                  ;A3C6AD;


%anchor($A3C6AE)
InitAI_Skree:
    LDX.W $0E54                                                          ;A3C6AE;
    STZ.W $0FAC,X                                                        ;A3C6B1;
    STZ.W $0FAE,X                                                        ;A3C6B4;
    STZ.W $0FB0,X                                                        ;A3C6B7;
    LDA.W #InstList_Skree_Idling                                         ;A3C6BA;
    STA.W $0F92,X                                                        ;A3C6BD;
    LDA.W #Function_Skree_Idling                                         ;A3C6C0;
    STA.W $0FAA,X                                                        ;A3C6C3;
    RTL                                                                  ;A3C6C6;


%anchor($A3C6C7)
MainAI_Skree:
    LDX.W $0E54                                                          ;A3C6C7;
    JMP.W ($0FAA,X)                                                      ;A3C6CA;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A3C6CD)
UNUSED_FunctionPointers_Skree_A3C6CD:
    dw Function_Skree_Idling                                             ;A3C6CD;
    dw Function_Skree_PrepareToLaunchAttack                              ;A3C6CF;
    dw Function_Skree_LaunchedAttack                                     ;A3C6D1;
    dw Function_Skree_Burrowing                                          ;A3C6D3;
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3C6D5)
Function_Skree_Idling:
    LDX.W $0E54                                                          ;A3C6D5;
    LDA.W $0F7A,X                                                        ;A3C6D8;
    SEC                                                                  ;A3C6DB;
    SBC.W $0AF6                                                          ;A3C6DC;
    BPL +                                                                ;A3C6DF;
    EOR.W #$FFFF                                                         ;A3C6E1;
    INC A                                                                ;A3C6E4;

  + CMP.W #$0030                                                         ;A3C6E5;
    BCS .return                                                          ;A3C6E8;
    INC.W $0FAC,X                                                        ;A3C6EA;
    JSR.W SetSkreeInstListPointer                                        ;A3C6ED;
    LDA.W #Function_Skree_PrepareToLaunchAttack                          ;A3C6F0;
    STA.W $0FAA,X                                                        ;A3C6F3;

.return:
    RTL                                                                  ;A3C6F6;


%anchor($A3C6F7)
Function_Skree_PrepareToLaunchAttack:
    LDA.W $0FB0,X                                                        ;A3C6F7;
    BEQ .return                                                          ;A3C6FA;
    STZ.W $0FB0,X                                                        ;A3C6FC;
    LDX.W $0E54                                                          ;A3C6FF;
    INC.W $0FAC,X                                                        ;A3C702;
    JSR.W SetSkreeInstListPointer                                        ;A3C705;
    LDA.W #Function_Skree_LaunchedAttack                                 ;A3C708;
    STA.W $0FAA,X                                                        ;A3C70B;
    LDA.W #$005B                                                         ;A3C70E;
    JSL.L QueueSound_Lib2_Max6                                           ;A3C711;

.return:
    RTL                                                                  ;A3C715;


%anchor($A3C716)
Function_Skree_LaunchedAttack:
    LDX.W $0E54                                                          ;A3C716;
    LDA.W #$0015                                                         ;A3C719;
    STA.W $0FA8,X                                                        ;A3C71C;
    LDA.W #$0006                                                         ;A3C71F;
    STA.B $14                                                            ;A3C722;
    STZ.B $12                                                            ;A3C724;
    LDA.W $0F86,X                                                        ;A3C726;
    ORA.W #$0003                                                         ;A3C729;
    STA.W $0F86,X                                                        ;A3C72C;
    LDX.W $0E54                                                          ;A3C72F;
    JSL.L CheckForVerticalSolidBlockCollision_SkreeMetaree               ;A3C732;
    BCS .collision                                                       ;A3C736;
    LDX.W $0E54                                                          ;A3C738;
    LDA.W $0F7E,X                                                        ;A3C73B;
    CLC                                                                  ;A3C73E;
    ADC.W #$0006                                                         ;A3C73F;
    STA.W $0F7E,X                                                        ;A3C742;
    LDA.W #$0001                                                         ;A3C745;
    STA.W $0E24                                                          ;A3C748;
    LDA.W $0F7A,X                                                        ;A3C74B;
    CMP.W $0AF6                                                          ;A3C74E;
    BMI .steerRight                                                      ;A3C751;
    LDA.W #$FFFF                                                         ;A3C753;
    STA.W $0E24                                                          ;A3C756;

.steerRight:
    LDA.W $0F7A,X                                                        ;A3C759;
    CLC                                                                  ;A3C75C;
    ADC.W $0E24                                                          ;A3C75D;
    STA.W $0F7A,X                                                        ;A3C760;
    BRA .return                                                          ;A3C763;


.collision:
    LDX.W $0E54                                                          ;A3C765;
    LDA.W #$0001                                                         ;A3C768;
    STA.W $0F94,X                                                        ;A3C76B;
    STZ.W $0F90,X                                                        ;A3C76E;
    LDA.W #Function_Skree_Burrowing                                      ;A3C771;
    STA.W $0FAA,X                                                        ;A3C774;
    LDA.W #$005C                                                         ;A3C777;
    JSL.L QueueSound_Lib2_Max6                                           ;A3C77A;

.return:
    RTL                                                                  ;A3C77E;


%anchor($A3C77F)
Function_Skree_Burrowing:
    LDX.W $0E54                                                          ;A3C77F;
    DEC.W $0FA8,X                                                        ;A3C782;
    BEQ .delete                                                          ;A3C785;
    LDA.W $0FA8,X                                                        ;A3C787;
    CMP.W #$0008                                                         ;A3C78A;
    BNE .timerNot8                                                       ;A3C78D;
    LDX.W $0E54                                                          ;A3C78F;
    LDY.W #EnemyProjectile_SkreeParticles_DownRight                      ;A3C792;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A3C795;
    LDY.W #EnemyProjectile_SkreeParticles_UpRight                        ;A3C799;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A3C79C;
    LDY.W #EnemyProjectile_SkreeParticles_DownLeft                       ;A3C7A0;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A3C7A3;
    LDY.W #EnemyProjectile_SkreeParticles_UpLeft                         ;A3C7A7;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A3C7AA;

.timerNot8:
    LDX.W $0E54                                                          ;A3C7AE;
    INC.W $0F7E,X                                                        ;A3C7B1;
    RTL                                                                  ;A3C7B4;


.delete:
    LDX.W $0E54                                                          ;A3C7B5;
    LDA.W $0F96,X                                                        ;A3C7B8;
    ORA.W $0F98,X                                                        ;A3C7BB;
    STA.L $7E7006,X                                                      ;A3C7BE;
    LDA.W #$0A00                                                         ;A3C7C2;
    STA.W $0F96,X                                                        ;A3C7C5;
    STZ.W $0F98,X                                                        ;A3C7C8;
    LDA.W $0F86,X                                                        ;A3C7CB;
    ORA.W #$0200                                                         ;A3C7CE;
    STA.W $0F86,X                                                        ;A3C7D1;
    RTL                                                                  ;A3C7D4;


%anchor($A3C7D5)
SetSkreeInstListPointer:
    LDX.W $0E54                                                          ;A3C7D5;
    LDA.W $0FAC,X                                                        ;A3C7D8;
    CMP.W $0FAE,X                                                        ;A3C7DB;
    BEQ .return                                                          ;A3C7DE;
    STA.W $0FAE,X                                                        ;A3C7E0;
    ASL A                                                                ;A3C7E3;
    TAY                                                                  ;A3C7E4;
    LDA.W InstListPointers_Skree,Y                                       ;A3C7E5;
    STA.W $0F92,X                                                        ;A3C7E8;
    LDA.W #$0001                                                         ;A3C7EB;
    STA.W $0F94,X                                                        ;A3C7EE;
    STZ.W $0F90,X                                                        ;A3C7F1;

.return:
    RTS                                                                  ;A3C7F4;


%anchor($A3C7F5)
EnemyShot_Skree:
    LDX.W $0E54                                                          ;A3C7F5;
    JSL.L CommonA3_NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic     ;A3C7F8;
    LDX.W $0E54                                                          ;A3C7FC;
    LDA.W $0F8C,X                                                        ;A3C7FF;
    BNE .return                                                          ;A3C802;
    LDA.W $0FA8,X                                                        ;A3C804;
    LDX.W $0E54                                                          ;A3C807;
    LDY.W #EnemyProjectile_SkreeParticles_DownRight                      ;A3C80A;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A3C80D;
    LDY.W #EnemyProjectile_SkreeParticles_UpRight                        ;A3C811;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A3C814;
    LDY.W #EnemyProjectile_SkreeParticles_DownLeft                       ;A3C818;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A3C81B;
    LDY.W #EnemyProjectile_SkreeParticles_UpLeft                         ;A3C81F;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A3C822;
    LDY.W #$0002                                                         ;A3C826;
    LDA.W $18A6                                                          ;A3C829;
    ASL A                                                                ;A3C82C;
    TAX                                                                  ;A3C82D;
    LDA.W $0C18,X                                                        ;A3C82E;
    AND.W #$0F00                                                         ;A3C831;
    CMP.W #$0200                                                         ;A3C834;
    BEQ .superMissile                                                    ;A3C837;
    LDY.W #$0000                                                         ;A3C839;

.superMissile:
    TYA                                                                  ;A3C83C;
    JSL.L EnemyDeath                                                     ;A3C83D;

.return:
    RTL                                                                  ;A3C841;


%anchor($A3C842)
Spritemap_Skree_0:
    dw $0006                                                             ;A3C842;
    %spritemapEntry(0, $00, $0C, 0, 1, 2, 0, $112)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $1F8, $0C, 0, 0, 2, 0, $112)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 0, $100)

%anchor($A3C862)
Spritemap_Skree_1:
    dw $0004                                                             ;A3C862;
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $105)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $105)
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 0, $103)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 0, $103)

%anchor($A3C878)
Spritemap_Skree_2:
    dw $0002                                                             ;A3C878;
    %spritemapEntry(1, $1F8, $04, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F4, 0, 0, 2, 0, $106)

%anchor($A3C884)
Spritemap_Skree_3:
    dw $0004                                                             ;A3C884;
    %spritemapEntry(0, $1FC, $0C, 0, 0, 2, 0, $11B)
    %spritemapEntry(0, $1FC, $04, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $FC, 0, 0, 2, 0, $11A)
    %spritemapEntry(0, $1FC, $F4, 0, 0, 2, 0, $10A)

%anchor($A3C89A)
Spritemap_Skree_4:
    dw $0002                                                             ;A3C89A;
    %spritemapEntry(1, $1F8, $04, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 0, 2, 0, $10C)


%anchor($A3C8A6)
Palette_Yard:
    dw $3800,$57FF,$42F7,$158C,$00A5,$4F5A,$36B5,$2610                   ;A3C8A6;
    dw $1DCE,$77FF,$62B5,$314A,$1063,$4D1F,$38B6,$246E                   ;A3C8B6;

%anchor($A3C8C6)
InstList_Yard_OutsideTurn_UpsideRight_MovingUp:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C8C6;
    dw RTL_A3CF5F                                                        ;A3C8C8;
    dw Instruction_Yard_HidingInstListInY                                ;A3C8CA;
    dw RTL_A3CF5F                                                        ;A3C8CC;
    dw $0007,Spritemap_Yard_15                                           ;A3C8CE;
    dw $0004,Spritemap_Yard_16                                           ;A3C8D2;
    dw $0007,Spritemap_Yard_17                                           ;A3C8D6;
    dw Instruction_Yard_MoveByPixelsInY,$FFFC,$FFF8                      ;A3C8DA;

%anchor($A3C8E0)
InstList_Yard_Crawling_UpsideUp_MovingLeft:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C8E0;
    dw Function_Yard_Movement_Crawling_UpsideUp_MovingLeft               ;A3C8E2;
    dw Instruction_Yard_HidingInstListInY                                ;A3C8E4;
    dw InstList_Yard_Hiding_UpsideUp_MovingLeft                          ;A3C8E6;
    dw Instruction_Yard_DirectionInY,$0006                               ;A3C8E8;
    dw $0009,Spritemap_Yard_0                                            ;A3C8EA;
    dw $000D,Spritemap_Yard_1                                            ;A3C8F0;
    dw $0009,Spritemap_Yard_2                                            ;A3C8F4;
    dw Instruction_Common_GotoY                                          ;A3C8F8;
    dw InstList_Yard_Crawling_UpsideUp_MovingLeft                        ;A3C8FA;

%anchor($A3C8FC)
InstList_Yard_OutsideTurn_UpsideUp_MovingLeft:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C8FC;
    dw RTL_A3CF5F                                                        ;A3C8FE;
    dw Instruction_Yard_HidingInstListInY                                ;A3C900;
    dw RTL_A3CF5F                                                        ;A3C902;
    dw $0007,Spritemap_Yard_3                                            ;A3C904;
    dw $0004,Spritemap_Yard_4                                            ;A3C908;
    dw $0007,Spritemap_Yard_5                                            ;A3C90C;
    dw Instruction_Yard_MoveByPixelsInY,$FFF8,$0004                      ;A3C910;

%anchor($A3C916)
InstList_Yard_Crawling_UpsideLeft_MovingDown:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C916;
    dw Function_Yard_Movement_Crawling_UpsideLeft_MovingDown             ;A3C918;
    dw Instruction_Yard_HidingInstListInY                                ;A3C91A;
    dw InstList_Yard_Hiding_UpsideLeft_MovingDown                        ;A3C91C;
    dw Instruction_Yard_DirectionInY,$0003                               ;A3C91E;
    dw $0009,Spritemap_Yard_6                                            ;A3C920;
    dw $000D,Spritemap_Yard_7                                            ;A3C926;
    dw $0009,Spritemap_Yard_8                                            ;A3C92A;
    dw Instruction_Common_GotoY                                          ;A3C92E;
    dw InstList_Yard_Crawling_UpsideLeft_MovingDown                      ;A3C930;

%anchor($A3C932)
InstList_Yard_OutsideTurn_UpsideLeft_MovingDown:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C932;
    dw RTL_A3CF5F                                                        ;A3C934;
    dw Instruction_Yard_HidingInstListInY                                ;A3C936;
    dw RTL_A3CF5F                                                        ;A3C938;
    dw $0007,Spritemap_Yard_9                                            ;A3C93A;
    dw $0004,Spritemap_Yard_A                                            ;A3C93E;
    dw $0007,Spritemap_Yard_B                                            ;A3C942;
    dw Instruction_Yard_MoveByPixelsInY,$0004,$0008                      ;A3C946;

%anchor($A3C94C)
InstList_Yard_Crawling_UpsideDown_MovingRight:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C94C;
    dw Function_Yard_Movement_Crawling_UpsideDown_MovingRight            ;A3C94E;
    dw Instruction_Yard_HidingInstListInY                                ;A3C950;
    dw InstList_Yard_Hiding_UpsideDown_MovingRight                       ;A3C952;
    dw Instruction_Yard_DirectionInY,$0005                               ;A3C954;
    dw $0009,Spritemap_Yard_C                                            ;A3C956;
    dw $000D,Spritemap_Yard_D                                            ;A3C95C;
    dw $0009,Spritemap_Yard_E                                            ;A3C960;
    dw Instruction_Common_GotoY                                          ;A3C964;
    dw InstList_Yard_Crawling_UpsideDown_MovingRight                     ;A3C966;

%anchor($A3C968)
InstList_Yard_OutsideTurn_UpsideDown_MovingRight:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C968;
    dw RTL_A3CF5F                                                        ;A3C96A;
    dw Instruction_Yard_HidingInstListInY                                ;A3C96C;
    dw RTL_A3CF5F                                                        ;A3C96E;
    dw $0007,Spritemap_Yard_F                                            ;A3C970;
    dw $0004,Spritemap_Yard_10                                           ;A3C974;
    dw $0007,Spritemap_Yard_11                                           ;A3C978;
    dw Instruction_Yard_MoveByPixelsInY,$0008,$FFFC                      ;A3C97C;

%anchor($A3C982)
InstList_Yard_Crawling_UpsideRight_MovingUp:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C982;
    dw Function_Yard_Movement_Crawling_UpsideRight_MovingUp              ;A3C984;
    dw Instruction_Yard_HidingInstListInY                                ;A3C986;
    dw InstList_Yard_Hiding_UpsideRight_MovingUp                         ;A3C988;
    dw Instruction_Yard_DirectionInY,$0000                               ;A3C98A;
    dw $0009,Spritemap_Yard_12                                           ;A3C98C;
    dw $000D,Spritemap_Yard_13                                           ;A3C992;
    dw $0009,Spritemap_Yard_14                                           ;A3C996;
    dw Instruction_Common_GotoY                                          ;A3C99A;
    dw InstList_Yard_Crawling_UpsideRight_MovingUp                       ;A3C99C;

%anchor($A3C99E)
InstList_Yard_OutsideTurn_UpsideLeft_MovingUp:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C99E;
    dw RTL_A3CF5F                                                        ;A3C9A0;
    dw Instruction_Yard_HidingInstListInY                                ;A3C9A2;
    dw RTL_A3CF5F                                                        ;A3C9A4;
    dw $0007,Spritemap_Yard_35                                           ;A3C9A6;
    dw $0004,Spritemap_Yard_36                                           ;A3C9AA;
    dw $0007,Spritemap_Yard_37                                           ;A3C9AE;
    dw Instruction_Yard_MoveByPixelsInY,$0004,$FFF8                      ;A3C9B2;

%anchor($A3C9B8)
InstList_Yard_Crawling_UpsideUp_MovingRight:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C9B8;
    dw Function_Yard_Movement_Crawling_UpsideUp_MovingRight              ;A3C9BA;
    dw Instruction_Yard_HidingInstListInY                                ;A3C9BC;
    dw InstList_Yard_Hiding_UpsideUp_MovingRight                         ;A3C9BE;
    dw Instruction_Yard_DirectionInY,$0007                               ;A3C9C0;
    dw $0009,Spritemap_Yard_20                                           ;A3C9C2;
    dw $000D,Spritemap_Yard_21                                           ;A3C9C8;
    dw $0009,Spritemap_Yard_22                                           ;A3C9CC;
    dw Instruction_Common_GotoY                                          ;A3C9D0;
    dw InstList_Yard_Crawling_UpsideUp_MovingRight                       ;A3C9D2;

%anchor($A3C9D4)
InstList_Yard_OutsideTurn_UpsideUp_MovingRight:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C9D4;
    dw RTL_A3CF5F                                                        ;A3C9D6;
    dw Instruction_Yard_HidingInstListInY                                ;A3C9D8;
    dw RTL_A3CF5F                                                        ;A3C9DA;
    dw $0007,Spritemap_Yard_23                                           ;A3C9DC;
    dw $0004,Spritemap_Yard_24                                           ;A3C9E0;
    dw $0007,Spritemap_Yard_25                                           ;A3C9E4;
    dw Instruction_Yard_MoveByPixelsInY,$0008,$0004                      ;A3C9E8;

%anchor($A3C9EE)
InstList_Yard_Crawling_UpsideRight_MovingDown:
    dw Instruction_Yard_MovementFunctionInY                              ;A3C9EE;
    dw Function_Yard_Movement_Crawling_UpsideRight_MovingDown            ;A3C9F0;
    dw Instruction_Yard_HidingInstListInY                                ;A3C9F2;
    dw InstList_Yard_Hiding_UpsideRight_MovingDown                       ;A3C9F4;
    dw Instruction_Yard_DirectionInY,$0001                               ;A3C9F6;
    dw $0009,Spritemap_Yard_26                                           ;A3C9F8;
    dw $000D,Spritemap_Yard_27                                           ;A3C9FE;
    dw $0009,Spritemap_Yard_28                                           ;A3CA02;
    dw Instruction_Common_GotoY                                          ;A3CA06;
    dw InstList_Yard_Crawling_UpsideRight_MovingDown                     ;A3CA08;

%anchor($A3CA0A)
InstList_Yard_OutsideTurn_UpsideRight_MovingDown:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CA0A;
    dw RTL_A3CF5F                                                        ;A3CA0C;
    dw Instruction_Yard_HidingInstListInY                                ;A3CA0E;
    dw RTL_A3CF5F                                                        ;A3CA10;
    dw $0007,Spritemap_Yard_29                                           ;A3CA12;
    dw $0004,Spritemap_Yard_2A                                           ;A3CA16;
    dw $0007,Spritemap_Yard_2B                                           ;A3CA1A;
    dw Instruction_Yard_MoveByPixelsInY,$FFFC,$0008                      ;A3CA1E;

%anchor($A3CA24)
InstList_Yard_Crawling_UpsideDown_MovingLeft:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CA24;
    dw Function_Yard_Movement_Crawling_UpsideDown_MovingLeft             ;A3CA26;
    dw Instruction_Yard_HidingInstListInY                                ;A3CA28;
    dw InstList_Yard_Hiding_UpsideDown_MovingLeft                        ;A3CA2A;
    dw Instruction_Yard_DirectionInY,$0004                               ;A3CA2C;
    dw $0009,Spritemap_Yard_2C                                           ;A3CA2E;
    dw $000D,Spritemap_Yard_2D                                           ;A3CA34;
    dw $0009,Spritemap_Yard_2E                                           ;A3CA38;
    dw Instruction_Common_GotoY                                          ;A3CA3C;
    dw InstList_Yard_Crawling_UpsideDown_MovingLeft                      ;A3CA3E;

%anchor($A3CA40)
InstList_Yard_OutsideTurn_UpsideDown_MovingLeft:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CA40;
    dw RTL_A3CF5F                                                        ;A3CA42;
    dw Instruction_Yard_HidingInstListInY                                ;A3CA44;
    dw RTL_A3CF5F                                                        ;A3CA46;
    dw $0007,Spritemap_Yard_2F                                           ;A3CA48;
    dw $0004,Spritemap_Yard_30                                           ;A3CA4C;
    dw $0007,Spritemap_Yard_31                                           ;A3CA50;
    dw Instruction_Yard_MoveByPixelsInY,$FFF8,$FFFC                      ;A3CA54;

%anchor($A3CA5A)
InstList_Yard_Crawling_UpsideLeft_MovingUp:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CA5A;
    dw Function_Yard_Movement_Crawling_UpsideLeft_MovingUp               ;A3CA5C;
    dw Instruction_Yard_HidingInstListInY                                ;A3CA5E;
    dw InstList_Yard_Hiding_UpsideLeft_MovingUp                          ;A3CA60;
    dw Instruction_Yard_DirectionInY,$0002                               ;A3CA62;
    dw $0009,Spritemap_Yard_32                                           ;A3CA64;
    dw $000D,Spritemap_Yard_33                                           ;A3CA6A;
    dw $0009,Spritemap_Yard_34                                           ;A3CA6E;
    dw Instruction_Common_GotoY                                          ;A3CA72;
    dw InstList_Yard_Crawling_UpsideLeft_MovingUp                        ;A3CA74;

%anchor($A3CA76)
InstList_Yard_InsideTurn_UpsideUp_MovingLeft:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CA76;
    dw RTL_A3CF5F                                                        ;A3CA78;
    dw Instruction_Yard_HidingInstListInY                                ;A3CA7A;
    dw RTL_A3CF5F                                                        ;A3CA7C;
    dw $0007,Spritemap_Yard_40                                           ;A3CA7E;
    dw $0004,Spritemap_Yard_41                                           ;A3CA82;
    dw $0007,Spritemap_Yard_42                                           ;A3CA86;
    dw Instruction_Common_GotoY                                          ;A3CA8A;
    dw InstList_Yard_Crawling_UpsideRight_MovingUp                       ;A3CA8C;

%anchor($A3CA8E)
InstList_Yard_InsideTurn_UpsideRight_MovingUp:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CA8E;
    dw RTL_A3CF5F                                                        ;A3CA90;
    dw Instruction_Yard_HidingInstListInY                                ;A3CA92;
    dw RTL_A3CF5F                                                        ;A3CA94;
    dw $0007,Spritemap_Yard_43                                           ;A3CA96;
    dw $0004,Spritemap_Yard_44                                           ;A3CA9A;
    dw $0007,Spritemap_Yard_45                                           ;A3CA9E;
    dw Instruction_Common_GotoY                                          ;A3CAA2;
    dw InstList_Yard_Crawling_UpsideDown_MovingRight                     ;A3CAA4;

%anchor($A3CAA6)
InstList_Yard_InsideTurn_UpsideDown_MovingRight:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CAA6;
    dw RTL_A3CF5F                                                        ;A3CAA8;
    dw Instruction_Yard_HidingInstListInY                                ;A3CAAA;
    dw RTL_A3CF5F                                                        ;A3CAAC;
    dw $0007,Spritemap_Yard_46                                           ;A3CAAE;
    dw $0004,Spritemap_Yard_47                                           ;A3CAB2;
    dw $0007,Spritemap_Yard_48                                           ;A3CAB6;
    dw Instruction_Common_GotoY                                          ;A3CABA;
    dw InstList_Yard_Crawling_UpsideLeft_MovingDown                      ;A3CABC;

%anchor($A3CABE)
InstList_Yard_InsideTurn_UpsideLeft_MovingDown:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CABE;
    dw RTL_A3CF5F                                                        ;A3CAC0;
    dw Instruction_Yard_HidingInstListInY                                ;A3CAC2;
    dw RTL_A3CF5F                                                        ;A3CAC4;
    dw $0007,Spritemap_Yard_49                                           ;A3CAC6;
    dw $0004,Spritemap_Yard_4A                                           ;A3CACA;
    dw $0007,Spritemap_Yard_4B                                           ;A3CACE;
    dw Instruction_Common_GotoY                                          ;A3CAD2;
    dw InstList_Yard_Crawling_UpsideUp_MovingLeft                        ;A3CAD4;

%anchor($A3CAD6)
InstList_Yard_InsideTurn_UpsideUp_MovingRight:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CAD6;
    dw RTL_A3CF5F                                                        ;A3CAD8;
    dw Instruction_Yard_HidingInstListInY                                ;A3CADA;
    dw RTL_A3CF5F                                                        ;A3CADC;
    dw $0007,Spritemap_Yard_54                                           ;A3CADE;
    dw $0004,Spritemap_Yard_55                                           ;A3CAE2;
    dw $0007,Spritemap_Yard_56                                           ;A3CAE6;
    dw Instruction_Common_GotoY                                          ;A3CAEA;
    dw InstList_Yard_Crawling_UpsideLeft_MovingUp                        ;A3CAEC;

%anchor($A3CAEE)
InstList_Yard_InsideTurn_UpsideLeft_MovingUp:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CAEE;
    dw RTL_A3CF5F                                                        ;A3CAF0;
    dw Instruction_Yard_HidingInstListInY                                ;A3CAF2;
    dw RTL_A3CF5F                                                        ;A3CAF4;
    dw $0007,Spritemap_Yard_57                                           ;A3CAF6;
    dw $0004,Spritemap_Yard_58                                           ;A3CAFA;
    dw $0007,Spritemap_Yard_59                                           ;A3CAFE;
    dw Instruction_Common_GotoY                                          ;A3CB02;
    dw InstList_Yard_Crawling_UpsideDown_MovingLeft                      ;A3CB04;

%anchor($A3CB06)
InstList_Yard_InsideTurn_UpsideDown_MovingLeft:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CB06;
    dw RTL_A3CF5F                                                        ;A3CB08;
    dw Instruction_Yard_HidingInstListInY                                ;A3CB0A;
    dw RTL_A3CF5F                                                        ;A3CB0C;
    dw $0007,Spritemap_Yard_5A                                           ;A3CB0E;
    dw $0004,Spritemap_Yard_5B                                           ;A3CB12;
    dw $0007,Spritemap_Yard_5C                                           ;A3CB16;
    dw Instruction_Common_GotoY                                          ;A3CB1A;
    dw InstList_Yard_Crawling_UpsideRight_MovingDown                     ;A3CB1C;

%anchor($A3CB1E)
InstList_Yard_InsideTurn_UpsideRight_MovingDown:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CB1E;
    dw RTL_A3CF5F                                                        ;A3CB20;
    dw Instruction_Yard_HidingInstListInY                                ;A3CB22;
    dw RTL_A3CF5F                                                        ;A3CB24;
    dw $0007,Spritemap_Yard_5D                                           ;A3CB26;
    dw $0004,Spritemap_Yard_5E                                           ;A3CB2A;
    dw $0007,Spritemap_Yard_5F                                           ;A3CB2E;
    dw Instruction_Common_GotoY                                          ;A3CB32;
    dw InstList_Yard_Crawling_UpsideUp_MovingRight                       ;A3CB34;

%anchor($A3CB36)
InstList_Yard_Hiding_UpsideUp_MovingLeft:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CB36;
    dw Function_Yard_Movement_Hiding                                     ;A3CB38;
    dw $0005,Spritemap_Yard_18                                           ;A3CB3A;
    dw $0001,Spritemap_Yard_19                                           ;A3CB3E;
    dw Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance            ;A3CB42;

%anchor($A3CB44)
InstList_Yard_Hidden_UpsideUp_MovingLeft:
    dw $0030,Spritemap_Yard_4C                                           ;A3CB44;
    dw $0010,Spritemap_Yard_4D                                           ;A3CB48;
    dw Instruction_Common_GotoY                                          ;A3CB4C;
    dw InstList_Yard_Crawling_UpsideUp_MovingLeft                        ;A3CB4E;

%anchor($A3CB50)
InstList_Yard_Hiding_UpsideDown_MovingLeft:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CB50;
    dw Function_Yard_Movement_Hiding                                     ;A3CB52;
    dw $0005,Spritemap_Yard_3C                                           ;A3CB54;
    dw $0001,Spritemap_Yard_3D                                           ;A3CB58;
    dw Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance            ;A3CB5C;
    dw $0030,Spritemap_Yard_64                                           ;A3CB5E;
    dw $0010,Spritemap_Yard_65                                           ;A3CB62;
    dw Instruction_Common_GotoY                                          ;A3CB66;
    dw InstList_Yard_Crawling_UpsideDown_MovingLeft                      ;A3CB68;

%anchor($A3CB6A)
InstList_Yard_Hiding_UpsideDown_MovingRight:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CB6A;
    dw Function_Yard_Movement_Hiding                                     ;A3CB6C;
    dw $0005,Spritemap_Yard_1C                                           ;A3CB6E;
    dw $0001,Spritemap_Yard_1D                                           ;A3CB72;
    dw Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance            ;A3CB76;
    dw $0030,Spritemap_Yard_50                                           ;A3CB78;
    dw $0010,Spritemap_Yard_51                                           ;A3CB7C;
    dw Instruction_Common_GotoY                                          ;A3CB80;
    dw InstList_Yard_Crawling_UpsideDown_MovingRight                     ;A3CB82;

%anchor($A3CB84)
InstList_Yard_Hiding_UpsideUp_MovingRight:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CB84;
    dw Function_Yard_Movement_Hiding                                     ;A3CB86;
    dw $0005,Spritemap_Yard_38                                           ;A3CB88;
    dw $0001,Spritemap_Yard_39                                           ;A3CB8C;
    dw Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance            ;A3CB90;

%anchor($A3CB92)
InstList_Yard_Hidden_UpsideUp_MovingRight:
    dw $0030,Spritemap_Yard_60                                           ;A3CB92;
    dw $0010,Spritemap_Yard_61                                           ;A3CB96;
    dw Instruction_Common_GotoY                                          ;A3CB9A;
    dw InstList_Yard_Crawling_UpsideUp_MovingRight                       ;A3CB9C;

%anchor($A3CB9E)
InstList_Yard_Hiding_UpsideRight_MovingUp:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CB9E;
    dw Function_Yard_Movement_Hiding                                     ;A3CBA0;
    dw $0005,Spritemap_Yard_1E                                           ;A3CBA2;
    dw $0001,Spritemap_Yard_1F                                           ;A3CBA6;
    dw Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance            ;A3CBAA;
    dw $0030,Spritemap_Yard_4E                                           ;A3CBAC;
    dw $0010,Spritemap_Yard_4F                                           ;A3CBB0;
    dw Instruction_Common_GotoY                                          ;A3CBB4;
    dw InstList_Yard_Crawling_UpsideRight_MovingUp                       ;A3CBB6;

%anchor($A3CBB8)
InstList_Yard_Hiding_UpsideLeft_MovingUp:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CBB8;
    dw Function_Yard_Movement_Hiding                                     ;A3CBBA;
    dw $0005,Spritemap_Yard_3E                                           ;A3CBBC;
    dw $0001,Spritemap_Yard_3F                                           ;A3CBC0;
    dw Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance            ;A3CBC4;
    dw $0030,Spritemap_Yard_62                                           ;A3CBC6;
    dw $0010,Spritemap_Yard_63                                           ;A3CBCA;
    dw Instruction_Common_GotoY                                          ;A3CBCE;
    dw InstList_Yard_Crawling_UpsideLeft_MovingUp                        ;A3CBD0;

%anchor($A3CBD2)
InstList_Yard_Hiding_UpsideLeft_MovingDown:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CBD2;
    dw Function_Yard_Movement_Hiding                                     ;A3CBD4;
    dw $0005,Spritemap_Yard_1A                                           ;A3CBD6;
    dw $0001,Spritemap_Yard_1B                                           ;A3CBDA;
    dw Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance            ;A3CBDE;
    dw $0030,Spritemap_Yard_52                                           ;A3CBE0;
    dw $0010,Spritemap_Yard_53                                           ;A3CBE4;
    dw Instruction_Common_GotoY                                          ;A3CBE8;
    dw InstList_Yard_Crawling_UpsideLeft_MovingDown                      ;A3CBEA;

%anchor($A3CBEC)
InstList_Yard_Hiding_UpsideRight_MovingDown:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CBEC;
    dw Function_Yard_Movement_Hiding                                     ;A3CBEE;
    dw $0005,Spritemap_Yard_3A                                           ;A3CBF0;
    dw $0001,Spritemap_Yard_3B                                           ;A3CBF4;
    dw Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance            ;A3CBF8;
    dw $0030,Spritemap_Yard_66                                           ;A3CBFA;
    dw $0010,Spritemap_Yard_67                                           ;A3CBFE;
    dw Instruction_Common_GotoY                                          ;A3CC02;
    dw InstList_Yard_Crawling_UpsideRight_MovingDown                     ;A3CC04;

%anchor($A3CC06)
InstList_Yard_Airborne_FacingLeft_0:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CC06;
    dw Function_Yard_Movement_Airborne                                   ;A3CC08;
    dw $0003,Spritemap_Yard_1F                                           ;A3CC0A;

%anchor($A3CC0E)
InstList_Yard_Airborne_FacingLeft_1:
    dw $0003,Spritemap_Yard_1B                                           ;A3CC0E;
    dw $0003,Spritemap_Yard_1D                                           ;A3CC12;
    dw $0003,Spritemap_Yard_1F                                           ;A3CC16;
    dw Instruction_Common_GotoY                                          ;A3CC1A;
    dw InstList_Yard_Airborne_FacingLeft_1                               ;A3CC1C;

%anchor($A3CC1E)
InstList_Yard_Airborne_FacingRight_0:
    dw Instruction_Yard_MovementFunctionInY                              ;A3CC1E;
    dw Function_Yard_Movement_Airborne                                   ;A3CC20;
    dw $0003,Spritemap_Yard_3F                                           ;A3CC22;

%anchor($A3CC26)
InstList_Yard_Airborne_FacingRight_1:
    dw $0003,Spritemap_Yard_3B                                           ;A3CC26;
    dw $0003,Spritemap_Yard_3D                                           ;A3CC2A;
    dw $0003,Spritemap_Yard_3F                                           ;A3CC2E;
    dw Instruction_Common_GotoY                                          ;A3CC32;
    dw InstList_Yard_Airborne_FacingRight_1                              ;A3CC34;

%anchor($A3CC36)
Instruction_Yard_MovementFunctionInY:
    LDA.W $0000,Y                                                        ;A3CC36;
    STA.W $0FB2,X                                                        ;A3CC39;
    INY                                                                  ;A3CC3C;
    INY                                                                  ;A3CC3D;
    RTL                                                                  ;A3CC3E;


%anchor($A3CC3F)
Instruction_Yard_HidingInstListInY:
    LDA.W $0000,Y                                                        ;A3CC3F;
    STA.W $0FAE,X                                                        ;A3CC42;
    INY                                                                  ;A3CC45;
    INY                                                                  ;A3CC46;
    RTL                                                                  ;A3CC47;


%anchor($A3CC48)
Instruction_Yard_DirectionInY:
    PHY                                                                  ;A3CC48;
    LDA.W $0000,Y                                                        ;A3CC49;
    STA.L $7E780E,X                                                      ;A3CC4C;
    ASL A                                                                ;A3CC50;
    ASL A                                                                ;A3CC51;
    ASL A                                                                ;A3CC52;
    TAY                                                                  ;A3CC53;
    LDA.W YardDirectionData_airborneFacingDirection,Y                    ;A3CC54;
    STA.L $000FAC,X                                                      ;A3CC57;
    PLY                                                                  ;A3CC5B;
    INY                                                                  ;A3CC5C;
    INY                                                                  ;A3CC5D;
    RTL                                                                  ;A3CC5E;


%anchor($A3CC5F)
Instruction_Yard_MoveByPixelsInY:
    LDA.W $0000,Y                                                        ;A3CC5F;
    CLC                                                                  ;A3CC62;
    ADC.W $0F7A,X                                                        ;A3CC63;
    STA.W $0F7A,X                                                        ;A3CC66;
    LDA.W $0002,Y                                                        ;A3CC69;
    CLC                                                                  ;A3CC6C;
    ADC.W $0F7E,X                                                        ;A3CC6D;
    STA.W $0F7E,X                                                        ;A3CC70;
    INY                                                                  ;A3CC73;
    INY                                                                  ;A3CC74;
    INY                                                                  ;A3CC75;
    INY                                                                  ;A3CC76;
    RTL                                                                  ;A3CC77;


%anchor($A3CC78)
Instruction_Yard_GoBack4BytesIfHidingOr50PercentChance:
    LDA.L $7E7810,X                                                      ;A3CC78;
    CMP.W #$0002                                                         ;A3CC7C;
    BEQ .goBack                                                          ;A3CC7F;
    JSL.L GenerateRandomNumber                                           ;A3CC81;
    BIT.W #$0001                                                         ;A3CC85;
    BNE .goBack                                                          ;A3CC88;
    RTL                                                                  ;A3CC8A;


.goBack:
    TYA                                                                  ;A3CC8B;
    SEC                                                                  ;A3CC8C;
    SBC.W #$0006                                                         ;A3CC8D;
    TAY                                                                  ;A3CC90;
    RTL                                                                  ;A3CC91;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A3CC92)
UNUSED_Instruction_Yard_A3CC92:
    NOP                                                                  ;A3CC92;
    PHY                                                                  ;A3CC93;
    JSL.L UNUSED_MakeYardFaceSamus_A3D315                                ;A3CC94;
    BCC .notTurningAround                                                ;A3CC98;
    PLY                                                                  ;A3CC9A;
    LDA.W $0F92,X                                                        ;A3CC9B;
    TAY                                                                  ;A3CC9E;
    RTL                                                                  ;A3CC9F;


.notTurningAround:
    PLY                                                                  ;A3CCA0;
    RTL                                                                  ;A3CCA1;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A3CCA2)
YardCrawlingSpeeds:
; Unit 1/100h px/frame. Indexed by [enemy parameter 1] * 2
    dw $0040,$0080,$00C0,$0100,$0140,$0180,$01C0,$0200                   ;A3CCA2;
    dw $0240,$0280,$02C0,$0300,$0340,$0380,$0400,$0440                   ;A3CCB2;
    dw $0540,$0580,$05C0,$0600,$0640,$0680,$06C0,$0700                   ;A3CCC2;
    dw $0740,$0780,$07C0,$0800,$0840,$0880,$0800,$0000                   ;A3CCD2;

%anchor($A3CCE2)
YardTurnData:
;        ___________ Outside turn lookahead X offset
;       |      _____ Outside turn lookahead Y offset
;       |     |
  .upsideUp_movingLeft:
    dw $FFF9,$0000                                                       ;A3CCE2;
    dw InstList_Yard_OutsideTurn_UpsideUp_MovingLeft                     ;A3CCE6;
    dw InstList_Yard_InsideTurn_UpsideUp_MovingLeft                      ;A3CCE8;

  .upsideLeft_movingDown:
    dw $0000,$0007                                                       ;A3CCEA;
    dw InstList_Yard_OutsideTurn_UpsideLeft_MovingDown                   ;A3CCEE;
    dw InstList_Yard_InsideTurn_UpsideLeft_MovingDown                    ;A3CCF0;

  .upsideDown_movingRight:
    dw $0007,$0000                                                       ;A3CCF2;
    dw InstList_Yard_OutsideTurn_UpsideDown_MovingRight                  ;A3CCF6;
    dw InstList_Yard_InsideTurn_UpsideDown_MovingRight                   ;A3CCF8;

  .upsideRight_movingUp:
    dw $0000,$FFF9                                                       ;A3CCFA;
    dw InstList_Yard_OutsideTurn_UpsideRight_MovingUp                    ;A3CCFE;
    dw InstList_Yard_InsideTurn_UpsideRight_MovingUp                     ;A3CD00;

  .upsideUp_movingRight:
    dw $0007,$0000                                                       ;A3CD02;
    dw InstList_Yard_OutsideTurn_UpsideUp_MovingRight                    ;A3CD06;
    dw InstList_Yard_InsideTurn_UpsideUp_MovingRight                     ;A3CD08;

  .upsideRight_movingDown:
    dw $0000,$0007                                                       ;A3CD0A;
    dw InstList_Yard_OutsideTurn_UpsideRight_MovingDown                  ;A3CD0E;
    dw InstList_Yard_InsideTurn_UpsideRight_MovingDown                   ;A3CD10;

  .upsideDown_movingLeft:
    dw $FFF9,$0000                                                       ;A3CD12;
    dw InstList_Yard_OutsideTurn_UpsideDown_MovingLeft                   ;A3CD16;
    dw InstList_Yard_InsideTurn_UpsideDown_MovingLeft                    ;A3CD18;

  .upsideLeft_movingUp:
    dw $0000,$FFF9                                                       ;A3CD1A;
    dw InstList_Yard_OutsideTurn_UpsideLeft_MovingUp                     ;A3CD1E;
    dw InstList_Yard_InsideTurn_UpsideLeft_MovingUp                      ;A3CD20;

  .upsideUp_movingLeft_noTurnTransition:
    dw $0000,$0000                                                       ;A3CD22;
    dw InstList_Yard_Crawling_UpsideLeft_MovingDown                      ;A3CD26;
    dw InstList_Yard_Crawling_UpsideRight_MovingUp                       ;A3CD28;

  .upsideDown_movingRight_noTurnTransition:
    dw $0000,$0000                                                       ;A3CD2A;
    dw InstList_Yard_Crawling_UpsideRight_MovingUp                       ;A3CD2E;
    dw InstList_Yard_Crawling_UpsideLeft_MovingDown                      ;A3CD30;

  .upsideUp_movingRight_noTurnTransition:
    dw $0000,$0000                                                       ;A3CD32;
    dw InstList_Yard_Crawling_UpsideRight_MovingDown                     ;A3CD36;
    dw InstList_Yard_Crawling_UpsideLeft_MovingUp                        ;A3CD38;

  .upsideDown_movingLeft_noTurnTransition:
    dw $0000,$0000                                                       ;A3CD3A;
    dw InstList_Yard_Crawling_UpsideLeft_MovingUp                        ;A3CD3E;
    dw InstList_Yard_Crawling_UpsideRight_MovingDown                     ;A3CD40;

%anchor($A3CD42)
YardDirectionData:
; Indexed by [enemy direction] * 8

;              _______________ Movement direction. Not meaningfully used
;             |            ___ Airborne facing direction
;             |           |
  .crawlingInstList:
    dw InstList_Yard_Crawling_UpsideRight_MovingUp                       ;A3CD42;
  .movementDirection:
    dw       $0002                                                       ;A3CD44;
  .hidingInstList:
    dw InstList_Yard_Hiding_UpsideRight_MovingUp                         ;A3CD46;
  .airborneFacingDirection:
    dw                   $0000                                           ;A3CD48;

    dw InstList_Yard_Crawling_UpsideRight_MovingDown                     ;A3CD4A;
    dw       $0003                                                       ;A3CD4C;
    dw InstList_Yard_Hiding_UpsideRight_MovingDown                       ;A3CD4E;
    dw                    $0001                                          ;A3CD50;

    dw InstList_Yard_Crawling_UpsideLeft_MovingUp                        ;A3CD52;
    dw       $0002                                                       ;A3CD54;
    dw InstList_Yard_Hiding_UpsideLeft_MovingUp                          ;A3CD56;
    dw                    $0001                                          ;A3CD58;

    dw InstList_Yard_Crawling_UpsideLeft_MovingDown                      ;A3CD5A;
    dw       $0003                                                       ;A3CD5C;
    dw InstList_Yard_Hiding_UpsideLeft_MovingDown                        ;A3CD5E;
    dw                    $0000                                          ;A3CD60;

    dw InstList_Yard_Crawling_UpsideDown_MovingLeft                      ;A3CD62;
    dw       $0000                                                       ;A3CD64;
    dw InstList_Yard_Hiding_UpsideDown_MovingLeft                        ;A3CD66;
    dw                    $0001                                          ;A3CD68;

    dw InstList_Yard_Crawling_UpsideDown_MovingRight                     ;A3CD6A;
    dw       $0001                                                       ;A3CD6C;
    dw InstList_Yard_Hiding_UpsideDown_MovingRight                       ;A3CD6E;
    dw                    $0000                                          ;A3CD70;

    dw InstList_Yard_Crawling_UpsideUp_MovingLeft                        ;A3CD72;
    dw       $0000                                                       ;A3CD74;
    dw InstList_Yard_Hiding_UpsideUp_MovingLeft                          ;A3CD76;
    dw                    $0000                                          ;A3CD78;

    dw InstList_Yard_Crawling_UpsideUp_MovingRight                       ;A3CD7A;
    dw       $0001                                                       ;A3CD7C;
    dw InstList_Yard_Hiding_UpsideUp_MovingRight                         ;A3CD7E;
    dw                    $0001                                          ;A3CD80;

%anchor($A3CD82)
YardCrawlingVelocitySigns:
; 0000,0000 = positive
; FFFF,0001 = negative

;        ____________________ X velocity
;       |            ________ Y velocity
;       |           |
  .X:                                                                    ;A3CD82;
    dw $FFFF,$0001
  .Y:                                                                    ;A3CD86;
    dw             $FFFF,$0001
    dw $FFFF,$0001,$0000,$0000
    dw $0000,$0000,$FFFF,$0001
    dw $0000,$0000,$0000,$0000
    dw $FFFF,$0001,$FFFF,$0001
    dw $0000,$0000,$FFFF,$0001
    dw $FFFF,$0001,$0000,$0000
    dw $0000,$0000,$0000,$0000

%anchor($A3CDC2)
YardOppositeDirection:                                                   ;A3CDC2;
    dw $0001 ; 0: Upside right - moving up
    dw $0000 ; 1: Upside right - moving down
    dw $0003 ; 2: Upside left  - moving up
    dw $0002 ; 3: Upside left  - moving down
    dw $0005 ; 4: Upside down  - moving left
    dw $0004 ; 5: Upside down  - moving right
    dw $0007 ; 6: Upside up    - moving left
    dw $0006 ; 7: Upside up    - moving right

%anchor($A3CDD2)
YardCrawlingMovementFunctions:
; Indexed by [enemy $7E:780E] * 2
    dw Function_Yard_Movement_Crawling_UpsideDown_MovingLeft             ;A3CDD2;
    dw Function_Yard_Movement_Crawling_UpsideRight_MovingDown            ;A3CDD4;
    dw Function_Yard_Movement_Crawling_UpsideLeft_MovingUp               ;A3CDD6;
    dw Function_Yard_Movement_Crawling_UpsideLeft_MovingDown             ;A3CDD8; <-- points to upside right - moving up
    dw Function_Yard_Movement_Crawling_UpsideRight_MovingUp              ;A3CDDA;
    dw Function_Yard_Movement_Crawling_UpsideDown_MovingRight            ;A3CDDC;
    dw Function_Yard_Movement_Crawling_UpsideUp_MovingLeft               ;A3CDDE; <-- points to upside down - moving left
    dw Function_Yard_Movement_Crawling_UpsideUp_MovingRight              ;A3CDE0;

%anchor($A3CDE2)
InitAI_Yard:
    LDX.W $0E54                                                          ;A3CDE2;
    LDA.W #RTL_A3CF5F                                                    ;A3CDE5;
    STA.W $0FB2,X                                                        ;A3CDE8;
    LDA.W #Spritemap_CommonA3_Nothing                                    ;A3CDEB;
    STA.W $0F8E,X                                                        ;A3CDEE;
    LDA.W #$0001                                                         ;A3CDF1;
    STA.W $0F94,X                                                        ;A3CDF4;
    LDA.W $0F92,X                                                        ;A3CDF7;
    ASL A                                                                ;A3CDFA;
    ASL A                                                                ;A3CDFB;
    ASL A                                                                ;A3CDFC;
    TAY                                                                  ;A3CDFD;
    LDA.W YardDirectionData_crawlingInstList,Y                           ;A3CDFE;
    STA.W $0F92,X                                                        ;A3CE01;
    LDA.W YardDirectionData_movementDirection,Y                          ;A3CE04;
    ORA.W $0F86,X                                                        ;A3CE07;
    STA.W $0F86,X                                                        ;A3CE0A;
    LDA.W YardDirectionData_hidingInstList,Y                             ;A3CE0D;
    STA.W $0FAE,X                                                        ;A3CE10;
    LDA.W YardDirectionData_airborneFacingDirection,Y                    ;A3CE13;
    STA.W $0FAC,X                                                        ;A3CE16;
    LDA.W #$0000                                                         ;A3CE19;
    STA.L $7E7810,X                                                      ;A3CE1C;
    LDA.W $0FB4,X                                                        ;A3CE20;
    STA.L $7E780C,X                                                      ;A3CE23; fallthrough to SetYardCrawlingVelocities

%anchor($A3CE27)
SetYardCrawlingVelocities:
    LDA.W YardCrawlingVelocitySigns_X,Y                                  ;A3CE27;
    STA.B $12                                                            ;A3CE2A;
    LDA.W YardCrawlingVelocitySigns_X+2,Y                                ;A3CE2C;
    STA.B $14                                                            ;A3CE2F;
    LDA.W YardCrawlingVelocitySigns_Y,Y                                  ;A3CE31;
    STA.B $16                                                            ;A3CE34;
    LDA.W YardCrawlingVelocitySigns_Y+2,Y                                ;A3CE36;
    STA.B $18                                                            ;A3CE39;
    LDA.W $0FB4,X                                                        ;A3CE3B;
    ASL A                                                                ;A3CE3E;
    TAY                                                                  ;A3CE3F;
    LDA.W YardCrawlingSpeeds,Y                                           ;A3CE40;
    EOR.B $12                                                            ;A3CE43;
    CLC                                                                  ;A3CE45;
    ADC.B $14                                                            ;A3CE46;
    STA.W $0FA8,X                                                        ;A3CE48;
    LDA.W YardCrawlingSpeeds,Y                                           ;A3CE4B;
    EOR.B $16                                                            ;A3CE4E;
    CLC                                                                  ;A3CE50;
    ADC.B $18                                                            ;A3CE51;
    STA.W $0FAA,X                                                        ;A3CE53;
    RTL                                                                  ;A3CE56;


%anchor($A3CE57)
SetYardCrawlingMovementFunction:
    LDA.L $7E780E,X                                                      ;A3CE57;
    ASL A                                                                ;A3CE5B;
    TAY                                                                  ;A3CE5C;
    LDA.W YardCrawlingMovementFunctions,Y                                ;A3CE5D;
    STA.W $0FB2,X                                                        ;A3CE60;
    RTL                                                                  ;A3CE63;


%anchor($A3CE64)
MainAI_Yard:
    LDX.W $0E54                                                          ;A3CE64;
    JSR.W DropYardIfSuperMissileQuake                                    ;A3CE67;
    JSR.W HandleYardHiding                                               ;A3CE6A;
    JSR.W DetermineIfYardHitboxIsSolidToSamus                            ;A3CE6D;
    JMP.W ($0FB2,X)                                                      ;A3CE70;


%anchor($A3CE73)
DropYardIfSuperMissileQuake:
    LDA.L $7E7810,X                                                      ;A3CE73;
    CMP.W #$0003                                                         ;A3CE77;
    BEQ .return                                                          ;A3CE7A;
    CMP.W #$0004                                                         ;A3CE7C;
    BEQ .return                                                          ;A3CE7F;
    CMP.W #$0005                                                         ;A3CE81;
    BEQ .return                                                          ;A3CE84;
    LDA.W $1840                                                          ;A3CE86;
    CMP.W #$001E                                                         ;A3CE89;
    BNE .return                                                          ;A3CE8C;
    LDA.W $183E                                                          ;A3CE8E;
    CMP.W #$0014                                                         ;A3CE91;
    BNE .return                                                          ;A3CE94;
    JSR.W DropYard                                                       ;A3CE96;

.return:
    RTS                                                                  ;A3CE99;


%anchor($A3CE9A)
HandleYardHiding:
    LDA.L $7E7810,X                                                      ;A3CE9A;
    CMP.W #$0001                                                         ;A3CE9E;
    BEQ .return1                                                         ;A3CEA1;
    CMP.W #$0003                                                         ;A3CEA3;
    BEQ .return1                                                         ;A3CEA6;
    CMP.W #$0004                                                         ;A3CEA8;
    BEQ .return1                                                         ;A3CEAB;
    CMP.W #$0005                                                         ;A3CEAD;
    BEQ .return1                                                         ;A3CEB0;
    LDA.W $0F7E,X                                                        ;A3CEB2;
    SEC                                                                  ;A3CEB5;
    SBC.W $0AFA                                                          ;A3CEB6;
    CMP.W #$FFA0                                                         ;A3CEB9;
    BMI .crawl                                                           ;A3CEBC;
    LDA.W $0F7A,X                                                        ;A3CEBE;
    CMP.W $0AF6                                                          ;A3CEC1;
    BMI .leftOfSamus                                                     ;A3CEC4;
    LDA.W $0A1E                                                          ;A3CEC6;
    AND.W #$00FF                                                         ;A3CEC9;
    CMP.W #$0008                                                         ;A3CECC;
    BNE .crawl                                                           ;A3CECF;
    BRA +                                                                ;A3CED1;


.leftOfSamus:
    LDA.W $0A1E                                                          ;A3CED3;
    AND.W #$00FF                                                         ;A3CED6;
    CMP.W #$0004                                                         ;A3CED9;
    BNE .crawl                                                           ;A3CEDC;

  + LDA.L $7E7810,X                                                      ;A3CEDE;
    CMP.W #$0002                                                         ;A3CEE2;
    BEQ .return0                                                         ;A3CEE5;
    LDA.W $0FAE,X                                                        ;A3CEE7;
    CMP.W #RTL_A3CF5F                                                    ;A3CEEA;
    BEQ .crawl                                                           ;A3CEED;
    STA.W $0F92,X                                                        ;A3CEEF;
    LDA.W #Spritemap_CommonA3_Nothing                                    ;A3CEF2;
    STA.W $0F8E,X                                                        ;A3CEF5;
    LDA.W #$0001                                                         ;A3CEF8;
    STA.W $0F94,X                                                        ;A3CEFB;
    STZ.W $0F90,X                                                        ;A3CEFE;
    LDA.W #$0002                                                         ;A3CF01;
    STA.L $7E7810,X                                                      ;A3CF04;

.return0:
    RTS                                                                  ;A3CF08;


.crawl:
    LDA.W #$0000                                                         ;A3CF09;
    STA.L $7E7810,X                                                      ;A3CF0C;

.return1:
    RTS                                                                  ;A3CF10;


%anchor($A3CF11)
DetermineIfYardHitboxIsSolidToSamus:
    LDA.W $0FB2,X                                                        ;A3CF11;
    CMP.W #Function_Yard_Movement_Airborne                               ;A3CF14;
    BEQ .notSolid                                                        ;A3CF17;
    LDA.L $7E7810,X                                                      ;A3CF19;
    CMP.W #$0001                                                         ;A3CF1D;
    BEQ .aggressivelyCrawling                                            ;A3CF20;
    LDA.W $0B3C                                                          ;A3CF22;
    BNE .notSolid                                                        ;A3CF25;
    LDA.L $7E7810,X                                                      ;A3CF27;
    CMP.W #$0002                                                         ;A3CF2B;
    BEQ .solid                                                           ;A3CF2E;
    CMP.W #$0003                                                         ;A3CF30;
    BEQ .notSolid                                                        ;A3CF33;
    CMP.W #$0005                                                         ;A3CF35;
    BNE .solid                                                           ;A3CF38;
    BRA .notSolid                                                        ;A3CF3A;


.aggressivelyCrawling:
    LDA.W $0B3C                                                          ;A3CF3C;
    BNE .notSolid                                                        ;A3CF3F;
    LDA.W $0FB2,X                                                        ;A3CF41;
    CMP.W #RTL_A3CF5F                                                    ;A3CF44;
    BEQ .solid                                                           ;A3CF47;
    BRA .notSolid                                                        ;A3CF49;


.solid:
    LDA.W $0F86,X                                                        ;A3CF4B;
    ORA.W #$8000                                                         ;A3CF4E;
    STA.W $0F86,X                                                        ;A3CF51;
    RTS                                                                  ;A3CF54;


.notSolid:
    LDA.W $0F86,X                                                        ;A3CF55;
    AND.W #$7FFF                                                         ;A3CF58;
    STA.W $0F86,X                                                        ;A3CF5B;
    RTS                                                                  ;A3CF5E;


%anchor($A3CF5F)
RTL_A3CF5F:
    RTL                                                                  ;A3CF5F;


%anchor($A3CF60)
Function_Yard_Movement_Hiding:
    LDA.L $7E780E,X                                                      ;A3CF60;
    CMP.W #$0004                                                         ;A3CF64;
    BCS .notMovingVertically                                             ;A3CF67;
    STZ.B $12                                                            ;A3CF69;
    STZ.B $14                                                            ;A3CF6B;
    LDA.W $0FA8,X                                                        ;A3CF6D;
    JSR.W SignedMath_A3CF8F                                              ;A3CF70;
    JSL.L CheckForHorizontalSolidBlockCollision                          ;A3CF73;
    BCC .noCollision                                                     ;A3CF77;
    RTL                                                                  ;A3CF79;


.notMovingVertically:
    STZ.B $12                                                            ;A3CF7A;
    STZ.B $14                                                            ;A3CF7C;
    LDA.W $0FAA,X                                                        ;A3CF7E;
    JSR.W SignedMath_A3CF8F                                              ;A3CF81;
    JSL.L CheckForVerticalSolidBlockCollision                            ;A3CF84;
    BCC .noCollision                                                     ;A3CF88;
    RTL                                                                  ;A3CF8A;


.noCollision:
    JSR.W DropYard                                                       ;A3CF8B;
    RTL                                                                  ;A3CF8E;


%anchor($A3CF8F)
SignedMath_A3CF8F:
    BPL +                                                                ;A3CF8F;
    DEC.B $14                                                            ;A3CF91;

  + STA.B $13                                                            ;A3CF93;
    LDA.B $14                                                            ;A3CF95;
    BPL .add7                                                            ;A3CF97;
    SEC                                                                  ;A3CF99;
    SBC.W #$0007                                                         ;A3CF9A;
    BRA +                                                                ;A3CF9D;


.add7:
    CLC                                                                  ;A3CF9F;
    ADC.W #$0007                                                         ;A3CFA0;

  + STA.B $14                                                            ;A3CFA3;
    RTS                                                                  ;A3CFA5;


%anchor($A3CFA6)
Function_Yard_Movement_Crawling_UpsideUp_MovingLeft:
    LDA.L $7E780A,X                                                      ;A3CFA6;
    BNE .upsideUpMovingLeftNoTurnTransition                              ;A3CFAA;
    LDY.W #YardTurnData_upsideUp_movingLeft                              ;A3CFAC;
    BRA .gotoCrawlingMovementHorizontal                                  ;A3CFAF;


.upsideUpMovingLeftNoTurnTransition:
    LDY.W #YardTurnData_upsideUp_movingLeft_noTurnTransition             ;A3CFB1;

.gotoCrawlingMovementHorizontal:
    JMP.W YardCrawlingMovement_Horizontal                                ;A3CFB4;


%anchor($A3CFB7)
Function_Yard_Movement_Crawling_UpsideLeft_MovingDown:
    LDY.W #YardTurnData_upsideLeft_movingDown                            ;A3CFB7;
    JMP.W YardCrawlingMovement_Vertical                                  ;A3CFBA;


%anchor($A3CFBD)
Function_Yard_Movement_Crawling_UpsideDown_MovingRight:
    LDA.L $7E780A,X                                                      ;A3CFBD;
    BNE .upsideDownMovingRightNoTurnTransition                           ;A3CFC1;
    LDY.W #YardTurnData_upsideDown_movingRight                           ;A3CFC3;
    BRA .gotoCrawlingMovementHorizontal                                  ;A3CFC6;


.upsideDownMovingRightNoTurnTransition:
    LDY.W #YardTurnData_upsideDown_movingRight_noTurnTransition          ;A3CFC8;

.gotoCrawlingMovementHorizontal:
    JMP.W YardCrawlingMovement_Horizontal                                ;A3CFCB;


%anchor($A3CFCE)
Function_Yard_Movement_Crawling_UpsideRight_MovingUp:
    LDY.W #YardTurnData_upsideRight_movingUp                             ;A3CFCE;
    JMP.W YardCrawlingMovement_Vertical                                  ;A3CFD1;


%anchor($A3CFD4)
Function_Yard_Movement_Crawling_UpsideUp_MovingRight:
    LDA.L $7E780A,X                                                      ;A3CFD4;
    BNE .upsideUpMovingRightNoTurnTransition                             ;A3CFD8;
    LDY.W #YardTurnData_upsideUp_movingRight                             ;A3CFDA;
    BRA .gotoCrawlingMovementHorizontal                                  ;A3CFDD;


.upsideUpMovingRightNoTurnTransition:
    LDY.W #YardTurnData_upsideUp_movingRight_noTurnTransition            ;A3CFDF;

.gotoCrawlingMovementHorizontal:
    JMP.W YardCrawlingMovement_Horizontal                                ;A3CFE2;


%anchor($A3CFE5)
Function_Yard_Movement_Crawling_UpsideRight_MovingDown:
    LDY.W #YardTurnData_upsideRight_movingDown                           ;A3CFE5;
    JMP.W YardCrawlingMovement_Vertical                                  ;A3CFE8;


%anchor($A3CFEB)
Function_Yard_Movement_Crawling_UpsideDown_MovingLeft:
    LDA.L $7E780A,X                                                      ;A3CFEB;
    BNE .upsideDownMovingLeftNoTurnTransition                            ;A3CFEF;
    LDY.W #YardTurnData_upsideDown_movingLeft                            ;A3CFF1;
    BRA .gotoCrawlingMovementHorizontal                                  ;A3CFF4;


.upsideDownMovingLeftNoTurnTransition:
    LDY.W #YardTurnData_upsideDown_movingLeft_noTurnTransition           ;A3CFF6;

.gotoCrawlingMovementHorizontal:
    JMP.W YardCrawlingMovement_Horizontal                                ;A3CFF9;


%anchor($A3CFFC)
Function_Yard_Movement_Crawling_UpsideLeft_MovingUp:
    LDY.W #YardTurnData_upsideLeft_movingUp                              ;A3CFFC;
    JMP.W YardCrawlingMovement_Vertical                                  ;A3CFFF;


%anchor($A3D002)
YardCrawlingMovement_Vertical:
    JSR.W MoveYardAheadForOutsideTurnCheck                               ;A3D002;
    STZ.B $12                                                            ;A3D005;
    STZ.B $14                                                            ;A3D007;
    LDA.W $0FA8,X                                                        ;A3D009;
    BPL +                                                                ;A3D00C;
    DEC.B $14                                                            ;A3D00E;

  + STA.B $13                                                            ;A3D010;
    LDA.B $14                                                            ;A3D012;
    BPL .inc                                                             ;A3D014;
    DEC A                                                                ;A3D016;
    BRA +                                                                ;A3D017;


.inc:
    INC A                                                                ;A3D019;

  + STA.B $14                                                            ;A3D01A;
    PHY                                                                  ;A3D01C;
    JSL.L MoveEnemyRightBy_14_12_ProcessSlopes                           ;A3D01D;
    PLY                                                                  ;A3D021;
    JSR.W MoveYardBackForOutsideTurnCheck                                ;A3D022;
    BCC .outsideTurn                                                     ;A3D025;
    LDA.W #$0000                                                         ;A3D027;
    STA.W $0FB0,X                                                        ;A3D02A;
    PHY                                                                  ;A3D02D;
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;A3D02E;
    PLY                                                                  ;A3D032;
    JSR.W HandleTurnTransitionDisabling                                  ;A3D033;
    STZ.B $12                                                            ;A3D036;
    STZ.B $14                                                            ;A3D038;
    LDA.W $0FAA,X                                                        ;A3D03A;
    BPL +                                                                ;A3D03D;
    DEC.B $14                                                            ;A3D03F;

  + STA.B $13                                                            ;A3D041;
    PHY                                                                  ;A3D043;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3D044;
    PLY                                                                  ;A3D048;
    BCS .insideTurn                                                      ;A3D049;
    RTL                                                                  ;A3D04B;


.insideTurn:
    LDA.W $0FA8,X                                                        ;A3D04C;
    EOR.W #$FFFF                                                         ;A3D04F;
    INC A                                                                ;A3D052;
    STA.W $0FA8,X                                                        ;A3D053;
    LDA.W $0006,Y                                                        ;A3D056;
    JSR.W SetYardInstList_DisableTurnTransition                          ;A3D059;
    RTL                                                                  ;A3D05C;


.outsideTurn:
    LDA.W $0FB0,X                                                        ;A3D05D;
    INC A                                                                ;A3D060;
    STA.W $0FB0,X                                                        ;A3D061;
    CMP.W #$0004                                                         ;A3D064;
    BMI .lessThan4Turns                                                  ;A3D067;
    JSR.W DropYard                                                       ;A3D069;
    RTL                                                                  ;A3D06C;


.lessThan4Turns:
    LDA.W $0FAA,X                                                        ;A3D06D;
    EOR.W #$FFFF                                                         ;A3D070;
    INC A                                                                ;A3D073;
    STA.W $0FAA,X                                                        ;A3D074;
    LDA.W $0004,Y                                                        ;A3D077;
    JSR.W SetYardInstList_DisableTurnTransition                          ;A3D07A;
    RTL                                                                  ;A3D07D;


%anchor($A3D07E)
YardCrawlingMovement_Horizontal:
    JSR.W MoveYardAheadForOutsideTurnCheck                               ;A3D07E;
    STZ.B $12                                                            ;A3D081;
    STZ.B $14                                                            ;A3D083;
    LDA.W $0FAA,X                                                        ;A3D085;
    BPL +                                                                ;A3D088;
    DEC.B $14                                                            ;A3D08A;

  + STA.B $13                                                            ;A3D08C;
    LDA.B $14                                                            ;A3D08E;
    BPL .inc                                                             ;A3D090;
    DEC A                                                                ;A3D092;
    BRA +                                                                ;A3D093;


.inc:
    INC A                                                                ;A3D095;

  + STA.B $14                                                            ;A3D096;
    PHY                                                                  ;A3D098;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3D099;
    PLY                                                                  ;A3D09D;
    JSR.W MoveYardBackForOutsideTurnCheck                                ;A3D09E;
    BCC .outsideTurn                                                     ;A3D0A1;
    LDA.W #$0000                                                         ;A3D0A3;
    STA.W $0FB0,X                                                        ;A3D0A6;
    STZ.B $12                                                            ;A3D0A9;
    STZ.B $14                                                            ;A3D0AB;
    LDA.W $0FA8,X                                                        ;A3D0AD;
    BPL +                                                                ;A3D0B0;
    DEC.B $14                                                            ;A3D0B2;

  + STA.B $13                                                            ;A3D0B4;
    PHY                                                                  ;A3D0B6;
    JSL.L MoveEnemyRightBy_14_12_ProcessSlopes                           ;A3D0B7;
    PLY                                                                  ;A3D0BB;
    BCS .insideTurn                                                      ;A3D0BC;
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;A3D0BE;
    JSR.W HandleTurnTransitionDisabling                                  ;A3D0C2;
    RTL                                                                  ;A3D0C5;


.insideTurn:
    LDA.W $0FAA,X                                                        ;A3D0C6;
    EOR.W #$FFFF                                                         ;A3D0C9;
    INC A                                                                ;A3D0CC;
    STA.W $0FAA,X                                                        ;A3D0CD;
    LDA.W $0006,Y                                                        ;A3D0D0;
    JSR.W SetYardInstList_DisableTurnTransition                          ;A3D0D3;
    RTL                                                                  ;A3D0D6;


.outsideTurn:
    LDA.W $0FB0,X                                                        ;A3D0D7;
    INC A                                                                ;A3D0DA;
    STA.W $0FB0,X                                                        ;A3D0DB;
    CMP.W #$0004                                                         ;A3D0DE;
    BMI .lessThan4Turns                                                  ;A3D0E1;
    JSR.W DropYard                                                       ;A3D0E3;
    RTL                                                                  ;A3D0E6;


.lessThan4Turns:
    LDA.W $0FA8,X                                                        ;A3D0E7;
    EOR.W #$FFFF                                                         ;A3D0EA;
    INC A                                                                ;A3D0ED;
    STA.W $0FA8,X                                                        ;A3D0EE;
    LDA.W $0004,Y                                                        ;A3D0F1;
    JSR.W SetYardInstList_DisableTurnTransition                          ;A3D0F4;
    RTL                                                                  ;A3D0F7;


%anchor($A3D0F8)
MoveYardAheadForOutsideTurnCheck:
    LDA.W $0F7A,X                                                        ;A3D0F8;
    CLC                                                                  ;A3D0FB;
    ADC.W $0000,Y                                                        ;A3D0FC;
    STA.W $0F7A,X                                                        ;A3D0FF;
    LDA.W $0F7E,X                                                        ;A3D102;
    CLC                                                                  ;A3D105;
    ADC.W $0002,Y                                                        ;A3D106;
    STA.W $0F7E,X                                                        ;A3D109;
    RTS                                                                  ;A3D10C;


%anchor($A3D10D)
MoveYardBackForOutsideTurnCheck:
    PHP                                                                  ;A3D10D;
    LDA.W $0F7A,X                                                        ;A3D10E;
    SEC                                                                  ;A3D111;
    SBC.W $0000,Y                                                        ;A3D112;
    STA.W $0F7A,X                                                        ;A3D115;
    LDA.W $0F7E,X                                                        ;A3D118;
    SEC                                                                  ;A3D11B;
    SBC.W $0002,Y                                                        ;A3D11C;
    STA.W $0F7E,X                                                        ;A3D11F;
    PLP                                                                  ;A3D122;
    RTS                                                                  ;A3D123;


%anchor($A3D124)
HandleTurnTransitionDisabling:
    BCS .resetTurnTransitionDisableCounter                               ;A3D124;
    LDA.L $7E7808,X                                                      ;A3D126;
    INC A                                                                ;A3D12A;
    CMP.W #$0010                                                         ;A3D12B;
    BCS .enableTurnTransition                                            ;A3D12E;
    STA.L $7E7808,X                                                      ;A3D130;
    RTS                                                                  ;A3D134;


.resetTurnTransitionDisableCounter:
    LDA.W #$0001                                                         ;A3D135;
    STA.L $7E780A,X                                                      ;A3D138;
    LDA.W #$0000                                                         ;A3D13C;
    STA.L $7E7808,X                                                      ;A3D13F;
    RTS                                                                  ;A3D143;


.enableTurnTransition:
    LDA.W #$0000                                                         ;A3D144;
    STA.L $7E780A,X                                                      ;A3D147;
    RTS                                                                  ;A3D14B;


%anchor($A3D14C)
SetYardInstList_DisableTurnTransition:
    STA.W $0F92,X                                                        ;A3D14C;
    LDA.W #$0001                                                         ;A3D14F;
    STA.W $0F94,X                                                        ;A3D152;
    LDA.W #$0001                                                         ;A3D155;
    STA.L $7E780A,X                                                      ;A3D158;
    LDA.W #$0000                                                         ;A3D15C;
    STA.L $7E7808,X                                                      ;A3D15F;
    RTS                                                                  ;A3D163;


%anchor($A3D164)
DropYard:
    PHY                                                                  ;A3D164;
    LDA.L $7E7810,X                                                      ;A3D165;
    CMP.W #$0003                                                         ;A3D169;
    BEQ .return                                                          ;A3D16C;
    LDA.W #$0003                                                         ;A3D16E;
    STA.L $7E7810,X                                                      ;A3D171;
    LDA.W #Function_Yard_Movement_Airborne                               ;A3D175;
    STA.W $0FB2,X                                                        ;A3D178;
    LDA.W $0FAC,X                                                        ;A3D17B;
    ASL A                                                                ;A3D17E;
    ASL A                                                                ;A3D17F;
    TAY                                                                  ;A3D180;
    LDA.W .airbornePointers,Y                                            ;A3D181;
    STA.W $0F92,X                                                        ;A3D184;
    LDA.W .hidingPointers,Y                                              ;A3D187;
    STA.W $0FAE,X                                                        ;A3D18A;
    LDA.W #$0001                                                         ;A3D18D;
    STA.W $0F94,X                                                        ;A3D190;
    STZ.W $0F90,X                                                        ;A3D193;
    LDA.W #$0000                                                         ;A3D196;
    STA.L $7E7804,X                                                      ;A3D199;
    STA.L $7E7806,X                                                      ;A3D19D;
    STA.L $7E7800,X                                                      ;A3D1A1;
    STA.L $7E7802,X                                                      ;A3D1A5;

.return:
    PLY                                                                  ;A3D1A9;
    RTS                                                                  ;A3D1AA;


.airbornePointers:
    dw InstList_Yard_Airborne_FacingLeft_0                               ;A3D1AB;

.hidingPointers:
    dw InstList_Yard_Hidden_UpsideUp_MovingLeft                          ;A3D1AD;
    dw InstList_Yard_Airborne_FacingRight_0                              ;A3D1AF;
    dw InstList_Yard_Hidden_UpsideUp_MovingRight                         ;A3D1B1;

%anchor($A3D1B3)
Function_Yard_Movement_Airborne:
    LDA.L $7E7810,X                                                      ;A3D1B3;
    CMP.W #$0003                                                         ;A3D1B7;
    BEQ .XMovementEnd                                                    ;A3D1BA;
    LDA.L $7E7804,X                                                      ;A3D1BC;
    STA.B $12                                                            ;A3D1C0;
    LDA.L $7E7806,X                                                      ;A3D1C2;
    STA.B $14                                                            ;A3D1C6;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3D1C8;
    BCS .hitWall                                                         ;A3D1CC;
    LDA.L $7E7806,X                                                      ;A3D1CE;
    BMI .right                                                           ;A3D1D2;
    LDA.W #$1000                                                         ;A3D1D4;
    EOR.W #$FFFF                                                         ;A3D1D7;
    INC A                                                                ;A3D1DA;
    STA.B $16                                                            ;A3D1DB;
    LDA.W #$0000                                                         ;A3D1DD;
    EOR.W #$FFFF                                                         ;A3D1E0;
    STA.B $18                                                            ;A3D1E3;
    BRA +                                                                ;A3D1E5;


.right:
    LDA.W #$1000                                                         ;A3D1E7;
    STA.B $16                                                            ;A3D1EA;
    LDA.W #$0000                                                         ;A3D1EC;
    STA.B $18                                                            ;A3D1EF;

  + CLC                                                                  ;A3D1F1;
    LDA.L $7E7804,X                                                      ;A3D1F2;
    ADC.B $16                                                            ;A3D1F6;
    STA.L $7E7804,X                                                      ;A3D1F8;
    LDA.L $7E7806,X                                                      ;A3D1FC;
    ADC.B $18                                                            ;A3D200;
    BEQ .gotoXMovementEnd                                                ;A3D202;
    STA.L $7E7806,X                                                      ;A3D204;

.gotoXMovementEnd:
    BRA .XMovementEnd                                                    ;A3D208;


.hitWall:
    LDA.L $7E7804,X                                                      ;A3D20A;
    EOR.W #$FFFF                                                         ;A3D20E;
    INC A                                                                ;A3D211;
    STA.L $7E7804,X                                                      ;A3D212;
    LDA.L $7E7806,X                                                      ;A3D216;
    EOR.W #$FFFF                                                         ;A3D21A;
    INC A                                                                ;A3D21D;
    STA.L $7E7806,X                                                      ;A3D21E;
    LDA.W #$0001                                                         ;A3D222;
    STA.L $7E8000,X                                                      ;A3D225;
    LDA.W #$0070                                                         ;A3D229;
    JSL.L QueueSound_Lib2_Max3                                           ;A3D22C;
    JMP.W .XMovementEnd                                                  ;A3D230; >_<


.XMovementEnd:
    LDA.L $7E7800,X                                                      ;A3D233;
    STA.B $12                                                            ;A3D237;
    LDA.L $7E7802,X                                                      ;A3D239;
    STA.B $14                                                            ;A3D23D;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3D23F;
    BCS .collidedVertically                                              ;A3D243;
    CLC                                                                  ;A3D245;
    LDA.L $7E7800,X                                                      ;A3D246;
    ADC.W #$2000                                                         ;A3D24A;
    STA.L $7E7800,X                                                      ;A3D24D;
    LDA.L $7E7802,X                                                      ;A3D251;
    ADC.W #$0000                                                         ;A3D255;
    CMP.W #$0004                                                         ;A3D258;
    BPL .return                                                          ;A3D25B;
    STA.L $7E7802,X                                                      ;A3D25D;

.return:
    RTL                                                                  ;A3D261;


.collidedVertically:
    LDA.L $7E7802,X                                                      ;A3D262;
    BMI +                                                                ;A3D266;
    CMP.W #$0003                                                         ;A3D268;
    BMI .land                                                            ;A3D26B;

  + LDA.L $7E7800,X                                                      ;A3D26D;
    EOR.W #$FFFF                                                         ;A3D271;
    INC A                                                                ;A3D274;
    STA.L $7E7800,X                                                      ;A3D275;
    LDA.L $7E7802,X                                                      ;A3D279;
    EOR.W #$FFFF                                                         ;A3D27D;
    INC A                                                                ;A3D280;
    STA.L $7E7802,X                                                      ;A3D281;
    LDA.W #$0000                                                         ;A3D285;
    STA.L $7E8000,X                                                      ;A3D288;
    RTL                                                                  ;A3D28C;


.land:
    LDA.W #$0000                                                         ;A3D28D;
    STA.L $7E7806,X                                                      ;A3D290;
    STA.L $7E7804,X                                                      ;A3D294;
    STA.L $7E7802,X                                                      ;A3D298;
    STA.L $7E7800,X                                                      ;A3D29C;
    STA.W $0FB0,X                                                        ;A3D2A0;
    STA.L $7E7808,X                                                      ;A3D2A3;
    LDA.W #$0001                                                         ;A3D2A7;
    STA.L $7E780A,X                                                      ;A3D2AA;
    LDA.L $7E7810,X                                                      ;A3D2AE;
    CMP.W #$0003                                                         ;A3D2B2;
    BEQ .dropped                                                         ;A3D2B5;
    LDA.W #$0001                                                         ;A3D2B7;
    STA.L $7E7810,X                                                      ;A3D2BA;
    LDA.W #$0008                                                         ;A3D2BE;
    STA.W $0FB4,X                                                        ;A3D2C1;
    JSL.L MakeYardFaceSamusHorizontally                                  ;A3D2C4;
    JSR.W SetYardAirborneInstList                                        ;A3D2C8;
    BRA +                                                                ;A3D2CB;


.dropped:
    LDA.W #$0000                                                         ;A3D2CD;
    STA.L $7E7810,X                                                      ;A3D2D0;

  + LDA.W $0F86,X                                                        ;A3D2D4;
    AND.W #$FFFC                                                         ;A3D2D7;
    ORA.W $0FAC,X                                                        ;A3D2DA;
    STA.W $0F86,X                                                        ;A3D2DD;
    JSL.L InitAI_Crawlers_Common                                         ;A3D2E0;
    LDA.W #RTL_A3CF5F                                                    ;A3D2E4;
    STA.W $0FB2,X                                                        ;A3D2E7;
    LDA.W $0FAE,X                                                        ;A3D2EA;
    STA.W $0F92,X                                                        ;A3D2ED;
    LDA.W #$0001                                                         ;A3D2F0;
    STA.W $0F94,X                                                        ;A3D2F3;
    STZ.W $0F90,X                                                        ;A3D2F6;
    RTL                                                                  ;A3D2F9;


%anchor($A3D2FA)
SetYardAirborneInstList:
    LDA.W $0FAC,X                                                        ;A3D2FA;
    ASL A                                                                ;A3D2FD;
    ASL A                                                                ;A3D2FE;
    TAY                                                                  ;A3D2FF;
    LDA.W .airbornePointers,Y                                            ;A3D300;
    STA.W $0F92,X                                                        ;A3D303;
    LDA.W .hidingPointers,Y                                              ;A3D306;
    STA.W $0FAE,X                                                        ;A3D309;
    RTS                                                                  ;A3D30C;


.airbornePointers:
    dw InstList_Yard_Airborne_FacingLeft_0                               ;A3D30D;

.hidingPointers:
    dw InstList_Yard_Hidden_UpsideUp_MovingLeft                          ;A3D30F;
    dw InstList_Yard_Airborne_FacingRight_0                              ;A3D311;
    dw InstList_Yard_Hidden_UpsideUp_MovingRight                         ;A3D313;

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D315)
UNUSED_MakeYardFaceSamus_A3D315:
    LDA.L $7E780A,X                                                      ;A3D315;
    BEQ .turningEnabled                                                  ;A3D319;
    CLC                                                                  ;A3D31B;
    RTL                                                                  ;A3D31C;


.turningEnabled:
    LDA.L $7E780E,X                                                      ;A3D31D;
    CMP.W #$0004                                                         ;A3D321;
    BCS MakeYardFaceSamusHorizontally                                    ;A3D324;
    BIT.W #$0001                                                         ;A3D326;
    BNE .movingDown                                                      ;A3D329;
    LDA.W $0F7E,X                                                        ;A3D32B;
    CMP.W $0AFA                                                          ;A3D32E;
    BCC TurnYardAround                                                   ;A3D331;
    CLC                                                                  ;A3D333;
    RTL                                                                  ;A3D334;


.movingDown:
    LDA.W $0F7E,X                                                        ;A3D335;
    CMP.W $0AFA                                                          ;A3D338;
    BCS TurnYardAround                                                   ;A3D33B;
    RTL                                                                  ;A3D33D;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A3D33E)
MakeYardFaceSamusHorizontally:
    LDA.W $0FAC,X                                                        ;A3D33E;
    BNE .facingRight                                                     ;A3D341;
    LDA.W $0F7A,X                                                        ;A3D343;
    CMP.W $0AF6                                                          ;A3D346;
    BCC TurnYardAround                                                   ;A3D349;
    CLC                                                                  ;A3D34B;
    RTL                                                                  ;A3D34C;


.facingRight:
    LDA.W $0F7A,X                                                        ;A3D34D;
    CMP.W $0AF6                                                          ;A3D350;
    BCS TurnYardAround                                                   ;A3D353;
    RTL                                                                  ;A3D355;


%anchor($A3D356)
TurnYardAround:
    LDA.L $7E7810,X                                                      ;A3D356;
    CMP.W #$0002                                                         ;A3D35A;
    BEQ .failed                                                          ;A3D35D;
    LDA.W $0FB2,X                                                        ;A3D35F;
    CMP.W #RTL_A3CF5F                                                    ;A3D362;
    BEQ .failed                                                          ;A3D365;
    LDA.L $7E780E,X                                                      ;A3D367;
    ASL A                                                                ;A3D36B;
    TAY                                                                  ;A3D36C;
    LDA.W YardOppositeDirection,Y                                        ;A3D36D;
    STA.L $7E780E,X                                                      ;A3D370;
    ASL A                                                                ;A3D374;
    ASL A                                                                ;A3D375;
    ASL A                                                                ;A3D376;
    TAY                                                                  ;A3D377;
    LDA.W YardDirectionData_crawlingInstList,Y                           ;A3D378;
    STA.W $0F92,X                                                        ;A3D37B;
    LDA.W $0F86,X                                                        ;A3D37E;
    AND.W #$FFFC                                                         ;A3D381;
    ORA.W YardDirectionData_movementDirection,Y                          ;A3D384;
    STA.W $0F86,X                                                        ;A3D387;
    LDA.W YardDirectionData_hidingInstList,Y                             ;A3D38A;
    STA.W $0FAE,X                                                        ;A3D38D;
    LDA.W YardDirectionData_airborneFacingDirection,Y                    ;A3D390;
    STA.W $0FAC,X                                                        ;A3D393;
    JSL.L SetYardCrawlingVelocities                                      ;A3D396;
    JSL.L SetYardCrawlingMovementFunction                                ;A3D39A;
    LDA.W #$0001                                                         ;A3D39E;
    STA.L $7E780A,X                                                      ;A3D3A1;
    LDA.W #$0000                                                         ;A3D3A5;
    STA.L $7E7808,X                                                      ;A3D3A8;
    SEC                                                                  ;A3D3AC;
    RTL                                                                  ;A3D3AD;


.failed:
    CLC                                                                  ;A3D3AE;
    RTL                                                                  ;A3D3AF;


%anchor($A3D3B0)
EnemyTouch_Yard:
    LDX.W $0E54                                                          ;A3D3B0;
    LDA.L $7E7810,X                                                      ;A3D3B3;
    CMP.W #$0001                                                         ;A3D3B7;
    BNE .notAggressiveCrawling                                           ;A3D3BA;
    LDA.W $0FB2,X                                                        ;A3D3BC;
    CMP.W #RTL_A3CF5F                                                    ;A3D3BF;
    BEQ .notAggressiveCrawling                                           ;A3D3C2;
    JSR.W CheckIfSamusIsDirectingTowardsYard                             ;A3D3C4;
    BCC .notAggressiveCrawling                                           ;A3D3C7;
    BRA .notKicked                                                       ;A3D3C9;


.notAggressiveCrawling:
    LDA.W $0FB2,X                                                        ;A3D3CB;
    CMP.W #Function_Yard_Movement_Airborne                               ;A3D3CE;
    BEQ .kicked                                                          ;A3D3D1;
    LDA.W $0B3C                                                          ;A3D3D3;
    BEQ .notKicked                                                       ;A3D3D6;

.kicked:
    JSR.W KickYardIntoAIr                                                ;A3D3D8;
    LDA.W $0FB2,X                                                        ;A3D3DB;
    CMP.W #Function_Yard_Movement_Airborne                               ;A3D3DE;
    BNE .returnUpper                                                     ;A3D3E1;
    LDA.W #$0070                                                         ;A3D3E3;
    JSL.L QueueSound_Lib2_Max3                                           ;A3D3E6;

.returnUpper:
    RTL                                                                  ;A3D3EA;


.notKicked:
    LDA.W $0FB2,X                                                        ;A3D3EB;
    CMP.W #RTL_A3CF5F                                                    ;A3D3EE;
    BEQ .returnLower                                                     ;A3D3F1;
    LDA.L $7E7810,X                                                      ;A3D3F3;
    CMP.W #$0004                                                         ;A3D3F7;
    BEQ .returnLower                                                     ;A3D3FA;
    CMP.W #$0003                                                         ;A3D3FC;
    BEQ .returnLower                                                     ;A3D3FF;
    JSL.L CommonA3_NormalEnemyTouchAI                                    ;A3D401;
    LDA.L $7E780C,X                                                      ;A3D405;
    STA.W $0FB4,X                                                        ;A3D409;
    LDA.L $7E7810,X                                                      ;A3D40C;
    CMP.W #$0000                                                         ;A3D410;
    BEQ .setIdleCrawling                                                 ;A3D413;
    JSL.L TurnYardAround                                                 ;A3D415;

.setIdleCrawling:
    LDA.W #$0000                                                         ;A3D419;
    STA.L $7E7810,X                                                      ;A3D41C;

.returnLower:
    RTL                                                                  ;A3D420;


%anchor($A3D421)
CheckIfSamusIsDirectingTowardsYard:
    LDA.B $8B                                                            ;A3D421;
    AND.W #$0300                                                         ;A3D423;
    XBA                                                                  ;A3D426;
    DEC A                                                                ;A3D427;
    STA.B $12                                                            ;A3D428;
    LDA.W $0FAC,X                                                        ;A3D42A;
    AND.W #$0001                                                         ;A3D42D;
    STA.B $14                                                            ;A3D430;
    LDA.B $12                                                            ;A3D432;
    BNE .notPressingRight                                                ;A3D434;
    LDA.B $14                                                            ;A3D436;
    BEQ .towardsYard                                                     ;A3D438;
    BRA .awayFromYard                                                    ;A3D43A;


.notPressingRight:
    LDA.B $14                                                            ;A3D43C;
    BEQ .awayFromYard                                                    ;A3D43E;
    BRA .towardsYard                                                     ;A3D440;


.awayFromYard:
    CLC                                                                  ;A3D442;
    RTS                                                                  ;A3D443;


.towardsYard:
    SEC                                                                  ;A3D444;
    RTS                                                                  ;A3D445;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D446)
UNUSED_CheckIfYardIsMovingTheDirectionSamusIsFacing_A3D446:
    LDA.W $0FA8,X                                                        ;A3D446;
    BPL .positiveXVelocity                                               ;A3D449;
    LDA.W $0A1E                                                          ;A3D44B;
    AND.W #$00FF                                                         ;A3D44E;
    CMP.W #$0008                                                         ;A3D451;
    BNE .movingDirectionSamusFacing                                      ;A3D454;
    BRA .movingOppositeDirection                                         ;A3D456;


.positiveXVelocity:
    LDA.W $0A1E                                                          ;A3D458;
    AND.W #$00FF                                                         ;A3D45B;
    CMP.W #$0004                                                         ;A3D45E;
    BNE .movingDirectionSamusFacing                                      ;A3D461;
    BRA .movingOppositeDirection                                         ;A3D463;


.movingDirectionSamusFacing:
    CLC                                                                  ;A3D465;
    RTS                                                                  ;A3D466;


.movingOppositeDirection:
    SEC                                                                  ;A3D467;
    RTS                                                                  ;A3D468;
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A3D469)
EnemyShot_Yard:
    LDX.W $0E54                                                          ;A3D469;
    LDA.W $18A6                                                          ;A3D46C;
    ASL A                                                                ;A3D46F;
    TAY                                                                  ;A3D470;
    LDA.W $0C18,Y                                                        ;A3D471;
    AND.W #$FF00                                                         ;A3D474;
    CMP.W #$0300                                                         ;A3D477;
    BEQ .normalShotAI                                                    ;A3D47A;
    CMP.W #$0500                                                         ;A3D47C;
    BNE .shot                                                            ;A3D47F;

.normalShotAI:
    JSL.L CommonA3_NormalEnemyShotAI                                     ;A3D481;
    RTL                                                                  ;A3D485;


.shot:
    LDA.L $7E7810,X                                                      ;A3D486;
    CMP.W #$0003                                                         ;A3D48A;
    BEQ .playSFX                                                         ;A3D48D;
    CMP.W #$0004                                                         ;A3D48F;
    BEQ .playSFX                                                         ;A3D492;
    JSR.W ShootYardIntoAir                                               ;A3D494;

.playSFX:
    LDA.W #$0070                                                         ;A3D497;
    JSL.L QueueSound_Lib2_Max3                                           ;A3D49A;
    RTL                                                                  ;A3D49E;


%anchor($A3D49F)
KickYardIntoAIr:
    LDA.W #$0004                                                         ;A3D49F;
    STA.L $7E7810,X                                                      ;A3D4A2;
    LDA.W #Function_Yard_Movement_Airborne                               ;A3D4A6;
    STA.W $0FB2,X                                                        ;A3D4A9;
    LDA.W $0FAC,X                                                        ;A3D4AC;
    ASL A                                                                ;A3D4AF;
    ASL A                                                                ;A3D4B0;
    TAY                                                                  ;A3D4B1;
    LDA.W .airbornePointers,Y                                            ;A3D4B2;
    STA.W $0F92,X                                                        ;A3D4B5;
    LDA.W .hidingPointers,Y                                              ;A3D4B8;
    STA.W $0FAE,X                                                        ;A3D4BB;
    LDA.W #$0001                                                         ;A3D4BE;
    STA.W $0F94,X                                                        ;A3D4C1;
    STZ.W $0F90,X                                                        ;A3D4C4;
    LDA.W $0DA4                                                          ;A3D4C7;
    STA.L $7E7804,X                                                      ;A3D4CA;
    LDA.W $0DA2                                                          ;A3D4CE;
    STA.L $7E7806,X                                                      ;A3D4D1;
    CMP.W #$0010                                                         ;A3D4D5;
    BCC +                                                                ;A3D4D8;
    LDA.W #$000F                                                         ;A3D4DA;

  + ASL A                                                                ;A3D4DD;
    ASL A                                                                ;A3D4DE;
    TAY                                                                  ;A3D4DF;
    LDA.W .YSubVelocity,Y                                                ;A3D4E0;
    STA.L $7E7800,X                                                      ;A3D4E3;
    LDA.W .YVelocity,Y                                                   ;A3D4E7;
    STA.L $7E7802,X                                                      ;A3D4EA;
    LDA.W $0A1E                                                          ;A3D4EE;
    BIT.W #$0004                                                         ;A3D4F1;
    BEQ .return                                                          ;A3D4F4;
    LDA.L $7E7804,X                                                      ;A3D4F6;
    EOR.W #$FFFF                                                         ;A3D4FA;
    INC A                                                                ;A3D4FD;
    STA.L $7E7804,X                                                      ;A3D4FE;
    LDA.L $7E7806,X                                                      ;A3D502;
    EOR.W #$FFFF                                                         ;A3D506;
    INC A                                                                ;A3D509;
    STA.L $7E7806,X                                                      ;A3D50A;

.return:
    RTS                                                                  ;A3D50E;


.airbornePointers:
    dw InstList_Yard_Airborne_FacingLeft_0                               ;A3D50F;

.hidingPointers:
    dw InstList_Yard_Hidden_UpsideUp_MovingLeft                          ;A3D511;
    dw InstList_Yard_Airborne_FacingRight_0                              ;A3D513;
    dw InstList_Yard_Hidden_UpsideUp_MovingRight                         ;A3D515;

; Y velocities. Indexed by X velocity
; Y subvelocity, Y velocity
.YSubVelocity:
    dw $0000                                                             ;A3D517;
.YVelocity:
    dw       $FFFD, $A000,$FFFD, $4000,$FFFD, $0000,$FFFC
    dw $A000,$FFFC, $4000,$FFFC, $0000,$FFFB, $A000,$FFFB
    dw $4000,$FFFB, $0000,$FFFA, $A000,$FFFA, $4000,$FFFA
    dw $0000,$FFF9, $A000,$FFF9, $4000,$FFF9, $0000,$FFF8

%anchor($A3D557)
ShootYardIntoAir:
    PHY                                                                  ;A3D557;
    LDA.W #$0005                                                         ;A3D558;
    STA.L $7E7810,X                                                      ;A3D55B;
    LDA.W #Function_Yard_Movement_Airborne                               ;A3D55F;
    STA.W $0FB2,X                                                        ;A3D562;
    LDA.W $0FAC,X                                                        ;A3D565;
    ASL A                                                                ;A3D568;
    ASL A                                                                ;A3D569;
    TAY                                                                  ;A3D56A;
    LDA.W .airbornePointers,Y                                            ;A3D56B;
    STA.W $0F92,X                                                        ;A3D56E;
    LDA.W .hidingPointers,Y                                              ;A3D571;
    STA.W $0FAE,X                                                        ;A3D574;
    LDA.W #$0001                                                         ;A3D577;
    STA.W $0F94,X                                                        ;A3D57A;
    STZ.W $0F90,X                                                        ;A3D57D;
    LDA.W #$FFFF                                                         ;A3D580;
    STA.L $7E7802,X                                                      ;A3D583;
    LDA.W $0A1E                                                          ;A3D587;
    AND.W #$00FF                                                         ;A3D58A;
    CMP.W #$0004                                                         ;A3D58D;
    BNE .SamusFacingRight                                                ;A3D590;
    LDA.W #$FFFF                                                         ;A3D592;
    STA.L $7E7806,X                                                      ;A3D595;
    BRA .return                                                          ;A3D599;


.SamusFacingRight:
    LDA.W #$0001                                                         ;A3D59B;
    STA.L $7E7806,X                                                      ;A3D59E;

.return:
    PLY                                                                  ;A3D5A2;
    RTS                                                                  ;A3D5A3;


.airbornePointers:
    dw InstList_Yard_Airborne_FacingLeft_0                               ;A3D5A4;

.hidingPointers:
    dw InstList_Yard_Hidden_UpsideUp_MovingLeft                          ;A3D5A6;
    dw InstList_Yard_Airborne_FacingRight_0                              ;A3D5A8;
    dw InstList_Yard_Hidden_UpsideUp_MovingRight                         ;A3D5AA;

%anchor($A3D5AC)
Spritemap_Yard_0:
    dw $0002                                                             ;A3D5AC;
    %spritemapEntry(1, $43FB, $F6, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F5, $F8, 0, 0, 2, 0, $100)

%anchor($A3D5B8)
Spritemap_Yard_1:
    dw $0002                                                             ;A3D5B8;
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F4, $F8, 0, 0, 2, 0, $102)

%anchor($A3D5C4)
Spritemap_Yard_2:
    dw $0002                                                             ;A3D5C4;
    %spritemapEntry(1, $43FB, $F5, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F5, $F8, 0, 0, 2, 0, $104)

%anchor($A3D5D0)
Spritemap_Yard_3:
    dw $0002                                                             ;A3D5D0;
    %spritemapEntry(1, $43F9, $F6, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F4, $FE, 0, 0, 2, 0, $106)

%anchor($A3D5DC)
Spritemap_Yard_4:
    dw $0002                                                             ;A3D5DC;
    %spritemapEntry(1, $43F2, $F6, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43F0, $01, 0, 0, 2, 0, $108)

%anchor($A3D5E8)
Spritemap_Yard_5:
    dw $0002                                                             ;A3D5E8;
    %spritemapEntry(1, $43EE, $F8, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F0, $00, 0, 0, 2, 0, $108)

%anchor($A3D5F4)
Spritemap_Yard_6:
    dw $0002                                                             ;A3D5F4;
    %spritemapEntry(1, $43F6, $F5, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FB, 0, 0, 2, 0, $108)

%anchor($A3D600)
Spritemap_Yard_7:
    dw $0002                                                             ;A3D600;
    %spritemapEntry(1, $43F6, $F4, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FC, 0, 0, 2, 0, $10A)

%anchor($A3D60C)
Spritemap_Yard_8:
    dw $0002                                                             ;A3D60C;
    %spritemapEntry(1, $43F5, $F5, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FB, 0, 0, 2, 0, $10C)

%anchor($A3D618)
Spritemap_Yard_9:
    dw $0002                                                             ;A3D618;
    %spritemapEntry(1, $43F6, $F7, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43FE, $FC, 0, 0, 2, 0, $10E)

%anchor($A3D624)
Spritemap_Yard_A:
    dw $0002                                                             ;A3D624;
    %spritemapEntry(1, $43F6, $FE, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $4201, $00, 1, 1, 2, 0, $100)

%anchor($A3D630)
Spritemap_Yard_B:
    dw $0002                                                             ;A3D630;
    %spritemapEntry(1, $43F8, $02, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $4200, $00, 1, 1, 2, 0, $100)

%anchor($A3D63C)
Spritemap_Yard_C:
    dw $0002                                                             ;A3D63C;
    %spritemapEntry(1, $43F5, $FA, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $43FB, $F8, 1, 1, 2, 0, $100)

%anchor($A3D648)
Spritemap_Yard_D:
    dw $0002                                                             ;A3D648;
    %spritemapEntry(1, $43F4, $FA, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $43FC, $F8, 1, 1, 2, 0, $102)

%anchor($A3D654)
Spritemap_Yard_E:
    dw $0002                                                             ;A3D654;
    %spritemapEntry(1, $43F5, $FB, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $43FB, $F8, 1, 1, 2, 0, $104)

%anchor($A3D660)
Spritemap_Yard_F:
    dw $0002                                                             ;A3D660;
    %spritemapEntry(1, $43F7, $FA, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $43FC, $F2, 1, 1, 2, 0, $106)

%anchor($A3D66C)
Spritemap_Yard_10:
    dw $0002                                                             ;A3D66C;
    %spritemapEntry(1, $43FE, $FA, 1, 1, 2, 0, $122)
    %spritemapEntry(1, $4200, $EF, 1, 1, 2, 0, $108)

%anchor($A3D678)
Spritemap_Yard_11:
    dw $0002                                                             ;A3D678;
    %spritemapEntry(1, $4202, $F8, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $4200, $F0, 1, 1, 2, 0, $108)

%anchor($A3D684)
Spritemap_Yard_12:
    dw $0002                                                             ;A3D684;
    %spritemapEntry(1, $43FA, $FB, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F5, 1, 1, 2, 0, $108)

%anchor($A3D690)
Spritemap_Yard_13:
    dw $0002                                                             ;A3D690;
    %spritemapEntry(1, $43FA, $FC, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F4, 1, 1, 2, 0, $10A)

%anchor($A3D69C)
Spritemap_Yard_14:
    dw $0002                                                             ;A3D69C;
    %spritemapEntry(1, $43FB, $FB, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F5, 1, 1, 2, 0, $10C)

%anchor($A3D6A8)
Spritemap_Yard_15:
    dw $0002                                                             ;A3D6A8;
    %spritemapEntry(1, $43FA, $F9, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $43F2, $F4, 1, 1, 2, 0, $10E)

%anchor($A3D6B4)
Spritemap_Yard_16:
    dw $0002                                                             ;A3D6B4;
    %spritemapEntry(1, $43FA, $F2, 1, 1, 2, 0, $126)
    %spritemapEntry(1, $43EF, $F0, 0, 0, 2, 0, $100)

%anchor($A3D6C0)
Spritemap_Yard_17:
    dw $0002                                                             ;A3D6C0;
    %spritemapEntry(1, $43F8, $EE, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 2, 0, $100)

%anchor($A3D6CC)
Spritemap_Yard_18:
    dw $0002                                                             ;A3D6CC;
    %spritemapEntry(1, $43FB, $F7, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F9, $F8, 0, 0, 2, 0, $100)

%anchor($A3D6D8)
Spritemap_Yard_19:
    dw $0001                                                             ;A3D6D8;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $122)

%anchor($A3D6DF)
Spritemap_Yard_1A:
    dw $0002                                                             ;A3D6DF;
    %spritemapEntry(1, $43F7, $F6, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $108)

%anchor($A3D6EB)
Spritemap_Yard_1B:
    dw $0001                                                             ;A3D6EB;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $126)

%anchor($A3D6F2)
Spritemap_Yard_1C:
    dw $0002                                                             ;A3D6F2;
    %spritemapEntry(1, $43F6, $F9, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $43F8, $F8, 1, 1, 2, 0, $100)

%anchor($A3D6FE)
Spritemap_Yard_1D:
    dw $0001                                                             ;A3D6FE;
    %spritemapEntry(1, $43F8, $F8, 1, 1, 2, 0, $122)

%anchor($A3D705)
Spritemap_Yard_1E:
    dw $0002                                                             ;A3D705;
    %spritemapEntry(1, $43F9, $FA, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F8, 1, 1, 2, 0, $108)

%anchor($A3D711)
Spritemap_Yard_1F:
    dw $0001                                                             ;A3D711;
    %spritemapEntry(1, $43F8, $F8, 1, 1, 2, 0, $126)

%anchor($A3D718)
Spritemap_Yard_20:
    dw $0002                                                             ;A3D718;
    %spritemapEntry(1, $43F5, $F6, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43FB, $F8, 0, 1, 2, 0, $100)

%anchor($A3D724)
Spritemap_Yard_21:
    dw $0002                                                             ;A3D724;
    %spritemapEntry(1, $43F4, $F6, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43FC, $F8, 0, 1, 2, 0, $102)

%anchor($A3D730)
Spritemap_Yard_22:
    dw $0002                                                             ;A3D730;
    %spritemapEntry(1, $43F5, $F5, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43FB, $F8, 0, 1, 2, 0, $104)

%anchor($A3D73C)
Spritemap_Yard_23:
    dw $0002                                                             ;A3D73C;
    %spritemapEntry(1, $43F7, $F6, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43FC, $FE, 0, 1, 2, 0, $106)

%anchor($A3D748)
Spritemap_Yard_24:
    dw $0002                                                             ;A3D748;
    %spritemapEntry(1, $43FE, $F6, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4200, $01, 0, 1, 2, 0, $108)

%anchor($A3D754)
Spritemap_Yard_25:
    dw $0002                                                             ;A3D754;
    %spritemapEntry(1, $4202, $F8, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $4200, $00, 0, 1, 2, 0, $108)

%anchor($A3D760)
Spritemap_Yard_26:
    dw $0002                                                             ;A3D760;
    %spritemapEntry(1, $43FA, $F5, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FB, 0, 1, 2, 0, $108)

%anchor($A3D76C)
Spritemap_Yard_27:
    dw $0002                                                             ;A3D76C;
    %spritemapEntry(1, $43FA, $F4, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FC, 0, 1, 2, 0, $10A)

%anchor($A3D778)
Spritemap_Yard_28:
    dw $0002                                                             ;A3D778;
    %spritemapEntry(1, $43FB, $F5, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FB, 0, 1, 2, 0, $10C)

%anchor($A3D784)
Spritemap_Yard_29:
    dw $0002                                                             ;A3D784;
    %spritemapEntry(1, $43FA, $F7, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F2, $FC, 0, 1, 2, 0, $10E)

%anchor($A3D790)
Spritemap_Yard_2A:
    dw $0002                                                             ;A3D790;
    %spritemapEntry(1, $43FA, $FE, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43EF, $00, 1, 0, 2, 0, $100)

%anchor($A3D79C)
Spritemap_Yard_2B:
    dw $0002                                                             ;A3D79C;
    %spritemapEntry(1, $43F8, $02, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F0, $00, 1, 0, 2, 0, $100)

%anchor($A3D7A8)
Spritemap_Yard_2C:
    dw $0002                                                             ;A3D7A8;
    %spritemapEntry(1, $43FB, $FA, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F5, $F8, 1, 0, 2, 0, $100)

%anchor($A3D7B4)
Spritemap_Yard_2D:
    dw $0002                                                             ;A3D7B4;
    %spritemapEntry(1, $43FC, $FA, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F4, $F8, 1, 0, 2, 0, $102)

%anchor($A3D7C0)
Spritemap_Yard_2E:
    dw $0002                                                             ;A3D7C0;
    %spritemapEntry(1, $43FB, $FB, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F5, $F8, 1, 0, 2, 0, $104)

%anchor($A3D7CC)
Spritemap_Yard_2F:
    dw $0002                                                             ;A3D7CC;
    %spritemapEntry(1, $43F9, $FA, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F4, $F2, 1, 0, 2, 0, $106)

%anchor($A3D7D8)
Spritemap_Yard_30:
    dw $0002                                                             ;A3D7D8;
    %spritemapEntry(1, $43F2, $FA, 1, 0, 2, 0, $122)
    %spritemapEntry(1, $43F0, $EF, 1, 0, 2, 0, $108)

%anchor($A3D7E4)
Spritemap_Yard_31:
    dw $0002                                                             ;A3D7E4;
    %spritemapEntry(1, $43EE, $F8, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43F0, $F0, 1, 0, 2, 0, $108)

%anchor($A3D7F0)
Spritemap_Yard_32:
    dw $0002                                                             ;A3D7F0;
    %spritemapEntry(1, $43F6, $FB, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F5, 1, 0, 2, 0, $108)

%anchor($A3D7FC)
Spritemap_Yard_33:
    dw $0002                                                             ;A3D7FC;
    %spritemapEntry(1, $43F6, $FC, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F4, 1, 0, 2, 0, $10A)

%anchor($A3D808)
Spritemap_Yard_34:
    dw $0002                                                             ;A3D808;
    %spritemapEntry(1, $43F5, $FB, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F5, 1, 0, 2, 0, $10C)

%anchor($A3D814)
Spritemap_Yard_35:
    dw $0002                                                             ;A3D814;
    %spritemapEntry(1, $43F7, $F9, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43FF, $F4, 1, 0, 2, 0, $10E)

%anchor($A3D820)
Spritemap_Yard_36:
    dw $0002                                                             ;A3D820;
    %spritemapEntry(1, $43F6, $F2, 1, 0, 2, 0, $126)
    %spritemapEntry(1, $4201, $F0, 0, 1, 2, 0, $100)

%anchor($A3D82C)
Spritemap_Yard_37:
    dw $0002                                                             ;A3D82C;
    %spritemapEntry(1, $43F8, $EE, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $4200, $F0, 0, 1, 2, 0, $100)

%anchor($A3D838)
Spritemap_Yard_38:
    dw $0002                                                             ;A3D838;
    %spritemapEntry(1, $43F5, $F7, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43F7, $F8, 0, 1, 2, 0, $100)

%anchor($A3D844)
Spritemap_Yard_39:
    dw $0001                                                             ;A3D844;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $122)

%anchor($A3D84B)
Spritemap_Yard_3A:
    dw $0002                                                             ;A3D84B;
    %spritemapEntry(1, $43F9, $F6, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $108)

%anchor($A3D857)
Spritemap_Yard_3B:
    dw $0001                                                             ;A3D857;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $126)

%anchor($A3D85E)
Spritemap_Yard_3C:
    dw $0002                                                             ;A3D85E;
    %spritemapEntry(1, $43FA, $F9, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $100)

%anchor($A3D86A)
Spritemap_Yard_3D:
    dw $0001                                                             ;A3D86A;
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $122)

%anchor($A3D871)
Spritemap_Yard_3E:
    dw $0002                                                             ;A3D871;
    %spritemapEntry(1, $43F7, $FA, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $108)

%anchor($A3D87D)
Spritemap_Yard_3F:
    dw $0001                                                             ;A3D87D;
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $126)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D884)
UNUSED_Spritemap_Yard_A3D884:
    dw $0002                                                             ;A3D884;
    %spritemapEntry(1, $43FB, $F6, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F5, $F8, 0, 0, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3D890)
Spritemap_Yard_40:
    dw $0002                                                             ;A3D890;
    %spritemapEntry(1, $43F5, $F8, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $43FB, $F7, 0, 0, 2, 0, $120)

%anchor($A3D89C)
Spritemap_Yard_41:
    dw $0002                                                             ;A3D89C;
    %spritemapEntry(1, $43FA, $FA, 1, 1, 2, 0, $126)
    %spritemapEntry(1, $43F8, $F7, 1, 1, 2, 0, $108)

%anchor($A3D8A8)
Spritemap_Yard_42:
    dw $0002                                                             ;A3D8A8;
    %spritemapEntry(1, $43FA, $FA, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F6, 1, 1, 2, 0, $108)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D8B4)
UNUSED_Spritemap_Yard_A3D8B4:
    dw $0002                                                             ;A3D8B4;
    %spritemapEntry(1, $43FA, $FB, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F5, 1, 1, 2, 0, $108)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3D8C0)
Spritemap_Yard_43:
    dw $0002                                                             ;A3D8C0;
    %spritemapEntry(1, $43F8, $F5, 1, 1, 2, 0, $12A)
    %spritemapEntry(1, $43F9, $FB, 1, 1, 2, 0, $124)

%anchor($A3D8CC)
Spritemap_Yard_44:
    dw $0002                                                             ;A3D8CC;
    %spritemapEntry(1, $43F6, $FA, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $43F9, $F8, 1, 1, 2, 0, $100)

%anchor($A3D8D8)
Spritemap_Yard_45:
    dw $0002                                                             ;A3D8D8;
    %spritemapEntry(1, $43F6, $FA, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $43FA, $F8, 1, 1, 2, 0, $100)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D8E4)
UNUSED_Spritemap_Yard_A3D8E4:
    dw $0002                                                             ;A3D8E4;
    %spritemapEntry(1, $43F5, $FA, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $43FB, $F8, 1, 1, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3D8F0)
Spritemap_Yard_46:
    dw $0002                                                             ;A3D8F0;
    %spritemapEntry(1, $43FB, $F8, 1, 1, 2, 0, $128)
    %spritemapEntry(1, $43F5, $F9, 1, 1, 2, 0, $120)

%anchor($A3D8FC)
Spritemap_Yard_47:
    dw $0002                                                             ;A3D8FC;
    %spritemapEntry(1, $43F6, $F6, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $43F8, $F9, 0, 0, 2, 0, $108)

%anchor($A3D908)
Spritemap_Yard_48:
    dw $0002                                                             ;A3D908;
    %spritemapEntry(1, $43F6, $F6, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FA, 0, 0, 2, 0, $108)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D914)
UNUSED_Spritemap_Yard_A3D914:
    dw $0002                                                             ;A3D914;
    %spritemapEntry(1, $43F6, $F5, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FB, 0, 0, 2, 0, $108)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3D920)
Spritemap_Yard_49:
    dw $0002                                                             ;A3D920;
    %spritemapEntry(1, $43F8, $FB, 0, 0, 2, 0, $12A)
    %spritemapEntry(1, $43F7, $F5, 0, 0, 2, 0, $124)

%anchor($A3D92C)
Spritemap_Yard_4A:
    dw $0002                                                             ;A3D92C;
    %spritemapEntry(1, $43FA, $F6, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43F7, $F8, 0, 0, 2, 0, $100)

%anchor($A3D938)
Spritemap_Yard_4B:
    dw $0002                                                             ;A3D938;
    %spritemapEntry(1, $43FB, $F6, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F7, $F8, 0, 0, 2, 0, $100)

%anchor($A3D944)
Spritemap_Yard_4C:
    dw $0001                                                             ;A3D944;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $122)

%anchor($A3D94B)
Spritemap_Yard_4D:
    dw $0002                                                             ;A3D94B;
    %spritemapEntry(1, $43F8, $F7, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $43F6, $F8, 0, 0, 2, 0, $100)

%anchor($A3D957)
Spritemap_Yard_4E:
    dw $0001                                                             ;A3D957;
    %spritemapEntry(1, $43F8, $F8, 1, 1, 2, 0, $126)

%anchor($A3D95E)
Spritemap_Yard_4F:
    dw $0002                                                             ;A3D95E;
    %spritemapEntry(1, $43F9, $F8, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F6, 1, 1, 2, 0, $108)

%anchor($A3D96A)
Spritemap_Yard_50:
    dw $0001                                                             ;A3D96A;
    %spritemapEntry(1, $43F8, $F8, 1, 1, 2, 0, $122)

%anchor($A3D971)
Spritemap_Yard_51:
    dw $0002                                                             ;A3D971;
    %spritemapEntry(1, $43F8, $F9, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $43FA, $F8, 1, 1, 2, 0, $100)

%anchor($A3D97D)
Spritemap_Yard_52:
    dw $0001                                                             ;A3D97D;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $126)

%anchor($A3D984)
Spritemap_Yard_53:
    dw $0002                                                             ;A3D984;
    %spritemapEntry(1, $43F7, $F8, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FA, 0, 0, 2, 0, $108)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D990)
UNUSED_Spritemap_Yard_A3D990:
    dw $0002                                                             ;A3D990;
    %spritemapEntry(1, $43F5, $F6, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43FB, $F8, 0, 1, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3D99C)
Spritemap_Yard_54:
    dw $0002                                                             ;A3D99C;
    %spritemapEntry(1, $43FB, $F8, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $43F5, $F7, 0, 1, 2, 0, $120)

%anchor($A3D9A8)
Spritemap_Yard_55:
    dw $0002                                                             ;A3D9A8;
    %spritemapEntry(1, $43F6, $FA, 1, 0, 2, 0, $126)
    %spritemapEntry(1, $43F8, $F7, 1, 0, 2, 0, $108)

%anchor($A3D9B4)
Spritemap_Yard_56:
    dw $0002                                                             ;A3D9B4;
    %spritemapEntry(1, $43F6, $FA, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F6, 1, 0, 2, 0, $108)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D9C0)
UNUSED_Spritemap_Yard_A3D9C0:
    dw $0002                                                             ;A3D9C0;
    %spritemapEntry(1, $43F6, $FB, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F5, 1, 0, 2, 0, $108)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3D9CC)
Spritemap_Yard_57:
    dw $0002                                                             ;A3D9CC;
    %spritemapEntry(1, $43F8, $F5, 1, 0, 2, 0, $12A)
    %spritemapEntry(1, $43F7, $FB, 1, 0, 2, 0, $124)

%anchor($A3D9D8)
Spritemap_Yard_58:
    dw $0002                                                             ;A3D9D8;
    %spritemapEntry(1, $43FA, $FA, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43F7, $F8, 1, 0, 2, 0, $100)

%anchor($A3D9E4)
Spritemap_Yard_59:
    dw $0002                                                             ;A3D9E4;
    %spritemapEntry(1, $43FA, $FA, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F6, $F8, 1, 0, 2, 0, $100)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3D9F0)
UNUSED_Spritemap_Yard_A3D9F0:
    dw $0002                                                             ;A3D9F0;
    %spritemapEntry(1, $43FB, $FA, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F5, $F8, 1, 0, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3D9FC)
Spritemap_Yard_5A:
    dw $0002                                                             ;A3D9FC;
    %spritemapEntry(1, $43F5, $F8, 1, 0, 2, 0, $128)
    %spritemapEntry(1, $43FB, $F9, 1, 0, 2, 0, $120)

%anchor($A3DA08)
Spritemap_Yard_5B:
    dw $0002                                                             ;A3DA08;
    %spritemapEntry(1, $43FA, $F6, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43F8, $F9, 0, 1, 2, 0, $108)

%anchor($A3DA14)
Spritemap_Yard_5C:
    dw $0002                                                             ;A3DA14;
    %spritemapEntry(1, $43FA, $F6, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FA, 0, 1, 2, 0, $108)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3DA20)
UNUSED_Spritemap_Yard_A3DA20:
    dw $0002                                                             ;A3DA20;
    %spritemapEntry(1, $43FA, $F5, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FB, 0, 1, 2, 0, $108)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3DA2C)
Spritemap_Yard_5D:
    dw $0002                                                             ;A3DA2C;
    %spritemapEntry(1, $43F8, $FB, 0, 1, 2, 0, $12A)
    %spritemapEntry(1, $43F9, $F5, 0, 1, 2, 0, $124)

%anchor($A3DA38)
Spritemap_Yard_5E:
    dw $0002                                                             ;A3DA38;
    %spritemapEntry(1, $43F6, $F6, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $43F9, $F8, 0, 1, 2, 0, $100)

%anchor($A3DA44)
Spritemap_Yard_5F:
    dw $0002                                                             ;A3DA44;
    %spritemapEntry(1, $43F5, $F6, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43F9, $F8, 0, 1, 2, 0, $100)

%anchor($A3DA50)
Spritemap_Yard_60:
    dw $0001                                                             ;A3DA50;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $122)

%anchor($A3DA57)
Spritemap_Yard_61:
    dw $0002                                                             ;A3DA57;
    %spritemapEntry(1, $43F8, $F7, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $43FA, $F8, 0, 1, 2, 0, $100)

%anchor($A3DA63)
Spritemap_Yard_62:
    dw $0001                                                             ;A3DA63;
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $126)

%anchor($A3DA6A)
Spritemap_Yard_63:
    dw $0002                                                             ;A3DA6A;
    %spritemapEntry(1, $43F7, $F8, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F6, 1, 0, 2, 0, $108)

%anchor($A3DA76)
Spritemap_Yard_64:
    dw $0001                                                             ;A3DA76;
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $122)

%anchor($A3DA7D)
Spritemap_Yard_65:
    dw $0002                                                             ;A3DA7D;
    %spritemapEntry(1, $43F8, $F9, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $43F6, $F8, 1, 0, 2, 0, $100)

%anchor($A3DA89)
Spritemap_Yard_66:
    dw $0001                                                             ;A3DA89;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $126)

%anchor($A3DA90)
Spritemap_Yard_67:
    dw $0002                                                             ;A3DA90;
    %spritemapEntry(1, $43F9, $F8, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $FA, 0, 1, 2, 0, $108)


%anchor($A3DA9C)
Palette_Reflec:
    dw $3800,$7FBD,$5EB5,$1884,$0800,$777B,$5EB5,$45EF                   ;A3DA9C;
    dw $2D29,$241F,$1C17,$142F,$0C47,$06E1,$6BF5,$05A1                   ;A3DAAC;

%anchor($A3DABC)
ReflecPaletteCycleColors:                                                ;A3DABC;
    dw $241F,$1C17,$142F,$0C47
    dw $211F,$18D8,$10B1,$086A
    dw $221F,$1999,$1113,$08AD
    dw $1EFF,$163A,$0D95,$04D0
    dw $1BFF,$12FB,$09F7,$00F3
    dw $1BFF,$12FB,$09F7,$00F3
    dw $1EFF,$163A,$0D95,$04D0
    dw $221F,$1999,$1113,$08AD
    dw $211F,$18D8,$10B1,$086A
    dw $241F,$1C17,$142F,$0C47

%anchor($A3DB0C)
EnemyGraphicsDrawnHook_Reflec_PeriodicallyCyclePalettes:
    LDA.W $0797                                                          ;A3DB0C;
    BNE .return                                                          ;A3DB0F;
    LDA.W $1798                                                          ;A3DB11;
    DEC A                                                                ;A3DB14;
    STA.W $1798                                                          ;A3DB15;
    BNE .return                                                          ;A3DB18;
    LDA.W #$0010                                                         ;A3DB1A;
    STA.W $1798                                                          ;A3DB1D;
    LDA.W $1794                                                          ;A3DB20;
    TAX                                                                  ;A3DB23;
    LDA.W $1796                                                          ;A3DB24;
    ASL A                                                                ;A3DB27;
    ASL A                                                                ;A3DB28;
    ASL A                                                                ;A3DB29;
    TAY                                                                  ;A3DB2A;
    LDA.W #$0004                                                         ;A3DB2B;
    STA.W $060B                                                          ;A3DB2E;

.loop:
    LDA.W ReflecPaletteCycleColors,Y                                     ;A3DB31;
    STA.L $7EC112,X                                                      ;A3DB34;
    INY                                                                  ;A3DB38;
    INY                                                                  ;A3DB39;
    INX                                                                  ;A3DB3A;
    INX                                                                  ;A3DB3B;
    DEC.W $060B                                                          ;A3DB3C;
    BNE .loop                                                            ;A3DB3F;
    LDA.W $1796                                                          ;A3DB41;
    INC A                                                                ;A3DB44;
    AND.W #$0007                                                         ;A3DB45;
    STA.W $1796                                                          ;A3DB48;

.return:
    RTL                                                                  ;A3DB4B;


%anchor($A3DB4C)
InstList_Reflec_FacingLeft:
    dw Instruction_Reflec_Param2InY,$0000                                ;A3DB4C;
    dw $0040,Spritemap_Reflec_0                                          ;A3DB4E;
    dw Instruction_Common_GotoY                                          ;A3DB54;
    dw InstList_Reflec_FacingLeft                                        ;A3DB56;

%anchor($A3DB58)
InstList_Reflec_FacingUpLeft:
    dw Instruction_Reflec_Param2InY,$0001                                ;A3DB58;
    dw $0040,Spritemap_Reflec_1                                          ;A3DB5A;
    dw Instruction_Common_GotoY                                          ;A3DB60;
    dw InstList_Reflec_FacingUpLeft                                      ;A3DB62;

%anchor($A3DB64)
InstList_Reflec_FacingUp:
    dw Instruction_Reflec_Param2InY,$0002                                ;A3DB64;
    dw $0040,Spritemap_Reflec_2                                          ;A3DB66;
    dw Instruction_Common_Sleep                                          ;A3DB6C;

%anchor($A3DB6E)
InstList_Reflec_FacingUpRight:
    dw Instruction_Reflec_Param2InY,$0003                                ;A3DB6E;
    dw $0040,Spritemap_Reflec_3                                          ;A3DB70;
    dw Instruction_Common_Sleep                                          ;A3DB76;

%anchor($A3DB78)
InstList_Reflec_FacingRight:
    dw Instruction_Reflec_Param2InY,$0000                                ;A3DB78;
    dw $0040,Spritemap_Reflec_4                                          ;A3DB7A;
    dw Instruction_Common_Sleep                                          ;A3DB80;

%anchor($A3DB82)
InstList_Reflec_FacingDownRight:
    dw Instruction_Reflec_Param2InY,$0001                                ;A3DB82;
    dw $0040,Spritemap_Reflec_5                                          ;A3DB84;
    dw Instruction_Common_Sleep                                          ;A3DB8A;

%anchor($A3DB8C)
InstList_Reflec_FacingDown:
    dw Instruction_Reflec_Param2InY,$0002                                ;A3DB8C;
    dw $0040,Spritemap_Reflec_6                                          ;A3DB8E;
    dw Instruction_Common_Sleep                                          ;A3DB94;

%anchor($A3DB96)
InstList_Reflec_FacingDownLeft:
    dw Instruction_Reflec_Param2InY,$0003                                ;A3DB96;
    dw $0040,Spritemap_Reflec_7                                          ;A3DB98;
    dw Instruction_Common_Sleep                                          ;A3DB9E;

%anchor($A3DBA0)
InstList_Reflec_ZeroHealth_FacingLeft:
    dw Instruction_Reflec_Param2InY,$0000                                ;A3DBA0;
    dw $0001,Spritemap_Reflec_0                                          ;A3DBA2;
    dw Instruction_Common_Sleep                                          ;A3DBA8;

%anchor($A3DBAA)
InstList_Reflec_ZeroHealth_FacingUpLeft:
    dw Instruction_Reflec_Param2InY,$0001                                ;A3DBAA;
    dw $0001,Spritemap_Reflec_1                                          ;A3DBAC;
    dw Instruction_Common_Sleep                                          ;A3DBB2;

%anchor($A3DBB4)
InstList_Reflec_ZeroHealth_FacingUp:
    dw Instruction_Reflec_Param2InY,$0002                                ;A3DBB4;
    dw $0001,Spritemap_Reflec_2                                          ;A3DBB6;
    dw Instruction_Common_Sleep                                          ;A3DBBC;

%anchor($A3DBBE)
InstList_Reflec_ZeroHealth_FacingUpRight:
    dw Instruction_Reflec_Param2InY,$0003                                ;A3DBBE;
    dw $0001,Spritemap_Reflec_3                                          ;A3DBC0;
    dw Instruction_Common_Sleep                                          ;A3DBC6;

%anchor($A3DBC8)
Instruction_Reflec_Param2InY:
    PHY                                                                  ;A3DBC8;
    LDA.W $0000,Y                                                        ;A3DBC9;
    STA.W $0FB6,X                                                        ;A3DBCC;
    PLY                                                                  ;A3DBCF;
    INY                                                                  ;A3DBD0;
    INY                                                                  ;A3DBD1;
    RTL                                                                  ;A3DBD2;


%anchor($A3DBD3)
InitAI_Reflec:
    LDX.W $0E54                                                          ;A3DBD3;
    LDA.W $0F86,X                                                        ;A3DBD6;
    ORA.W #$1000                                                         ;A3DBD9;
    STA.W $0F86,X                                                        ;A3DBDC;
    LDA.W $0FB4,X                                                        ;A3DBDF;
    ASL A                                                                ;A3DBE2;
    TAY                                                                  ;A3DBE3;
    LDA.W .pointers,Y                                                    ;A3DBE4;
    STA.W $0F92,X                                                        ;A3DBE7;
    LDA.W #EnemyGraphicsDrawnHook_Reflec_PeriodicallyCyclePalettes       ;A3DBEA;
    STA.W $178C                                                          ;A3DBED;
    LDA.W #EnemyGraphicsDrawnHook_Reflec_PeriodicallyCyclePalettes>>16   ;A3DBF0;
    STA.W $178E                                                          ;A3DBF3;
    LDA.W $0F96,X                                                        ;A3DBF6;
    ASL A                                                                ;A3DBF9;
    ASL A                                                                ;A3DBFA;
    ASL A                                                                ;A3DBFB;
    ASL A                                                                ;A3DBFC;
    AND.W #$FF00                                                         ;A3DBFD;
    XBA                                                                  ;A3DC00;
    STA.W $1794                                                          ;A3DC01;
    LDA.W #$0010                                                         ;A3DC04;
    STA.W $1798                                                          ;A3DC07;
    RTL                                                                  ;A3DC0A;


.pointers:
    dw InstList_Reflec_FacingLeft                                        ;A3DC0B;
    dw InstList_Reflec_FacingUpLeft                                      ;A3DC0D;
    dw InstList_Reflec_FacingUp                                          ;A3DC0F;
    dw InstList_Reflec_FacingUpRight                                     ;A3DC11;
    dw InstList_Reflec_FacingRight                                       ;A3DC13;
    dw InstList_Reflec_FacingDownRight                                   ;A3DC15;
    dw InstList_Reflec_FacingDown                                        ;A3DC17;
    dw InstList_Reflec_FacingDownLeft                                    ;A3DC19;

%anchor($A3DC1B)
RTL_A3DC1B:
    RTL                                                                  ;A3DC1B;


%anchor($A3DC1C)
EnemyShot_Reflec:
    LDX.W $0E54                                                          ;A3DC1C;
    LDA.W $18A6                                                          ;A3DC1F;
    ASL A                                                                ;A3DC22;
    TAY                                                                  ;A3DC23;
    LDA.W #$000A                                                         ;A3DC24;
    STA.W $0FA0,X                                                        ;A3DC27;
    LDA.W $0FB6,X                                                        ;A3DC2A;
    ASL A                                                                ;A3DC2D;
    ASL A                                                                ;A3DC2E;
    ASL A                                                                ;A3DC2F;
    ASL A                                                                ;A3DC30;
    ASL A                                                                ;A3DC31;
    STA.W $0E32                                                          ;A3DC32;
    LDA.W $0C04,Y                                                        ;A3DC35;
    AND.W #$000F                                                         ;A3DC38;
    ASL A                                                                ;A3DC3B;
    CLC                                                                  ;A3DC3C;
    ADC.W $0E32                                                          ;A3DC3D;
    TAX                                                                  ;A3DC40;
    STA.W $0E32                                                          ;A3DC41;
    LDA.W ReflectedDirectionTable,X                                      ;A3DC44;
    CMP.W #$8000                                                         ;A3DC47;
    BEQ +                                                                ;A3DC4A;
    LDA.W ReflectedDirectionTable,X                                      ;A3DC4C;
    BMI .executeFunction                                                 ;A3DC4F;
    BRA .skipFunction                                                    ;A3DC51;


.executeFunction:
    JSR.W (ReflectedDirectionTable_offsetNegatives,X)                    ;A3DC53;
    LDX.W $0E32                                                          ;A3DC56;
    LDA.W ReflectedDirectionTable,X                                      ;A3DC59;
    EOR.W #$FFFF                                                         ;A3DC5C;
    INC A                                                                ;A3DC5F;

.skipFunction:
    STA.W $0C04,Y                                                        ;A3DC60;
    LDA.W $0C18,Y                                                        ;A3DC63;
    AND.W #$7FFF                                                         ;A3DC66;
    STA.W $0C18,Y                                                        ;A3DC69;
    STY.B $14                                                            ;A3DC6C;
    JSL.L ProjectileReflection                                           ;A3DC6E;
    LDA.W #$0057                                                         ;A3DC72;
    JSL.L QueueSound_Lib2_Max6                                           ;A3DC75;
    RTL                                                                  ;A3DC79;


  + LDA.W $0C04,Y                                                        ;A3DC7A;
    ORA.W #$0010                                                         ;A3DC7D;
    STA.W $0C04,Y                                                        ;A3DC80;
    LDA.W $0F8C,X                                                        ;A3DC83;
    BEQ .return                                                          ;A3DC86;
    JSL.L CommonA3_NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic     ;A3DC88;
    LDA.W $0F8C,X                                                        ;A3DC8C;
    BNE .return                                                          ;A3DC8F;
    LDA.W $0FB6,X                                                        ;A3DC91;
    ASL A                                                                ;A3DC94;
    TAY                                                                  ;A3DC95;
    LDA.W .pointers,Y                                                    ;A3DC96;
    STA.W $0F92,X                                                        ;A3DC99;
    LDA.W #$0001                                                         ;A3DC9C;
    STA.W $0F94,X                                                        ;A3DC9F;
    STZ.W $0F90,X                                                        ;A3DCA2;

.return:
    RTL                                                                  ;A3DCA5;


.pointers:
; Instruction lists for when health reaches zero...
    dw InstList_Reflec_ZeroHealth_FacingLeft                             ;A3DCA6;
    dw InstList_Reflec_ZeroHealth_FacingUpLeft                           ;A3DCA8;
    dw InstList_Reflec_ZeroHealth_FacingUp                               ;A3DCAA;
    dw InstList_Reflec_ZeroHealth_FacingUpRight                          ;A3DCAC;

%anchor($A3DCAE)
ReflectedDirectionTable:                                                 ;A3DCAE;
; Reflected direction table
; 8000h = no reflected projectile
; Negative = reflection projectile position is offset
;        _______________________________________________________ Up, facing right
;       |      _________________________________________________ Up-right
;       |     |      ___________________________________________ Right
;       |     |     |      _____________________________________ Down-right
;       |     |     |     |      _______________________________ Down, facing right
;       |     |     |     |     |      _________________________ Down, facing left
;       |     |     |     |     |     |      ___________________ Down-left
;       |     |     |     |     |     |     |      _____________ Left
;       |     |     |     |     |     |     |     |      _______ Up-left
;       |     |     |     |     |     |     |     |     |      _ Up, facing left
;       |     |     |     |     |     |     |     |     |     |
    dw $8000,$FFF8,$0007,$FFFA,$8000,$8000,$FFFD,$0002,$FFFF,$8000, $0000,$0000,$0000,$0000,$0000,$0000 ; 0: Vertical
    dw $FFFE,$8000,$FFF7,$0008,$FFF9,$FFF9,$8000,$FFFB,$0003,$FFFE, $0000,$0000,$0000,$0000,$0000,$0000 ; 1: Up-right diagonal
    dw $0004,$FFFD,$8000,$FFFF,$0000,$0009,$FFF8,$8000,$FFFA,$0005, $0000,$0000,$0000,$0000,$0000,$0000 ; 2: Horizontal
    dw $FFF9,$0006,$FFFC,$8000,$FFFE,$FFFE,$0001,$FFF7,$8000,$FFF9, $0000,$0000,$0000,$0000,$0000,$0000 ; 3: Down-right diagonal

%anchor($A3DD2E)
ReflectedDirectionTable_offsetNegatives:                                 ;A3DD2E;
; Offset function for negative entries of above table
;        _______________________________________________________ Up, facing right
;       |      _________________________________________________ Up-right
;       |     |      ___________________________________________ Right
;       |     |     |      _____________________________________ Down-right
;       |     |     |     |      _______________________________ Down, facing right
;       |     |     |     |     |      _________________________ Down, facing left
;       |     |     |     |     |     |      ___________________ Down-left
;       |     |     |     |     |     |     |      _____________ Left
;       |     |     |     |     |     |     |     |      _______ Up-left
;       |     |     |     |     |     |     |     |     |      _ Up, facing left
;       |     |     |     |     |     |     |     |     |     |
    dw $0000,$DDAE,$0000,$DDAE,$0000,$0000,$DDCF,$0000,$DDCF,$0000, $0000,$0000,$0000,$0000,$0000,$0000 ; 0: Vertical
    dw $DDF0,$0000,$DE0D,$0000,$DE2A,$DE2A,$0000,$DE47,$0000,$DDF0, $0000,$0000,$0000,$0000,$0000,$0000 ; 1: Up-right diagonal
    dw $0000,$DE64,$0000,$DE85,$0000,$0000,$DE85,$0000,$DE64,$0000, $0000,$0000,$0000,$0000,$0000,$0000 ; 2: Horizontal
    dw $DEA6,$0000,$DEC3,$0000,$DEE0,$DEE0,$0000,$DEFD,$0000,$DEA6, $0000,$0000,$0000,$0000,$0000,$0000 ; 3: Down-right diagonal

%anchor($A3DDAE)
Function_Reflec_ReflectionOffset_Vertical_UpRight_DownRight:
    LDX.W $0E54                                                          ;A3DDAE;
    LDA.W $0F7A,X                                                        ;A3DDB1;
    SEC                                                                  ;A3DDB4;
    SBC.W #$0008                                                         ;A3DDB5;
    STA.W $0E36                                                          ;A3DDB8;
    LDA.W $0B64,Y                                                        ;A3DDBB;
    CLC                                                                  ;A3DDBE;
    ADC.W $0BB4,Y                                                        ;A3DDBF;
    CMP.W $0E36                                                          ;A3DDC2;
    BPL .return1                                                         ;A3DDC5;
    LDA.W #$0000                                                         ;A3DDC7;
    RTS                                                                  ;A3DDCA;


.return1:
    LDA.W #$0001                                                         ;A3DDCB;
    RTS                                                                  ;A3DDCE;


%anchor($A3DDCF)
Function_Reflec_ReflectionOffset_Vertical_UpLeft_DownLeft:
    LDX.W $0E54                                                          ;A3DDCF;
    LDA.W $0F7A,X                                                        ;A3DDD2;
    CLC                                                                  ;A3DDD5;
    ADC.W #$0008                                                         ;A3DDD6;
    STA.W $0E36                                                          ;A3DDD9;
    LDA.W $0B64,Y                                                        ;A3DDDC;
    SEC                                                                  ;A3DDDF;
    SBC.W $0BB4,Y                                                        ;A3DDE0;
    CMP.W $0E36                                                          ;A3DDE3;
    BMI .return1                                                         ;A3DDE6;
    LDA.W #$0000                                                         ;A3DDE8;
    RTS                                                                  ;A3DDEB;


.return1:
    LDA.W #$0001                                                         ;A3DDEC;
    RTS                                                                  ;A3DDEF;


%anchor($A3DDF0)
Function_Reflec_ReflectionOffset_UpRightDiagonal_Up:
    LDX.W $0E54                                                          ;A3DDF0;
    LDA.W $0F7A,X                                                        ;A3DDF3;
    STA.W $0E36                                                          ;A3DDF6;
    LDA.W $0B64,Y                                                        ;A3DDF9;
    CLC                                                                  ;A3DDFC;
    ADC.W $0BB4,Y                                                        ;A3DDFD;
    CMP.W $0E36                                                          ;A3DE00;
    BMI .return1                                                         ;A3DE03;
    LDA.W #$0000                                                         ;A3DE05;
    RTS                                                                  ;A3DE08;


.return1:
    LDA.W #$0001                                                         ;A3DE09;
    RTS                                                                  ;A3DE0C;


%anchor($A3DE0D)
Function_Reflec_ReflectionOffset_UpRightDiagonal_Right:
    LDX.W $0E54                                                          ;A3DE0D;
    LDA.W $0F7E,X                                                        ;A3DE10;
    STA.W $0E36                                                          ;A3DE13;
    LDA.W $0B78,Y                                                        ;A3DE16;
    SEC                                                                  ;A3DE19;
    SBC.W $0BC8,Y                                                        ;A3DE1A;
    CMP.W $0E36                                                          ;A3DE1D;
    BPL .return1                                                         ;A3DE20;
    LDA.W #$0000                                                         ;A3DE22;
    RTS                                                                  ;A3DE25;


.return1:
    LDA.W #$0001                                                         ;A3DE26;
    RTS                                                                  ;A3DE29;


%anchor($A3DE2A)
Function_Reflec_ReflectionOffset_UpRightDiagonal_Down:
    LDX.W $0E54                                                          ;A3DE2A;
    LDA.W $0F7A,X                                                        ;A3DE2D;
    STA.W $0E36                                                          ;A3DE30;
    LDA.W $0B64,Y                                                        ;A3DE33;
    SEC                                                                  ;A3DE36;
    SBC.W $0BB4,Y                                                        ;A3DE37;
    CMP.W $0E36                                                          ;A3DE3A;
    BPL .return1                                                         ;A3DE3D;
    LDA.W #$0000                                                         ;A3DE3F;
    RTS                                                                  ;A3DE42;


.return1:
    LDA.W #$0001                                                         ;A3DE43;
    RTS                                                                  ;A3DE46;


%anchor($A3DE47)
Function_Reflec_ReflectionOffset_UpRightDiagonal_Left:
    LDX.W $0E54                                                          ;A3DE47;
    LDA.W $0F7E,X                                                        ;A3DE4A;
    STA.W $0E36                                                          ;A3DE4D;
    LDA.W $0B78,Y                                                        ;A3DE50;
    CLC                                                                  ;A3DE53;
    ADC.W $0BC8,Y                                                        ;A3DE54;
    CMP.W $0E36                                                          ;A3DE57;
    BMI .return1                                                         ;A3DE5A;
    LDA.W #$0000                                                         ;A3DE5C;
    RTS                                                                  ;A3DE5F;


.return1:
    LDA.W #$0001                                                         ;A3DE60;
    RTS                                                                  ;A3DE63;


%anchor($A3DE64)
Function_Reflec_ReflectionOffset_Horizontal_UpRight_UpLeft:
    LDX.W $0E54                                                          ;A3DE64;
    LDA.W $0F7E,X                                                        ;A3DE67;
    CLC                                                                  ;A3DE6A;
    ADC.W #$0008                                                         ;A3DE6B;
    STA.W $0E36                                                          ;A3DE6E;
    LDA.W $0B78,Y                                                        ;A3DE71;
    SEC                                                                  ;A3DE74;
    SBC.W $0BC8,Y                                                        ;A3DE75;
    CMP.W $0E36                                                          ;A3DE78;
    BMI .return1                                                         ;A3DE7B;
    LDA.W #$0000                                                         ;A3DE7D;
    RTS                                                                  ;A3DE80;


.return1:
    LDA.W #$0001                                                         ;A3DE81;
    RTS                                                                  ;A3DE84;


%anchor($A3DE85)
Func_Reflec_ReflectionOffset_Horizontal_DownRight_DownLeft:
    LDX.W $0E54                                                          ;A3DE85;
    LDA.W $0F7E,X                                                        ;A3DE88;
    SEC                                                                  ;A3DE8B;
    SBC.W #$0008                                                         ;A3DE8C;
    STA.W $0E36                                                          ;A3DE8F;
    LDA.W $0B78,Y                                                        ;A3DE92;
    CLC                                                                  ;A3DE95;
    ADC.W $0BC8,Y                                                        ;A3DE96;
    CMP.W $0E36                                                          ;A3DE99;
    BPL .return1                                                         ;A3DE9C;
    LDA.W #$0000                                                         ;A3DE9E;
    RTS                                                                  ;A3DEA1;


.return1:
    LDA.W #$0001                                                         ;A3DEA2;
    RTS                                                                  ;A3DEA5;


%anchor($A3DEA6)
Function_Reflec_ReflectionOffset_DownRightDiagonal_Up:
    LDX.W $0E54                                                          ;A3DEA6;
    LDA.W $0F7A,X                                                        ;A3DEA9;
    STA.W $0E36                                                          ;A3DEAC;
    LDA.W $0B64,Y                                                        ;A3DEAF;
    SEC                                                                  ;A3DEB2;
    SBC.W $0BB4,Y                                                        ;A3DEB3;
    CMP.W $0E36                                                          ;A3DEB6;
    BMI .return1                                                         ;A3DEB9;
    LDA.W #$0000                                                         ;A3DEBB;
    RTS                                                                  ;A3DEBE;


.return1:
    LDA.W #$0001                                                         ;A3DEBF;
    RTS                                                                  ;A3DEC2;


%anchor($A3DEC3)
Function_Reflec_ReflectionOffset_DownRightDiagonal_Right:
    LDX.W $0E54                                                          ;A3DEC3;
    LDA.W $0F7E,X                                                        ;A3DEC6;
    STA.W $0E36                                                          ;A3DEC9;
    LDA.W $0B78,Y                                                        ;A3DECC;
    CLC                                                                  ;A3DECF;
    ADC.W $0BC8,Y                                                        ;A3DED0;
    CMP.W $0E36                                                          ;A3DED3;
    BPL .return0                                                         ;A3DED6;
    LDA.W #$0001                                                         ;A3DED8;
    RTS                                                                  ;A3DEDB;


.return0:
    LDA.W #$0000                                                         ;A3DEDC;
    RTS                                                                  ;A3DEDF;


%anchor($A3DEE0)
Function_Reflec_ReflectionOffset_DownRightDiagonal_Down:
    LDX.W $0E54                                                          ;A3DEE0;
    LDA.W $0F7A,X                                                        ;A3DEE3;
    STA.W $0E36                                                          ;A3DEE6;
    LDA.W $0B64,Y                                                        ;A3DEE9;
    SEC                                                                  ;A3DEEC;
    SBC.W $0BB4,Y                                                        ;A3DEED;
    CMP.W $0E36                                                          ;A3DEF0;
    BMI .return1                                                         ;A3DEF3;
    LDA.W #$0000                                                         ;A3DEF5;
    RTS                                                                  ;A3DEF8;


.return1:
    LDA.W #$0001                                                         ;A3DEF9;
    RTS                                                                  ;A3DEFC;


%anchor($A3DEFD)
Function_Reflec_ReflectionOffset_DownRightDiagonal_Left:
    LDX.W $0E54                                                          ;A3DEFD;
    LDA.W $0F7E,X                                                        ;A3DF00;
    STA.W $0E36                                                          ;A3DF03;
    LDA.W $0B78,Y                                                        ;A3DF06;
    SEC                                                                  ;A3DF09;
    SBC.W $0BC8,Y                                                        ;A3DF0A;
    CMP.W $0E36                                                          ;A3DF0D;
    BPL .return1                                                         ;A3DF10;
    LDA.W #$0000                                                         ;A3DF12;
    RTS                                                                  ;A3DF15;


.return1:
    LDA.W #$0001                                                         ;A3DF16;
    RTS                                                                  ;A3DF19;


%anchor($A3DF1A)
Spritemap_Reflec_0:
    dw $0003                                                             ;A3DF1A;
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $10D)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)

%anchor($A3DF2B)
Spritemap_Reflec_1:
    dw $0003                                                             ;A3DF2B;
    %spritemapEntry(1, $1EA, $F3, 0, 0, 2, 0, $11A)
    %spritemapEntry(1, $1F2, $EB, 0, 0, 2, 0, $10B)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $102)

%anchor($A3DF3C)
Spritemap_Reflec_2:
    dw $0003                                                             ;A3DF3C;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $00, $F1, 1, 0, 2, 0, $118)
    %spritemapEntry(1, $1F0, $F1, 0, 0, 2, 0, $108)

%anchor($A3DF4D)
Spritemap_Reflec_3:
    dw $0003                                                             ;A3DF4D;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $06, $F3, 0, 1, 2, 0, $11A)
    %spritemapEntry(1, $1FE, $EB, 0, 1, 2, 0, $10B)

%anchor($A3DF5E)
Spritemap_Reflec_4:
    dw $0003                                                             ;A3DF5E;
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 0, $10D)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)

%anchor($A3DF6F)
Spritemap_Reflec_5:
    dw $0003                                                             ;A3DF6F;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $06, $FD, 1, 1, 2, 0, $11A)
    %spritemapEntry(1, $1FE, $05, 1, 1, 2, 0, $10B)

%anchor($A3DF80)
Spritemap_Reflec_6:
    dw $0003                                                             ;A3DF80;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $00, $FF, 0, 0, 2, 0, $118)
    %spritemapEntry(1, $1F0, $FF, 1, 0, 2, 0, $108)

%anchor($A3DF91)
Spritemap_Reflec_7:
    dw $0003                                                             ;A3DF91;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1EA, $FD, 1, 0, 2, 0, $11A)
    %spritemapEntry(1, $1F2, $05, 1, 0, 2, 0, $10B)


%anchor($A3DFA2)
Palette_HZoomer:
    dw $3800,$7F5A,$3BE0,$2680,$0920,$4F5A,$36B5,$2610                   ;A3DFA2;
    dw $1DCE,$5294,$39CE,$2108,$1084,$033B,$0216,$0113                   ;A3DFB2;

%anchor($A3DFC2)
Instruction_HZoomer_FunctionInY:
    LDA.W $0000,Y                                                        ;A3DFC2;
    STA.W $0FB2,X                                                        ;A3DFC5;
    INY                                                                  ;A3DFC8;
    INY                                                                  ;A3DFC9;
    RTL                                                                  ;A3DFCA;


%anchor($A3DFCB)
InstList_HZoomer_UpsideRight_0:
    dw Instruction_HZoomer_FunctionInY                                   ;A3DFCB;
    dw Function_HZoomer_CrawlingVertically                               ;A3DFCD;

%anchor($A3DFCF)
InstList_HZoomer_UpsideRight_1:
    dw $0003,Spritemap_Crawlers_UpsideRight_0                            ;A3DFCF;
    dw $0003,Spritemap_Crawlers_UpsideRight_1                            ;A3DFD3;
    dw $0003,Spritemap_Crawlers_UpsideRight_2                            ;A3DFD7;
    dw $0003,Spritemap_Crawlers_UpsideRight_3                            ;A3DFDB;
    dw $0003,Spritemap_Crawlers_UpsideRight_4                            ;A3DFDF;
    dw Instruction_Common_GotoY                                          ;A3DFE3;
    dw InstList_HZoomer_UpsideRight_1                                    ;A3DFE5;

%anchor($A3DFE7)
InstList_HZoomer_UpsideLeft_0:
    dw Instruction_HZoomer_FunctionInY                                   ;A3DFE7;
    dw Function_HZoomer_CrawlingVertically                               ;A3DFE9;

%anchor($A3DFEB)
InstList_HZoomer_UpsideLeft_1:
    dw $0003,Spritemap_Crawlers_UpsideLeft_0                             ;A3DFEB;
    dw $0003,Spritemap_Crawlers_UpsideLeft_1                             ;A3DFEF;
    dw $0003,Spritemap_Crawlers_UpsideLeft_2                             ;A3DFF3;
    dw $0003,Spritemap_Crawlers_UpsideLeft_3                             ;A3DFF7;
    dw $0003,Spritemap_Crawlers_UpsideLeft_4                             ;A3DFFB;
    dw Instruction_Common_GotoY                                          ;A3DFFF;
    dw InstList_HZoomer_UpsideLeft_1                                     ;A3E001;

%anchor($A3E003)
InstList_HZoomer_UpsideDown_0:
    dw Instruction_HZoomer_FunctionInY                                   ;A3E003;
    dw Function_HZoomer_CrawlingHorizontally                             ;A3E005;

%anchor($A3E007)
InstList_HZoomer_UpsideDown_1:
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_0                  ;A3E007;
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_1                  ;A3E00B;
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_2                  ;A3E00F;
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_3                  ;A3E013;
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_4                  ;A3E017;
    dw Instruction_Common_GotoY                                          ;A3E01B;
    dw InstList_HZoomer_UpsideDown_1                                     ;A3E01D;

%anchor($A3E01F)
InstList_HZoomer_UpsideUp_0:
    dw Instruction_HZoomer_FunctionInY                                   ;A3E01F;
    dw Function_HZoomer_CrawlingHorizontally                             ;A3E021;

%anchor($A3E023)
InstList_HZoomer_UpsideUp_1:
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_0                   ;A3E023;
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_1                   ;A3E027;
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_2                   ;A3E02B;
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_3                   ;A3E02F;
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_4                   ;A3E033;
    dw Instruction_Common_GotoY                                          ;A3E037;
    dw InstList_HZoomer_UpsideUp_1                                       ;A3E039;

%anchor($A3E03B)
HZoomerInitialInstListPointers:
; Indexed by [enemy initialisation parameter] * 2
    dw InstList_HZoomer_UpsideRight_0                                    ;A3E03B; 0: Upside right
    dw InstList_HZoomer_UpsideLeft_0                                     ;A3E03D; 1: Upside left
    dw InstList_HZoomer_UpsideDown_0                                     ;A3E03F; 2: Upside down
    dw InstList_HZoomer_UpsideUp_0                                       ;A3E041; 3: Upside up

%anchor($A3E043)
InitAI_HZoomer:
    LDX.W $0E54                                                          ;A3E043;
    LDA.W $0F92,X                                                        ;A3E046;
    AND.W #$0003                                                         ;A3E049;
    ASL A                                                                ;A3E04C;
    TAY                                                                  ;A3E04D;
    LDA.W HZoomerInitialInstListPointers,Y                               ;A3E04E;
    STA.W $0F92,X                                                        ;A3E051;
    LDA.W #.return                                                       ;A3E054;
    STA.W $0FB2,X                                                        ;A3E057;
    LDA.W $0FB4,X                                                        ;A3E05A;
    ASL A                                                                ;A3E05D;
    TAY                                                                  ;A3E05E;
    LDA.W CrawlersSpeedTable,Y                                           ;A3E05F;
    STA.W $0FA8,X                                                        ;A3E062;
    STA.W $0FAA,X                                                        ;A3E065;
    LDA.W $0F86,X                                                        ;A3E068;
    AND.W #$0003                                                         ;A3E06B;
    BNE +                                                                ;A3E06E;
    LDA.W $0FA8,X                                                        ;A3E070;
    EOR.W #$FFFF                                                         ;A3E073;
    INC A                                                                ;A3E076;
    STA.W $0FA8,X                                                        ;A3E077;
    RTL                                                                  ;A3E07A;


  + CMP.W #$0002                                                         ;A3E07B;
    BNE .return                                                          ;A3E07E;
    LDA.W $0FAA,X                                                        ;A3E080;
    EOR.W #$FFFF                                                         ;A3E083;
    INC A                                                                ;A3E086;
    STA.W $0FAA,X                                                        ;A3E087;

.return:
    RTL                                                                  ;A3E08A;


%anchor($A3E08B)
MainAI_HZoomer:
    LDX.W $0E54                                                          ;A3E08B;
    JMP.W ($0FB2,X)                                                      ;A3E08E;


%anchor($A3E091)
Function_HZoomer_CrawlingVertically:
    LDA.W $1840                                                          ;A3E091;
    CMP.W #$001E                                                         ;A3E094;
    BNE .noQuake                                                         ;A3E097;
    LDA.W $183E                                                          ;A3E099;
    CMP.W #$0014                                                         ;A3E09C;
    BNE .noQuake                                                         ;A3E09F;
    LDA.W $0FB2,X                                                        ;A3E0A1;
    STA.L $7E7806,X                                                      ;A3E0A4;
    LDA.W #Function_Crawlers_Falling                                     ;A3E0A8;
    STA.W $0FB2,X                                                        ;A3E0AB;

.noQuake:
    STZ.B $12                                                            ;A3E0AE;
    STZ.B $14                                                            ;A3E0B0;
    LDA.W $0FA8,X                                                        ;A3E0B2;
    BPL +                                                                ;A3E0B5;
    DEC.B $14                                                            ;A3E0B7;

  + STA.B $13                                                            ;A3E0B9;
    LDA.B $14                                                            ;A3E0BB;
    BPL .inc                                                             ;A3E0BD;
    DEC A                                                                ;A3E0BF;
    BRA .moveRight                                                       ;A3E0C0;


.inc:
    INC A                                                                ;A3E0C2;

.moveRight:
    STA.B $14                                                            ;A3E0C3;
    JSL.L MoveEnemyRightBy_14_12_ProcessSlopes                           ;A3E0C5;
    BCC .outsideTurn                                                     ;A3E0C9;
    LDA.W #$0000                                                         ;A3E0CB;
    STA.L $7E7808,X                                                      ;A3E0CE;
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;A3E0D2;
    STZ.B $12                                                            ;A3E0D6;
    STZ.B $14                                                            ;A3E0D8;
    LDA.W $0FAA,X                                                        ;A3E0DA;
    BPL .moveDown                                                        ;A3E0DD;
    DEC.B $14                                                            ;A3E0DF;

.moveDown:
    STA.B $13                                                            ;A3E0E1;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3E0E3;
    BCS .insideTurn                                                      ;A3E0E7;
    LDX.W $0E54                                                          ;A3E0E9;
    LDA.W $0AFA                                                          ;A3E0EC;
    SEC                                                                  ;A3E0EF;
    SBC.W $0F7E,X                                                        ;A3E0F0;
    BPL .SamusRightOfZHoomer                                             ;A3E0F3;
    LDA.W $0FAA,X                                                        ;A3E0F5;
    BMI .return                                                          ;A3E0F8;
    BRA .negateY                                                         ;A3E0FA;


.SamusRightOfZHoomer:
    LDA.W $0FAA,X                                                        ;A3E0FC;
    BPL .return                                                          ;A3E0FF;

.negateY:
    EOR.W #$FFFF                                                         ;A3E101;
    INC A                                                                ;A3E104;

.return:
    STA.W $0FAA,X                                                        ;A3E105;
    RTL                                                                  ;A3E108;


.insideTurn:
    LDA.W $0FA8,X                                                        ;A3E109;
    EOR.W #$FFFF                                                         ;A3E10C;
    INC A                                                                ;A3E10F;
    STA.W $0FA8,X                                                        ;A3E110;
    LDY.W #InstList_HZoomer_UpsideUp_0                                   ;A3E113;
    LDY.W #InstList_HZoomer_UpsideUp_0                                   ;A3E116; >.<
    LDA.W $0FAA,X                                                        ;A3E119;
    BPL ..keepUp                                                         ;A3E11C;
    LDY.W #InstList_HZoomer_UpsideDown_0                                 ;A3E11E;

..keepUp:
    TYA                                                                  ;A3E121;
    STA.W $0F92,X                                                        ;A3E122;
    LDA.W #$0001                                                         ;A3E125;
    STA.W $0F94,X                                                        ;A3E128;
    RTL                                                                  ;A3E12B;


.outsideTurn:
    LDA.L $7E7808,X                                                      ;A3E12C;
    INC A                                                                ;A3E130;
    STA.L $7E7808,X                                                      ;A3E131;
    CMP.W #$0004                                                         ;A3E135;
    BMI .notFalling                                                      ;A3E138;
    LDA.W $0FB2,X                                                        ;A3E13A;
    STA.L $7E7806,X                                                      ;A3E13D;
    LDA.W #Function_Crawlers_Falling                                     ;A3E141;
    STA.W $0FB2,X                                                        ;A3E144;
    RTL                                                                  ;A3E147;


.notFalling:
    LDA.W $0FAA,X                                                        ;A3E148;
    EOR.W #$FFFF                                                         ;A3E14B;
    INC A                                                                ;A3E14E;
    STA.W $0FAA,X                                                        ;A3E14F;
    LDY.W #InstList_HZoomer_UpsideUp_0                                   ;A3E152;
    LDA.W $0FAA,X                                                        ;A3E155;
    BPL .keepUp                                                          ;A3E158;
    LDY.W #InstList_HZoomer_UpsideDown_0                                 ;A3E15A;

.keepUp:
    TYA                                                                  ;A3E15D;
    STA.W $0F92,X                                                        ;A3E15E;
    LDA.W #$0001                                                         ;A3E161;
    STA.W $0F94,X                                                        ;A3E164;
    RTL                                                                  ;A3E167;


%anchor($A3E168)
Function_HZoomer_CrawlingHorizontally:
    LDA.W $1840                                                          ;A3E168;
    CMP.W #$001E                                                         ;A3E16B;
    BNE .noQuake                                                         ;A3E16E;
    LDA.W $183E                                                          ;A3E170;
    CMP.W #$0014                                                         ;A3E173;
    BNE .noQuake                                                         ;A3E176;
    LDA.W $0FB2,X                                                        ;A3E178;
    STA.L $7E7806,X                                                      ;A3E17B;
    LDA.W #Function_Crawlers_Falling                                     ;A3E17F;
    STA.W $0FB2,X                                                        ;A3E182;

.noQuake:
    STZ.B $12                                                            ;A3E185;
    STZ.B $14                                                            ;A3E187;
    LDA.W $0FAA,X                                                        ;A3E189;
    BPL +                                                                ;A3E18C;
    DEC.B $14                                                            ;A3E18E;

  + STA.B $13                                                            ;A3E190;
    LDA.B $14                                                            ;A3E192;
    BPL .inc                                                             ;A3E194;
    DEC A                                                                ;A3E196;
    BRA .moveDown                                                        ;A3E197;


.inc:
    INC A                                                                ;A3E199;

.moveDown:
    STA.B $14                                                            ;A3E19A;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3E19C;
    BCC .outsideTurn                                                     ;A3E1A0;
    LDA.W #$0000                                                         ;A3E1A2;
    STA.L $7E7808,X                                                      ;A3E1A5;
    STZ.B $12                                                            ;A3E1A9;
    STZ.B $14                                                            ;A3E1AB;
    LDA.W $0FA8,X                                                        ;A3E1AD;
    BPL .moveRight                                                       ;A3E1B0;
    DEC.B $14                                                            ;A3E1B2;

.moveRight:
    STA.B $13                                                            ;A3E1B4;
    JSL.L MoveEnemyRightBy_14_12_ProcessSlopes                           ;A3E1B6;
    BCS .insideTurn                                                      ;A3E1BA;
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;A3E1BC;
    LDX.W $0E54                                                          ;A3E1C0;
    LDA.W $0AF6                                                          ;A3E1C3;
    SEC                                                                  ;A3E1C6;
    SBC.W $0F7A,X                                                        ;A3E1C7;
    BPL .SamusToTheRight                                                 ;A3E1CA;
    LDA.W $0FA8,X                                                        ;A3E1CC;
    BMI .return                                                          ;A3E1CF;
    BRA .negate                                                          ;A3E1D1;


.SamusToTheRight:
    LDA.W $0FA8,X                                                        ;A3E1D3;
    BPL .return                                                          ;A3E1D6;

.negate:
    EOR.W #$FFFF                                                         ;A3E1D8;
    INC A                                                                ;A3E1DB;

.return:
    STA.W $0FA8,X                                                        ;A3E1DC;
    RTL                                                                  ;A3E1DF;


.insideTurn:
    LDA.W $0FAA,X                                                        ;A3E1E0;
    EOR.W #$FFFF                                                         ;A3E1E3;
    INC A                                                                ;A3E1E6;
    STA.W $0FAA,X                                                        ;A3E1E7;
    LDY.W #InstList_HZoomer_UpsideLeft_0                                 ;A3E1EA;
    LDA.W $0FA8,X                                                        ;A3E1ED;
    BPL .keepLeft                                                        ;A3E1F0;
    LDY.W #InstList_HZoomer_UpsideRight_0                                ;A3E1F2;

.keepLeft:
    TYA                                                                  ;A3E1F5;
    STA.W $0F92,X                                                        ;A3E1F6;
    LDA.W #$0001                                                         ;A3E1F9;
    STA.W $0F94,X                                                        ;A3E1FC;
    RTL                                                                  ;A3E1FF;


.outsideTurn:
    LDA.L $7E7808,X                                                      ;A3E200;
    INC A                                                                ;A3E204;
    STA.L $7E7808,X                                                      ;A3E205;
    CMP.W #$0004                                                         ;A3E209;
    BMI .notFalling                                                      ;A3E20C;
    LDA.W $0FB2,X                                                        ;A3E20E;
    STA.L $7E7806,X                                                      ;A3E211;
    LDA.W #Function_Crawlers_Falling                                     ;A3E215;
    STA.W $0FB2,X                                                        ;A3E218;
    RTL                                                                  ;A3E21B;


.notFalling:
    LDA.W $0FA8,X                                                        ;A3E21C;
    EOR.W #$FFFF                                                         ;A3E21F;
    INC A                                                                ;A3E222;
    STA.W $0FA8,X                                                        ;A3E223;
    LDY.W #InstList_HZoomer_UpsideLeft_0                                 ;A3E226;
    LDA.W $0FA8,X                                                        ;A3E229;
    BPL ..keepLeft                                                       ;A3E22C;
    LDY.W #InstList_HZoomer_UpsideRight_0                                ;A3E22E;

..keepLeft:
    TYA                                                                  ;A3E231;
    STA.W $0F92,X                                                        ;A3E232;
    LDA.W #$0001                                                         ;A3E235;
    STA.W $0F94,X                                                        ;A3E238;
    RTL                                                                  ;A3E23B;


%anchor($A3E23C)
Palette_Zeela:
    dw $3800,$3F5A,$2E50,$00E5,$0063,$3AB3,$220E,$1169                   ;A3E23C;
    dw $0927,$03FF,$02F7,$0210,$0108,$7FFF,$0299,$0170                   ;A3E24C;

%anchor($A3E25C)
InstList_Zeela_Zoomer_UpsideRight_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A3E25C;
    dw Function_Crawlers_CrawlingVertically                              ;A3E25E;

%anchor($A3E260)
InstList_Zeela_Zoomer_UpsideRight_1:
    dw $0003,Spritemap_Crawlers_UpsideRight_0                            ;A3E260;
    dw $0003,Spritemap_Crawlers_UpsideRight_1                            ;A3E264;
    dw $0003,Spritemap_Crawlers_UpsideRight_2                            ;A3E268;
    dw $0003,Spritemap_Crawlers_UpsideRight_3                            ;A3E26C;
    dw $0003,Spritemap_Crawlers_UpsideRight_4                            ;A3E270;
    dw Instruction_Common_GotoY                                          ;A3E274;
    dw InstList_Zeela_Zoomer_UpsideRight_1                               ;A3E276;

%anchor($A3E278)
InstList_Zeela_Zoomer_UpsideLeft_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A3E278;
    dw Function_Crawlers_CrawlingVertically                              ;A3E27A;

%anchor($A3E27C)
InstList_Zeela_Zoomer_UpsideLeft_1:
    dw $0003,Spritemap_Crawlers_UpsideLeft_0                             ;A3E27C;
    dw $0003,Spritemap_Crawlers_UpsideLeft_1                             ;A3E280;
    dw $0003,Spritemap_Crawlers_UpsideLeft_2                             ;A3E284;
    dw $0003,Spritemap_Crawlers_UpsideLeft_3                             ;A3E288;
    dw $0003,Spritemap_Crawlers_UpsideLeft_4                             ;A3E28C;
    dw Instruction_Common_GotoY                                          ;A3E290;
    dw InstList_Zeela_Zoomer_UpsideLeft_1                                ;A3E292;

%anchor($A3E294)
InstList_Zeela_Zoomer_UpsideDown_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A3E294;
    dw Function_Crawlers_CrawlingHorizontally                            ;A3E296;

%anchor($A3E298)
InstList_Zeela_Zoomer_UpsideDown_1:
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_0                  ;A3E298;
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_1                  ;A3E29C;
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_2                  ;A3E2A0;
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_3                  ;A3E2A4;
    dw $0003,Spritemap_Crawlers_UpsideDown_FacingLeft_4                  ;A3E2A8;
    dw Instruction_Common_GotoY                                          ;A3E2AC;
    dw InstList_Zeela_Zoomer_UpsideDown_1                                ;A3E2AE;

%anchor($A3E2B0)
InstList_Zeela_Zoomer_UpsideUp_0:
    dw Instruction_Crawlers_FunctionInY                                  ;A3E2B0;
    dw Function_Crawlers_CrawlingHorizontally                            ;A3E2B2;

%anchor($A3E2B4)
InstList_Zeela_Zoomer_UpsideUp_1:
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_0                   ;A3E2B4;
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_1                   ;A3E2B8;
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_2                   ;A3E2BC;
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_3                   ;A3E2C0;
    dw $0003,Spritemap_Crawlers_UpsideUp_FacingRight_4                   ;A3E2C4;
    dw Instruction_Common_GotoY                                          ;A3E2C8;
    dw InstList_Zeela_Zoomer_UpsideUp_1                                  ;A3E2CA;

%anchor($A3E2CC)
InitialInstListPointers_Crawlers:
    dw InstList_Zeela_Zoomer_UpsideRight_0                               ;A3E2CC;
    dw InstList_Zeela_Zoomer_UpsideLeft_0                                ;A3E2CE;
    dw InstList_Zeela_Zoomer_UpsideDown_0                                ;A3E2D0;
    dw InstList_Zeela_Zoomer_UpsideUp_0                                  ;A3E2D2;

%anchor($A3E2D4)
InitAI_Zeela:
    LDX.W $0E54                                                          ;A3E2D4;
    LDA.W $0F92,X                                                        ;A3E2D7;
    AND.W #$0003                                                         ;A3E2DA;
    ASL A                                                                ;A3E2DD;
    TAY                                                                  ;A3E2DE;
    LDA.W InitialInstListPointers_Crawlers,Y                             ;A3E2DF;
    STA.W $0F92,X                                                        ;A3E2E2;
    JMP.W InitAI_Crawlers_Common                                         ;A3E2E5;


%anchor($A3E2E8)
Spritemap_Crawlers_UpsideUp_FacingRight_0:
    dw $0004                                                             ;A3E2E8;
    %spritemapEntry(0, $02, $00, 0, 0, 2, 0, $121)
    %spritemapEntry(0, $1F6, $00, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $100)

%anchor($A3E2FE)
Spritemap_Crawlers_UpsideUp_FacingRight_1:
    dw $0004                                                             ;A3E2FE;
    %spritemapEntry(0, $02, $00, 0, 0, 2, 0, $123)
    %spritemapEntry(0, $1F6, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $F7, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F7, 0, 0, 2, 0, $100)

%anchor($A3E314)
Spritemap_Crawlers_UpsideUp_FacingRight_2:
    dw $0004                                                             ;A3E314;
    %spritemapEntry(0, $02, $00, 0, 0, 2, 0, $125)
    %spritemapEntry(0, $1F6, $00, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $1F0, $F7, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F7, 0, 1, 2, 0, $100)

%anchor($A3E32A)
Spritemap_Crawlers_UpsideUp_FacingRight_3:
    dw $0004                                                             ;A3E32A;
    %spritemapEntry(0, $02, $00, 0, 0, 2, 0, $127)
    %spritemapEntry(0, $1F6, $00, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $1F0, $F7, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F7, 0, 1, 2, 0, $100)

%anchor($A3E340)
Spritemap_Crawlers_UpsideUp_FacingRight_4:
    dw $0004                                                             ;A3E340;
    %spritemapEntry(0, $02, $00, 0, 0, 2, 0, $129)
    %spritemapEntry(0, $1F6, $00, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $100)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3E356)
UNUSED_Spritemap_Crawlers_UpsideUp_FacingLeft_A3E356:
    dw $0004                                                             ;A3E356;
    %spritemapEntry(0, $1F5, $00, 0, 1, 2, 0, $121)
    %spritemapEntry(0, $01, $00, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $1EF, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F8, 0, 1, 2, 0, $100)

%anchor($A3E36C)
UNUSED_Spritemap_Crawlers_UpsideUp_FacingLeft_A3E36C:
    dw $0004                                                             ;A3E36C;
    %spritemapEntry(0, $1F5, $00, 0, 1, 2, 0, $123)
    %spritemapEntry(0, $01, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $1EF, $F7, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F7, 0, 1, 2, 0, $100)

%anchor($A3E382)
UNUSED_Spritemap_Crawlers_UpsideUp_FacingLeft_A3E382:
    dw $0004                                                             ;A3E382;
    %spritemapEntry(0, $1F5, $00, 0, 1, 2, 0, $125)
    %spritemapEntry(0, $01, $00, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $1FF, $F7, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1EF, $F7, 0, 0, 2, 0, $100)

%anchor($A3E398)
UNUSED_Spritemap_Crawlers_UpsideUp_FacingLeft_A3E398:
    dw $0004                                                             ;A3E398;
    %spritemapEntry(0, $1F5, $00, 0, 1, 2, 0, $127)
    %spritemapEntry(0, $01, $00, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $1FF, $F7, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1EF, $F7, 0, 0, 2, 0, $100)

%anchor($A3E3AE)
UNUSED_Spritemap_Crawlers_UpsideUp_FacingLeft_A3E3AE:
    dw $0004                                                             ;A3E3AE;
    %spritemapEntry(0, $1F5, $00, 0, 1, 2, 0, $129)
    %spritemapEntry(0, $01, $00, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $1EF, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F8, 0, 1, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3E3C4)
Spritemap_Crawlers_UpsideLeft_0:
    dw $0004                                                             ;A3E3C4;
    %spritemapEntry(0, $00, $F6, 0, 0, 2, 0, $108)
    %spritemapEntry(0, $00, $02, 0, 0, 2, 0, $118)
    %spritemapEntry(1, $1F8, $00, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1F8, $F0, 0, 0, 2, 0, $104)

%anchor($A3E3DA)
Spritemap_Crawlers_UpsideLeft_1:
    dw $0004                                                             ;A3E3DA;
    %spritemapEntry(0, $00, $F6, 0, 0, 2, 0, $109)
    %spritemapEntry(0, $00, $02, 0, 0, 2, 0, $119)
    %spritemapEntry(1, $1F7, $00, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1F7, $F0, 0, 0, 2, 0, $104)

%anchor($A3E3F0)
Spritemap_Crawlers_UpsideLeft_2:
    dw $0004                                                             ;A3E3F0;
    %spritemapEntry(0, $00, $F6, 0, 0, 2, 0, $10A)
    %spritemapEntry(0, $00, $02, 0, 0, 2, 0, $11A)
    %spritemapEntry(1, $1F7, $F0, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $1F7, $00, 1, 0, 2, 0, $104)

%anchor($A3E406)
Spritemap_Crawlers_UpsideLeft_3:
    dw $0004                                                             ;A3E406;
    %spritemapEntry(0, $00, $F6, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $00, $02, 0, 0, 2, 0, $11B)
    %spritemapEntry(1, $1F7, $F0, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $1F7, $00, 1, 0, 2, 0, $104)

%anchor($A3E41C)
Spritemap_Crawlers_UpsideLeft_4:
    dw $0004                                                             ;A3E41C;
    %spritemapEntry(0, $00, $F6, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $02, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $1F8, $00, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1F8, $F0, 0, 0, 2, 0, $104)

%anchor($A3E432)
Spritemap_Crawlers_UpsideDown_FacingLeft_0:
    dw $0004                                                             ;A3E432;
    %spritemapEntry(0, $02, $F8, 1, 0, 2, 0, $121)
    %spritemapEntry(0, $1F6, $F8, 1, 0, 2, 0, $120)
    %spritemapEntry(1, $00, $F8, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $100)

%anchor($A3E448)
Spritemap_Crawlers_UpsideDown_FacingLeft_1:
    dw $0004                                                             ;A3E448;
    %spritemapEntry(0, $02, $F7, 1, 0, 2, 0, $123)
    %spritemapEntry(0, $1F6, $F7, 1, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $F9, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F9, 1, 0, 2, 0, $100)

%anchor($A3E45E)
Spritemap_Crawlers_UpsideDown_FacingLeft_2:
    dw $0004                                                             ;A3E45E;
    %spritemapEntry(0, $02, $F7, 1, 0, 2, 0, $125)
    %spritemapEntry(0, $1F6, $F7, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $1F0, $F9, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F9, 1, 1, 2, 0, $100)

%anchor($A3E474)
Spritemap_Crawlers_UpsideDown_FacingLeft_3:
    dw $0004                                                             ;A3E474;
    %spritemapEntry(0, $02, $F7, 1, 0, 2, 0, $127)
    %spritemapEntry(0, $1F6, $F7, 1, 0, 2, 0, $126)
    %spritemapEntry(1, $1F0, $F9, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F9, 1, 1, 2, 0, $100)

%anchor($A3E48A)
Spritemap_Crawlers_UpsideDown_FacingLeft_4:
    dw $0004                                                             ;A3E48A;
    %spritemapEntry(0, $02, $F8, 1, 0, 2, 0, $129)
    %spritemapEntry(0, $1F6, $F8, 1, 0, 2, 0, $128)
    %spritemapEntry(1, $00, $F8, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $100)

%anchor($A3E4A0)
Spritemap_Crawlers_UpsideDown_FacingRight_0:
    dw $0004                                                             ;A3E4A0;
    %spritemapEntry(0, $1F5, $F8, 1, 1, 2, 0, $121)
    %spritemapEntry(0, $01, $F8, 1, 1, 2, 0, $120)
    %spritemapEntry(1, $1EF, $F8, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F8, 1, 1, 2, 0, $100)

%anchor($A3E4B6)
Spritemap_Crawlers_UpsideDown_FacingRight_1:
    dw $0004                                                             ;A3E4B6;
    %spritemapEntry(0, $1F5, $F7, 1, 1, 2, 0, $123)
    %spritemapEntry(0, $01, $F7, 1, 1, 2, 0, $122)
    %spritemapEntry(1, $1EF, $F9, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F9, 1, 1, 2, 0, $100)

%anchor($A3E4CC)
Spritemap_Crawlers_UpsideDown_FacingRight_2:
    dw $0004                                                             ;A3E4CC;
    %spritemapEntry(0, $1F5, $F7, 1, 1, 2, 0, $125)
    %spritemapEntry(0, $01, $F7, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $1FF, $F9, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1EF, $F9, 1, 0, 2, 0, $100)

%anchor($A3E4E2)
Spritemap_Crawlers_UpsideDown_FacingRight_3:
    dw $0004                                                             ;A3E4E2;
    %spritemapEntry(0, $1F5, $F7, 1, 1, 2, 0, $127)
    %spritemapEntry(0, $01, $F7, 1, 1, 2, 0, $126)
    %spritemapEntry(1, $1FF, $F9, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1EF, $F9, 1, 0, 2, 0, $100)

%anchor($A3E4F8)
Spritemap_Crawlers_UpsideDown_FacingRight_4:
    dw $0004                                                             ;A3E4F8;
    %spritemapEntry(0, $1F5, $F8, 1, 1, 2, 0, $129)
    %spritemapEntry(0, $01, $F8, 1, 1, 2, 0, $128)
    %spritemapEntry(1, $1EF, $F8, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F8, 1, 1, 2, 0, $100)

%anchor($A3E50E)
Spritemap_Crawlers_UpsideRight_0:
    dw $0004                                                             ;A3E50E;
    %spritemapEntry(0, $1F8, $F6, 0, 1, 2, 0, $108)
    %spritemapEntry(0, $1F8, $02, 0, 1, 2, 0, $118)
    %spritemapEntry(1, $1F8, $00, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F8, $F0, 0, 1, 2, 0, $104)

%anchor($A3E524)
Spritemap_Crawlers_UpsideRight_1:
    dw $0004                                                             ;A3E524;
    %spritemapEntry(0, $1F7, $F6, 0, 1, 2, 0, $109)
    %spritemapEntry(0, $1F7, $02, 0, 1, 2, 0, $119)
    %spritemapEntry(1, $1F9, $00, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F9, $F0, 0, 1, 2, 0, $104)

%anchor($A3E53A)
Spritemap_Crawlers_UpsideRight_2:
    dw $0004                                                             ;A3E53A;
    %spritemapEntry(0, $1F7, $F6, 0, 1, 2, 0, $10A)
    %spritemapEntry(0, $1F7, $02, 0, 1, 2, 0, $11A)
    %spritemapEntry(1, $1F9, $F0, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $1F9, $00, 1, 1, 2, 0, $104)

%anchor($A3E550)
Spritemap_Crawlers_UpsideRight_3:
    dw $0004                                                             ;A3E550;
    %spritemapEntry(0, $1F7, $F6, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1F7, $02, 0, 1, 2, 0, $11B)
    %spritemapEntry(1, $1F9, $F0, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $1F9, $00, 1, 1, 2, 0, $104)

%anchor($A3E566)
Spritemap_Crawlers_UpsideRight_4:
    dw $0004                                                             ;A3E566;
    %spritemapEntry(0, $1F8, $F6, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F8, $02, 0, 1, 2, 0, $11C)
    %spritemapEntry(1, $1F8, $00, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F8, $F0, 0, 1, 2, 0, $104)


%anchor($A3E57C)
Palette_Sova:
    dw $3800,$02FF,$01BF,$000F,$0008,$01BF,$011B,$00BA                   ;A3E57C;
    dw $0011,$7FFF,$039C,$0237,$00D1,$3BE0,$2680,$1580                   ;A3E58C;

%anchor($A3E59C)
InitAI_Sova:
    LDX.W $0E54                                                          ;A3E59C;
    LDA.W $0F92,X                                                        ;A3E59F;
    AND.W #$0003                                                         ;A3E5A2;
    ASL A                                                                ;A3E5A5;
    TAY                                                                  ;A3E5A6;
    LDA.W InitialInstListPointers_Crawlers,Y                             ;A3E5A7;
    STA.W $0F92,X                                                        ;A3E5AA;
    JMP.W InitAI_Crawlers_Common                                         ;A3E5AD;


%anchor($A3E5B0)
Palette_Zoomer:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A3E5B0;
    dw $2C63,$7FE0,$7DA0,$48E0,$30A0,$03FF,$0237,$00D1                   ;A3E5C0;

%anchor($A3E5D0)
Palette_MZoomer:
    dw $3800,$7FFF,$4ED3,$1926,$0481,$5F57,$4691,$360D                   ;A3E5D0;
    dw $2DCB,$6BBA,$56B2,$2947,$18C3,$7FFF,$4ED3,$1926                   ;A3E5E0;

%anchor($A3E5F0)
CrawlersSpeedTable:
; Speed. Unit is 1/100h px/frame. Indexed by [enemy parameter 1] * 2
    dw $0040,$0080,$00C0,$0100,$0140,$0180,$01C0,$0200                   ;A3E5F0;
    dw $0240,$0280,$02C0,$0300,$0340,$0380,$0400,$0440                   ;A3E600;
    dw $0540,$0580,$05C0,$0600,$0640,$0680,$06C0,$0700                   ;A3E610;
    dw $0740,$0780,$07C0,$0800,$0840,$0880,$0800,$0000                   ;A3E620;


; Instruction list pointers. Indexed by [enemy parameter 2]
%anchor($A3E630)
CrawlersInstListPointerTable_upsideDown:
    dw InstList_Zeela_Zoomer_UpsideDown_0                                ;A3E630; 0: (Stone) zoomer
    dw InstList_Zeela_Zoomer_UpsideDown_0                                ;A3E632; 2: Zeela
    dw InstList_Zeela_Zoomer_UpsideDown_0                                ;A3E634; 4: Sova
    dw InstList_Viola_UpsideDown                                         ;A3E636; 6: Viola
    dw InstList_Sciser_UpsideDown_0                                      ;A3E638; 8: Sciser
    dw InstList_Zero_UpsideDown_FacingLeft_0                             ;A3E63A; Ah: Zero

%anchor($A3E63C)
CrawlersInstListPointerTable_upsideUp:
    dw InstList_Zeela_Zoomer_UpsideUp_0                                  ;A3E63C; 0: (Stone) zoomer
    dw InstList_Zeela_Zoomer_UpsideUp_0                                  ;A3E63E; 2: Zeela
    dw InstList_Zeela_Zoomer_UpsideUp_0                                  ;A3E640; 4: Sova
    dw InstList_Viola_UpsideUp                                           ;A3E642; 6: Viola
    dw InstList_Sciser_UpsideUp_0                                        ;A3E644; 8: Sciser
    dw UNUSED_InstList_Zero_UpsideUp_FacingRight_A3990B                  ;A3E646; Ah: Zero

%anchor($A3E648)
CrawlersInstListPointerTable_upsideRight:
    dw InstList_Zeela_Zoomer_UpsideRight_0                               ;A3E648; 0: (Stone) zoomer
    dw InstList_Zeela_Zoomer_UpsideRight_0                               ;A3E64A; 2: Zeela
    dw InstList_Zeela_Zoomer_UpsideRight_0                               ;A3E64C; 4: Sova
    dw InstList_Viola_UpsideRight                                        ;A3E64E; 6: Viola
    dw InstList_Sciser_UpsideRight_0                                     ;A3E650; 8: Sciser
    dw InstList_Zero_UpsideRight_FacingDown_0                            ;A3E652; Ah: Zero

%anchor($A3E654)
CrawlersInstListPointerTable_upsideLeft:
    dw InstList_Zeela_Zoomer_UpsideLeft_0                                ;A3E654; 0: (Stone) zoomer
    dw InstList_Zeela_Zoomer_UpsideLeft_0                                ;A3E656; 2: Zeela
    dw InstList_Zeela_Zoomer_UpsideLeft_0                                ;A3E658; 4: Sova
    dw InstList_Viola_UpsideLeft                                         ;A3E65A; 6: Viola
    dw InstList_Sciser_UpsideLeft_0                                      ;A3E65C; 8: Sciser
    dw InstList_Zero_UpsideLeft_FacingUp_0                               ;A3E65E; Ah: Zero

%anchor($A3E660)
Instruction_Crawlers_FunctionInY:
    LDA.W $0000,Y                                                        ;A3E660;
    STA.W $0FB2,X                                                        ;A3E663;
    INY                                                                  ;A3E666;
    INY                                                                  ;A3E667;
    RTL                                                                  ;A3E668;


%anchor($A3E669)
InitAI_Zoomer_MZoomer:
    LDX.W $0E54                                                          ;A3E669;
    LDA.W $0F92,X                                                        ;A3E66C;
    AND.W #$0003                                                         ;A3E66F;
    ASL A                                                                ;A3E672;
    TAY                                                                  ;A3E673;
    LDA.W InitialInstListPointers_Crawlers,Y                             ;A3E674;
    STA.W $0F92,X                                                        ;A3E677; fallthrough to InitAI_Crawlers_Common

%anchor($A3E67A)
InitAI_Crawlers_Common:
    LDA.W #Spritemap_CommonA3_Nothing                                    ;A3E67A;
    STA.W $0F8E,X                                                        ;A3E67D;
    LDA.W #$0001                                                         ;A3E680;
    STA.W $0F94,X                                                        ;A3E683;
    LDA.W #.return                                                       ;A3E686;
    STA.W $0FB2,X                                                        ;A3E689;
    LDA.W $0FB4,X                                                        ;A3E68C;
    CMP.W #$00FF                                                         ;A3E68F;
    BEQ .skipSpeedTable                                                  ;A3E692;
    ASL A                                                                ;A3E694;
    TAY                                                                  ;A3E695;
    LDA.W CrawlersSpeedTable,Y                                           ;A3E696;
    STA.W $0FA8,X                                                        ;A3E699;
    STA.W $0FAA,X                                                        ;A3E69C;

.skipSpeedTable:
    LDA.W $0F86,X                                                        ;A3E69F;
    AND.W #$0003                                                         ;A3E6A2;
    BNE .properties                                                      ;A3E6A5;
    LDA.W $0FA8,X                                                        ;A3E6A7;
    EOR.W #$FFFF                                                         ;A3E6AA;
    INC A                                                                ;A3E6AD;
    STA.W $0FA8,X                                                        ;A3E6AE;
    RTL                                                                  ;A3E6B1;


.properties:
    CMP.W #$0002                                                         ;A3E6B2;
    BNE .return                                                          ;A3E6B5;
    LDA.W $0FAA,X                                                        ;A3E6B7;
    EOR.W #$FFFF                                                         ;A3E6BA;
    INC A                                                                ;A3E6BD;
    STA.W $0FAA,X                                                        ;A3E6BE;

.return:
    RTL                                                                  ;A3E6C1;


%anchor($A3E6C2)
MainAI_Crawlers:
    LDX.W $0E54                                                          ;A3E6C2;
    JMP.W ($0FB2,X)                                                      ;A3E6C5;


%anchor($A3E6C8)
Function_Crawlers_CrawlingVertically:
    LDA.W $1840                                                          ;A3E6C8;
    CMP.W #$001E                                                         ;A3E6CB;
    BNE .noQuake                                                         ;A3E6CE;
    LDA.W $183E                                                          ;A3E6D0;
    CMP.W #$0014                                                         ;A3E6D3;
    BNE .noQuake                                                         ;A3E6D6;
    LDA.W $0FB2,X                                                        ;A3E6D8;
    STA.L $7E7806,X                                                      ;A3E6DB;
    LDA.W #Function_Crawlers_Falling                                     ;A3E6DF;
    STA.W $0FB2,X                                                        ;A3E6E2;

.noQuake:
    STZ.B $12                                                            ;A3E6E5;
    STZ.B $14                                                            ;A3E6E7;
    LDA.W $0FA8,X                                                        ;A3E6E9;
    BPL .positive                                                        ;A3E6EC;
    DEC.B $14                                                            ;A3E6EE;

.positive:
    STA.B $13                                                            ;A3E6F0;
    LDA.B $14                                                            ;A3E6F2;
    BPL .inc                                                             ;A3E6F4;
    DEC A                                                                ;A3E6F6;
    BRA .moveRight                                                       ;A3E6F7;


.inc:
    INC A                                                                ;A3E6F9;

.moveRight:
    STA.B $14                                                            ;A3E6FA;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3E6FC;
    BCC .outsideTurn                                                     ;A3E700;
    LDA.W #$0000                                                         ;A3E702;
    STA.L $7E7808,X                                                      ;A3E705;
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;A3E709;
    STZ.B $12                                                            ;A3E70D;
    STZ.B $14                                                            ;A3E70F;
    LDA.W $0FAA,X                                                        ;A3E711;
    BPL .moveDown                                                        ;A3E714;
    DEC.B $14                                                            ;A3E716;

.moveDown:
    STA.B $13                                                            ;A3E718;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3E71A;
    BCS .insideTurn                                                      ;A3E71E;
    RTL                                                                  ;A3E720;


.insideTurn:
    LDA.W $0FA8,X                                                        ;A3E721;
    EOR.W #$FFFF                                                         ;A3E724;
    INC A                                                                ;A3E727;
    STA.W $0FA8,X                                                        ;A3E728;
    LDY.W $0FB6,X                                                        ;A3E72B;
    LDA.W $0FAA,X                                                        ;A3E72E;
    BPL .insideTurn_up                                                   ;A3E731;
    LDA.W CrawlersInstListPointerTable_upsideDown,Y                      ;A3E733;
    BRA +                                                                ;A3E736;


.insideTurn_up:
    LDA.W CrawlersInstListPointerTable_upsideUp,Y                        ;A3E738;

  + STA.W $0F92,X                                                        ;A3E73B;
    LDA.W #$0001                                                         ;A3E73E;
    STA.W $0F94,X                                                        ;A3E741;
    RTL                                                                  ;A3E744;


.outsideTurn:
    LDA.L $7E7808,X                                                      ;A3E745;
    INC A                                                                ;A3E749;
    STA.L $7E7808,X                                                      ;A3E74A;
    CMP.W #$0004                                                         ;A3E74E;
    BMI .negate                                                          ;A3E751;
    LDA.W $0FB2,X                                                        ;A3E753;
    STA.L $7E7806,X                                                      ;A3E756;
    LDA.W #Function_Crawlers_Falling                                     ;A3E75A;
    STA.W $0FB2,X                                                        ;A3E75D;
    RTL                                                                  ;A3E760;


.negate:
    LDA.W $0FAA,X                                                        ;A3E761;
    EOR.W #$FFFF                                                         ;A3E764;
    INC A                                                                ;A3E767;
    STA.W $0FAA,X                                                        ;A3E768;
    LDY.W $0FB6,X                                                        ;A3E76B;
    LDA.W $0FAA,X                                                        ;A3E76E;
    BPL .positiveYVelocity                                               ;A3E771;
    LDA.W CrawlersInstListPointerTable_upsideDown,Y                      ;A3E773;
    BRA .outsideTurn_up                                                  ;A3E776;


.positiveYVelocity:
    LDA.W CrawlersInstListPointerTable_upsideUp,Y                        ;A3E778;

.outsideTurn_up:
    STA.W $0F92,X                                                        ;A3E77B;
    LDA.W #$0001                                                         ;A3E77E;
    STA.W $0F94,X                                                        ;A3E781;
    RTL                                                                  ;A3E784;


%anchor($A3E785)
Function_Crawlers_Falling:
    LDA.L $7E7802,X                                                      ;A3E785;
    STA.B $12                                                            ;A3E789;
    LDA.L $7E7804,X                                                      ;A3E78B;
    STA.B $14                                                            ;A3E78F;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3E791;
    BCC .noCollision                                                     ;A3E795;
    LDA.W $0FB4,X                                                        ;A3E797;
    CMP.W #$00FF                                                         ;A3E79A;
    BNE .skipSpeed                                                       ;A3E79D;
    LDA.W #$0080                                                         ;A3E79F;
    STA.W $0FA8,X                                                        ;A3E7A2;
    STA.W $0FAA,X                                                        ;A3E7A5;

.skipSpeed:
    LDA.W #$0000                                                         ;A3E7A8;
    STA.L $7E7802,X                                                      ;A3E7AB;
    STA.L $7E7804,X                                                      ;A3E7AF;
    STA.L $7E7808,X                                                      ;A3E7B3;
    LDA.L $7E7806,X                                                      ;A3E7B7;
    STA.W $0FB2,X                                                        ;A3E7BB;
    RTL                                                                  ;A3E7BE;


.noCollision:
    LDA.L $7E7804,X                                                      ;A3E7BF;
    CMP.W #$0004                                                         ;A3E7C3;
    BPL .fallSpeedCapped                                                 ;A3E7C6;
    LDA.L $7E7802,X                                                      ;A3E7C8;
    CLC                                                                  ;A3E7CC;
    ADC.W #$8000                                                         ;A3E7CD;
    STA.L $7E7802,X                                                      ;A3E7D0;
    LDA.L $7E7804,X                                                      ;A3E7D4;
    ADC.W #$0000                                                         ;A3E7D8;
    STA.L $7E7804,X                                                      ;A3E7DB;

.fallSpeedCapped:
    LDA.L $7E7802,X                                                      ;A3E7DF;
    BNE .return                                                          ;A3E7E3;
    LDA.L $7E7804,X                                                      ;A3E7E5;
    BNE .return                                                          ;A3E7E9;
    LDA.W #Function_Crawlers_CrawlingVertically                          ;A3E7EB;
    STA.W $0FB2,X                                                        ;A3E7EE;

.return:
    RTL                                                                  ;A3E7F1;


%anchor($A3E7F2)
Function_Crawlers_CrawlingHorizontally:
    LDA.W $1840                                                          ;A3E7F2;
    CMP.W #$001E                                                         ;A3E7F5;
    BNE .noQuake                                                         ;A3E7F8;
    LDA.W $183E                                                          ;A3E7FA;
    CMP.W #$0014                                                         ;A3E7FD;
    BNE .noQuake                                                         ;A3E800;
    LDA.W $0FB2,X                                                        ;A3E802;
    STA.L $7E7806,X                                                      ;A3E805;
    LDA.W #Function_Crawlers_Falling                                     ;A3E809;
    STA.W $0FB2,X                                                        ;A3E80C;

.noQuake:
    STZ.B $12                                                            ;A3E80F;
    STZ.B $14                                                            ;A3E811;
    LDA.W $0FAA,X                                                        ;A3E813;
    BPL .positive                                                        ;A3E816;
    DEC.B $14                                                            ;A3E818;

.positive:
    STA.B $13                                                            ;A3E81A;
    LDA.B $14                                                            ;A3E81C;
    BPL .inc                                                             ;A3E81E;
    DEC A                                                                ;A3E820;
    BRA .moveDown                                                        ;A3E821;


.inc:
    INC A                                                                ;A3E823;

.moveDown:
    STA.B $14                                                            ;A3E824;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3E826;
    BCC .outsideTurn                                                     ;A3E82A;
    LDA.W #$0000                                                         ;A3E82C;
    STA.L $7E7808,X                                                      ;A3E82F;
    JSR.W AdjustEnemyXVelocityForSlopes                                  ;A3E833;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3E836;
    BCS .insideTurn                                                      ;A3E83A;
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;A3E83C;
    RTL                                                                  ;A3E840;


.insideTurn:
    LDA.W $0FAA,X                                                        ;A3E841;
    EOR.W #$FFFF                                                         ;A3E844;
    INC A                                                                ;A3E847;
    STA.W $0FAA,X                                                        ;A3E848;
    LDY.W $0FB6,X                                                        ;A3E84B;
    LDA.W $0FA8,X                                                        ;A3E84E;
    BPL ..left                                                           ;A3E851;
    LDA.W CrawlersInstListPointerTable_upsideRight,Y                     ;A3E853;
    BRA +                                                                ;A3E856;


..left:
    LDA.W CrawlersInstListPointerTable_upsideLeft,Y                      ;A3E858;

  + STA.W $0F92,X                                                        ;A3E85B;
    LDA.W #$0001                                                         ;A3E85E;
    STA.W $0F94,X                                                        ;A3E861;
    RTL                                                                  ;A3E864;


.outsideTurn:
    LDA.L $7E7808,X                                                      ;A3E865;
    INC A                                                                ;A3E869;
    STA.L $7E7808,X                                                      ;A3E86A;
    CMP.W #$0004                                                         ;A3E86E;
    BMI .notFalling                                                      ;A3E871;
    LDA.W $0FB2,X                                                        ;A3E873;
    STA.L $7E7806,X                                                      ;A3E876;
    LDA.W #Function_Crawlers_Falling                                     ;A3E87A;
    STA.W $0FB2,X                                                        ;A3E87D;
    RTL                                                                  ;A3E880;


.notFalling:
    LDA.W $0FA8,X                                                        ;A3E881;
    EOR.W #$FFFF                                                         ;A3E884;
    INC A                                                                ;A3E887;
    STA.W $0FA8,X                                                        ;A3E888;
    LDY.W $0FB6,X                                                        ;A3E88B;
    LDA.W $0FA8,X                                                        ;A3E88E;
    BPL .outsideTurn_left                                                ;A3E891;
    LDA.W CrawlersInstListPointerTable_upsideRight,Y                     ;A3E893;
    BRA +                                                                ;A3E896;


.outsideTurn_left:
    LDA.W CrawlersInstListPointerTable_upsideLeft,Y                      ;A3E898;

  + STA.W $0F92,X                                                        ;A3E89B;
    LDA.W #$0001                                                         ;A3E89E;
    STA.W $0F94,X                                                        ;A3E8A1;
    RTL                                                                  ;A3E8A4;


%anchor($A3E8A5)
AdjustEnemyXVelocityForSlopes:
    LDA.W $0F7A,X                                                        ;A3E8A5;
    PHA                                                                  ;A3E8A8;
    LDA.W $0F7E,X                                                        ;A3E8A9;
    BIT.W $0FAA,X                                                        ;A3E8AC;
    BPL .negativeYVelocity                                               ;A3E8AF;
    SEC                                                                  ;A3E8B1;
    SBC.W $0F84,X                                                        ;A3E8B2;
    BRA .positiveYVelocity                                               ;A3E8B5;


.negativeYVelocity:
    CLC                                                                  ;A3E8B7;
    ADC.W $0F84,X                                                        ;A3E8B8;
    DEC A                                                                ;A3E8BB;

.positiveYVelocity:
    PHA                                                                  ;A3E8BC;
    JSL.L CalculateTheBlockContainingAPixelPosition                      ;A3E8BD;
    LDA.W $0DC4                                                          ;A3E8C1;
    ASL A                                                                ;A3E8C4;
    TAX                                                                  ;A3E8C5;
    LDA.L $7F0002,X                                                      ;A3E8C6;
    AND.W #$F000                                                         ;A3E8CA;
    CMP.W #$1000                                                         ;A3E8CD;
    BNE .normalSpeed                                                     ;A3E8D0;
    LDX.W $0DC4                                                          ;A3E8D2;
    LDA.L $7F6402,X                                                      ;A3E8D5;
    AND.W #$001F                                                         ;A3E8D9;
    CMP.W #$0005                                                         ;A3E8DC;
    BCC .normalSpeed                                                     ;A3E8DF;
    ASL A                                                                ;A3E8E1;
    ASL A                                                                ;A3E8E2;
    TAX                                                                  ;A3E8E3;
    LDY.W .adjustedSpeedMultiplier,X                                     ;A3E8E4;
    LDX.W $0E54                                                          ;A3E8E7;
    LDA.W $0FA8,X                                                        ;A3E8EA;
    BPL .multiply                                                        ;A3E8ED;
    EOR.W #$FFFF                                                         ;A3E8EF;
    INC A                                                                ;A3E8F2;
    JSL.L A_Y_16bit_UnsignedMultiplication                               ;A3E8F3;
    LDA.W $05F1                                                          ;A3E8F7;
    EOR.W #$FFFF                                                         ;A3E8FA;
    CLC                                                                  ;A3E8FD;
    ADC.W #$0001                                                         ;A3E8FE;
    STA.B $12                                                            ;A3E901;
    LDA.W $05F3                                                          ;A3E903;
    EOR.W #$FFFF                                                         ;A3E906;
    ADC.W #$0000                                                         ;A3E909;
    STA.B $14                                                            ;A3E90C;
    RTS                                                                  ;A3E90E;


.multiply:
    JSL.L A_Y_16bit_UnsignedMultiplication                               ;A3E90F;
    LDA.W $05F1                                                          ;A3E913;
    STA.B $12                                                            ;A3E916;
    LDA.W $05F3                                                          ;A3E918;
    STA.B $14                                                            ;A3E91B;
    RTS                                                                  ;A3E91D;


.normalSpeed:
    LDX.W $0E54                                                          ;A3E91E;
    STZ.B $12                                                            ;A3E921;
    STZ.B $14                                                            ;A3E923;
    LDA.W $0FA8,X                                                        ;A3E925;
    BPL +                                                                ;A3E928;
    DEC.B $14                                                            ;A3E92A;

  + STA.B $13                                                            ;A3E92C;
    RTS                                                                  ;A3E92E;

;        _________ Unused. Seem to be additive speed modifiers in the SamusBlockCollisionDetection_Horizontal_Slope_NonSquare version of this table
;       |      ___ Adjusted speed multiplier * 100h
;       |     |
.additiveSpeedMultiplier:
    dw $0000                                                             ;A3E92F;

.adjustedSpeedMultiplier:                                                ;A3E931;
    dw       $0100
    dw $0000,$0100
    dw $0000,$0100
    dw $0000,$0100
    dw $0000,$0100
    dw $0000,$0100 ; 5: Unused. Half height isosceles triangle
    dw $0000,$0100 ; 6: Unused. Isosceles triangle
    dw $0000,$0100 ; 7: Half height rectangle
    dw $0000,$0100 ; 8: Unused. Rectangle
    dw $0000,$0100 ; 9: Unused. Rectangle
    dw $0000,$0100 ; Ah: Unused. Rectangle
    dw $0000,$0100 ; Bh: Unused. Rectangle
    dw $0000,$0100 ; Ch: Unused. Rectangle
    dw $0000,$0100 ; Dh: Unused. Rectangle
    dw $1000,$00B0 ; Eh: Unused. Very bumpy triangle
    dw $1000,$00B0 ; Fh: Bumpy triangle
    dw $0000,$0100 ; 10h: Unused
    dw $0000,$0100 ; 11h: Unused
    dw $1000,$00C0 ; 12h: Triangle
    dw $0000,$0100 ; 13h: Rectangle
    dw $1000,$00C0 ; 14h: Quarter triangle
    dw $1000,$00C0 ; 15h: Three quarter triangle
    dw $0800,$00D8 ; 16h: Lower half-height triangle
    dw $0800,$00D8 ; 17h: Upper half-height triangle
    dw $0600,$00F0 ; 18h: Unused. Lower third-height triangle
    dw $0600,$00F0 ; 19h: Unused. Middle third-height triangle
    dw $0600,$00F0 ; 1Ah: Unused. Upper third-height triangle
    dw $4000,$0080 ; 1Bh: Upper half-width triangle
    dw $4000,$0080 ; 1Ch: Lower half-width triangle
    dw $6000,$0050 ; 1Dh: Unused. Upper third-width triangle
    dw $6000,$0050 ; 1Eh: Unused. Middle third-width triangle
    dw $6000,$0050 ; 1Fh: Unused. Lower third-width triangle

%anchor($A3E9AF)
Palette_Metroid:
    dw $3800,$6BF5,$06E1,$0641,$05A1,$5E5F,$183F,$1014                   ;A3E9AF;
    dw $080A,$0404,$4F9F,$3ED8,$2E12,$6F70,$7FFF,$5EE0                   ;A3E9BF;

%anchor($A3E9CF)
InstList_Metroid_ChasingSamus:
    dw $0010,Spritemap_Metroid_Insides_0                                 ;A3E9CF;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3E9D3;
    dw $0006,Spritemap_Metroid_Insides_2                                 ;A3E9D7;
    dw $000A,Spritemap_Metroid_Insides_3                                 ;A3E9DB;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3E9DF;
    dw $0010,Spritemap_Metroid_Insides_0                                 ;A3E9E3;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3E9E7;
    dw $0006,Spritemap_Metroid_Insides_2                                 ;A3E9EB;
    dw $000A,Spritemap_Metroid_Insides_3                                 ;A3E9EF;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3E9F3;
    dw $0010,Spritemap_Metroid_Insides_0                                 ;A3E9F7;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3E9FB;
    dw $0006,Spritemap_Metroid_Insides_2                                 ;A3E9FF;
    dw $000A,Spritemap_Metroid_Insides_3                                 ;A3EA03;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3EA07;
    dw $0010,Spritemap_Metroid_Insides_0                                 ;A3EA0B;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3EA0F;
    dw $0006,Spritemap_Metroid_Insides_2                                 ;A3EA13;
    dw $000A,Spritemap_Metroid_Insides_3                                 ;A3EA17;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3EA1B;
    dw Instruction_Metroid_PlayRandomMetroidSFX                          ;A3EA1F;
    dw Instruction_Common_GotoY                                          ;A3EA21;
    dw InstList_Metroid_ChasingSamus                                     ;A3EA23;

%anchor($A3EA25)
InstList_Metroid_DrainingSamus:
    dw $0010,Spritemap_Metroid_Insides_0                                 ;A3EA25;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3EA29;
    dw $0006,Spritemap_Metroid_Insides_2                                 ;A3EA2D;
    dw $000A,Spritemap_Metroid_Insides_3                                 ;A3EA31;
    dw $0010,Spritemap_Metroid_Insides_1                                 ;A3EA35;
    dw Instruction_Metroid_PlayDrainingSamusSFX                          ;A3EA39;
    dw Instruction_Common_GotoY                                          ;A3EA3B;
    dw InstList_Metroid_DrainingSamus                                    ;A3EA3D;

%anchor($A3EA3F)
BombedOffVelocities:
;        _____________________ Frame 0
;       |      _______________ Frame 3
;       |     |      _________ Frame 2
;       |     |     |      ___ Frame 1
;       |     |     |     |
  .X:
    dw $0002,$0000,$FFFE,$0000                                           ;A3EA3F;
  .Y:
    dw $0000,$FFFE,$0000,$0002                                           ;A3EA47;

%anchor($A3EA4F)
InitAI_Metroid:
    LDX.W $0E54                                                          ;A3EA4F;
    LDA.W #InstList_Metroid_ChasingSamus                                 ;A3EA52;
    STA.W $0F92,X                                                        ;A3EA55;
    LDA.W $0F96,X                                                        ;A3EA58;
    ORA.W $0F98,X                                                        ;A3EA5B;
    STA.B $18                                                            ;A3EA5E;
    LDA.W $0F7A,X                                                        ;A3EA60;
    STA.B $12                                                            ;A3EA63;
    LDA.W $0F7E,X                                                        ;A3EA65;
    STA.B $14                                                            ;A3EA68;
    LDA.W #$0032                                                         ;A3EA6A;
    STA.B $16                                                            ;A3EA6D;
    JSL.L Create_Sprite_Object                                           ;A3EA6F;
    LDA.B $12                                                            ;A3EA73;
    STA.L $7E7800,X                                                      ;A3EA75;
    LDX.W $0E54                                                          ;A3EA79;
    LDA.W $0F96,X                                                        ;A3EA7C;
    ORA.W $0F98,X                                                        ;A3EA7F;
    STA.B $18                                                            ;A3EA82;
    LDA.W $0F7A,X                                                        ;A3EA84;
    STA.B $12                                                            ;A3EA87;
    LDA.W $0F7E,X                                                        ;A3EA89;
    STA.B $14                                                            ;A3EA8C;
    LDA.W #$0034                                                         ;A3EA8E;
    STA.B $16                                                            ;A3EA91;
    JSL.L Create_Sprite_Object                                           ;A3EA93;
    LDA.B $12                                                            ;A3EA97;
    STA.L $7E7802,X                                                      ;A3EA99;
    LDA.W #$0000                                                         ;A3EA9D;
    STA.L $7E7804,X                                                      ;A3EAA0;
    RTL                                                                  ;A3EAA4;


%anchor($A3EAA5)
Instruction_Metroid_PlayDrainingSamusSFX:
    PHX                                                                  ;A3EAA5;
    PHY                                                                  ;A3EAA6;
    LDA.W #$0050                                                         ;A3EAA7;
    JSL.L QueueSound_Lib2_Max6                                           ;A3EAAA;
    PLY                                                                  ;A3EAAE;
    PLX                                                                  ;A3EAAF;
    RTL                                                                  ;A3EAB0;


%anchor($A3EAB1)
Instruction_Metroid_PlayRandomMetroidSFX:
    PHX                                                                  ;A3EAB1;
    PHY                                                                  ;A3EAB2;
    JSL.L GenerateRandomNumber                                           ;A3EAB3;
    AND.W #$0007                                                         ;A3EAB7;
    ASL A                                                                ;A3EABA;
    TAX                                                                  ;A3EABB;
    LDA.W .SFX,X                                                         ;A3EABC;
    JSL.L QueueSound_Lib2_Max6                                           ;A3EABF;
    PLY                                                                  ;A3EAC3;
    PLX                                                                  ;A3EAC4;
    RTL                                                                  ;A3EAC5;

if !FEATURE_KEEP_UNREFERENCED
.unused:
; Unused. 180..250 in steps of 10, unsure of significance
    dw $00B4,$00BE,$00C8,$00D2,$00DC,$00E6,$00F0,$00FA                   ;A3EAC6;
endif ; !FEATURE_KEEP_UNREFERENCED

.SFX:
    dw $0050,$0058,$005A,$0050,$0058,$005A,$0058,$005A                   ;A3EAD6;


%anchor($A3EAE6)
FrozenAI_Metroid:
    JSL.L CommonA3_NormalEnemyFrozenAI                                   ;A3EAE6;
    LDX.W $0E54                                                          ;A3EAEA;
    LDA.W $0FB0,X                                                        ;A3EAED;
    BEQ .timerExpired                                                    ;A3EAF0;
    DEC.W $0FB0,X                                                        ;A3EAF2;
    LDA.W #$0002                                                         ;A3EAF5;
    STA.W $0F9C,X                                                        ;A3EAF8;

.timerExpired:
    LDA.L $7E7800,X                                                      ;A3EAFB;
    TAX                                                                  ;A3EAFF;
    LDA.W #$0C00                                                         ;A3EB00;
    STA.L $7EF078,X                                                      ;A3EB03;
    LDA.W #$0001                                                         ;A3EB07;
    STA.L $7EF2F8,X                                                      ;A3EB0A;
    LDA.W #InstList_SpriteObject_32_MetroidElectricity                   ;A3EB0E;
    STA.L $7EEF78,X                                                      ;A3EB11;
    LDX.W $0E54                                                          ;A3EB15;
    LDA.L $7E7802,X                                                      ;A3EB18;
    TAX                                                                  ;A3EB1C;
    LDA.W #$0C00                                                         ;A3EB1D;
    STA.L $7EF078,X                                                      ;A3EB20;
    LDA.W #$0001                                                         ;A3EB24;
    STA.L $7EF2F8,X                                                      ;A3EB27;
    LDA.W #InstList_SpriteObject_34_MetroidShell                         ;A3EB2B;
    STA.L $7EEF78,X                                                      ;A3EB2E;
    RTL                                                                  ;A3EB32;


%anchor($A3EB33)
HurtAI_Metroid:
    LDX.W $0E54                                                          ;A3EB33;
    LDY.W #$F1FF                                                         ;A3EB36; >.<
    LDA.W $0F9C,X                                                        ;A3EB39;
    BIT.W #$0002                                                         ;A3EB3C;
    BEQ .flash                                                           ;A3EB3F;
    LDA.W $0F96,X                                                        ;A3EB41;
    STA.B $12                                                            ;A3EB44;
    LDX.W $0E54                                                          ;A3EB46;
    LDA.L $7E7800,X                                                      ;A3EB49;
    TAX                                                                  ;A3EB4D;
    LDA.L $7EF078,X                                                      ;A3EB4E;
    AND.W #$F1FF                                                         ;A3EB52;
    ORA.B $12                                                            ;A3EB55;
    STA.L $7EF078,X                                                      ;A3EB57;
    LDX.W $0E54                                                          ;A3EB5B;
    LDA.L $7E7802,X                                                      ;A3EB5E;
    TAX                                                                  ;A3EB62;
    LDA.L $7EF078,X                                                      ;A3EB63;
    AND.W #$F1FF                                                         ;A3EB67;
    ORA.B $12                                                            ;A3EB6A;
    STA.L $7EF078,X                                                      ;A3EB6C;
    RTL                                                                  ;A3EB70;


.flash:
    LDX.W $0E54                                                          ;A3EB71;
    LDA.L $7E7800,X                                                      ;A3EB74;
    TAX                                                                  ;A3EB78;
    LDA.L $7EF078,X                                                      ;A3EB79;
    AND.W #$F1FF                                                         ;A3EB7D;
    STA.L $7EF078,X                                                      ;A3EB80;
    LDX.W $0E54                                                          ;A3EB84;
    LDA.L $7E7802,X                                                      ;A3EB87;
    TAX                                                                  ;A3EB8B;
    LDA.L $7EF078,X                                                      ;A3EB8C;
    AND.W #$F1FF                                                         ;A3EB90;
    STA.L $7EF078,X                                                      ;A3EB93;
    RTL                                                                  ;A3EB97;


%anchor($A3EB98)
MainAI_Metroid:
    LDX.W $0E54                                                          ;A3EB98;
    LDA.W $0AFA                                                          ;A3EB9B;
    SEC                                                                  ;A3EB9E;
    SBC.W #$0008                                                         ;A3EB9F;
    STA.W $0E32                                                          ;A3EBA2;
    LDA.W $0FB2,X                                                        ;A3EBA5;
    ASL A                                                                ;A3EBA8;
    TAX                                                                  ;A3EBA9;
    JSR.W (.pointers,X)                                                  ;A3EBAA;
    LDA.W $0F96,X                                                        ;A3EBAD;
    ORA.W $0F98,X                                                        ;A3EBB0;
    STA.B $18                                                            ;A3EBB3;
    LDA.W $0F7A,X                                                        ;A3EBB5;
    STA.B $12                                                            ;A3EBB8;
    LDA.W $0F7E,X                                                        ;A3EBBA;
    STA.B $14                                                            ;A3EBBD;
    LDA.L $7E7800,X                                                      ;A3EBBF;
    TAX                                                                  ;A3EBC3;
    LDA.B $12                                                            ;A3EBC4;
    STA.L $7EF0F8,X                                                      ;A3EBC6;
    LDA.B $14                                                            ;A3EBCA;
    STA.L $7EF1F8,X                                                      ;A3EBCC;
    LDA.B $18                                                            ;A3EBD0;
    STA.L $7EF078,X                                                      ;A3EBD2;
    LDA.W #$0000                                                         ;A3EBD6;
    STA.L $7EF2F8,X                                                      ;A3EBD9;
    LDX.W $0E54                                                          ;A3EBDD;
    LDA.W $0F7A,X                                                        ;A3EBE0;
    STA.B $12                                                            ;A3EBE3;
    LDA.W $0F7E,X                                                        ;A3EBE5;
    STA.B $14                                                            ;A3EBE8;
    LDA.L $7E7802,X                                                      ;A3EBEA;
    TAX                                                                  ;A3EBEE;
    LDA.B $12                                                            ;A3EBEF;
    STA.L $7EF0F8,X                                                      ;A3EBF1;
    LDA.B $14                                                            ;A3EBF5;
    STA.L $7EF1F8,X                                                      ;A3EBF7;
    LDA.B $18                                                            ;A3EBFB;
    STA.L $7EF078,X                                                      ;A3EBFD;
    LDA.W #$0000                                                         ;A3EC01;
    STA.L $7EF2F8,X                                                      ;A3EC04;
    RTL                                                                  ;A3EC08;


.pointers:
    dw Function_Metroid_0_ChaseSamus                                     ;A3EC09;
    dw Function_Metroid_1_LatchOntoSamus                                 ;A3EC0B;
    dw Function_Metroid_2_LatchedOntoSamus                               ;A3EC0D;
    dw Function_Metroid_3_BombedOffSamus                                 ;A3EC0F;

%anchor($A3EC11)
Function_Metroid_0_ChaseSamus:
    LDX.W $0E54                                                          ;A3EC11;
    STZ.B $12                                                            ;A3EC14;
    STZ.B $14                                                            ;A3EC16;
    LDA.W $0F7E,X                                                        ;A3EC18;
    SEC                                                                  ;A3EC1B;
    SBC.W $0E32                                                          ;A3EC1C;
    LSR A                                                                ;A3EC1F;
    LSR A                                                                ;A3EC20;
    STA.B $13                                                            ;A3EC21;
    AND.W #$2000                                                         ;A3EC23;
    BEQ +                                                                ;A3EC26;
    LDA.B $14                                                            ;A3EC28;
    ORA.W #$FFC0                                                         ;A3EC2A;
    STA.B $14                                                            ;A3EC2D;

  + LDA.W $0FAC,X                                                        ;A3EC2F;
    SEC                                                                  ;A3EC32;
    SBC.B $12                                                            ;A3EC33;
    STA.W $0FAC,X                                                        ;A3EC35;
    LDA.W $0FAE,X                                                        ;A3EC38;
    SBC.B $14                                                            ;A3EC3B;
    STA.W $0FAE,X                                                        ;A3EC3D;
    BMI .negativeY                                                       ;A3EC40;
    CMP.W #$0003                                                         ;A3EC42;
    BCC .moveDown                                                        ;A3EC45;
    LDA.W #$0003                                                         ;A3EC47;
    BRA .storeYVelocity                                                  ;A3EC4A;


.negativeY:
    CMP.W #$FFFD                                                         ;A3EC4C;
    BCS .moveDown                                                        ;A3EC4F;
    LDA.W #$FFFD                                                         ;A3EC51;

.storeYVelocity:
    STA.W $0FAE,X                                                        ;A3EC54;
    STZ.W $0FAC,X                                                        ;A3EC57;

.moveDown:
    LDA.W $0FAC,X                                                        ;A3EC5A;
    STA.B $12                                                            ;A3EC5D;
    LDA.W $0FAE,X                                                        ;A3EC5F;
    STA.B $14                                                            ;A3EC62;
    LDX.W $0E54                                                          ;A3EC64;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3EC67;
    BCC .notCollidedWithBlock                                            ;A3EC6B;
    LDX.W $0E54                                                          ;A3EC6D;
    STZ.W $0FAC,X                                                        ;A3EC70;
    STZ.W $0FAE,X                                                        ;A3EC73;

.notCollidedWithBlock:
    LDX.W $0E54                                                          ;A3EC76;
    STZ.B $12                                                            ;A3EC79;
    STZ.B $14                                                            ;A3EC7B;
    LDA.W $0F7A,X                                                        ;A3EC7D;
    SEC                                                                  ;A3EC80;
    SBC.W $0AF6                                                          ;A3EC81;
    LSR A                                                                ;A3EC84;
    LSR A                                                                ;A3EC85;
    STA.B $13                                                            ;A3EC86;
    AND.W #$2000                                                         ;A3EC88;
    BEQ +                                                                ;A3EC8B;
    LDA.B $14                                                            ;A3EC8D;
    ORA.W #$FFC0                                                         ;A3EC8F;
    STA.B $14                                                            ;A3EC92;

  + LDA.W $0FA8,X                                                        ;A3EC94;
    SEC                                                                  ;A3EC97;
    SBC.B $12                                                            ;A3EC98;
    STA.W $0FA8,X                                                        ;A3EC9A;
    LDA.W $0FAA,X                                                        ;A3EC9D;
    SBC.B $14                                                            ;A3ECA0;
    STA.W $0FAA,X                                                        ;A3ECA2;
    BMI .negativeX                                                       ;A3ECA5;
    CMP.W #$0003                                                         ;A3ECA7;
    BCC .moveRight                                                       ;A3ECAA;
    LDA.W #$0003                                                         ;A3ECAC;
    BRA .storeXVelocity                                                  ;A3ECAF;


.negativeX:
    CMP.W #$FFFD                                                         ;A3ECB1;
    BCS .moveRight                                                       ;A3ECB4;
    LDA.W #$FFFD                                                         ;A3ECB6;

.storeXVelocity:
    STA.W $0FAA,X                                                        ;A3ECB9;
    STZ.W $0FA8,X                                                        ;A3ECBC;

.moveRight:
    LDA.W $0FA8,X                                                        ;A3ECBF;
    STA.B $12                                                            ;A3ECC2;
    LDA.W $0FAA,X                                                        ;A3ECC4;
    STA.B $14                                                            ;A3ECC7;
    LDX.W $0E54                                                          ;A3ECC9;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3ECCC;
    BCC .return                                                          ;A3ECD0;
    LDX.W $0E54                                                          ;A3ECD2;
    STZ.W $0FA8,X                                                        ;A3ECD5;
    STZ.W $0FAA,X                                                        ;A3ECD8;

.return:
    RTS                                                                  ;A3ECDB;


%anchor($A3ECDC)
Function_Metroid_1_LatchOntoSamus:
    LDX.W $0E54                                                          ;A3ECDC;
    STZ.B $12                                                            ;A3ECDF;
    STZ.B $14                                                            ;A3ECE1;
    LDA.W $0E32                                                          ;A3ECE3;
    SEC                                                                  ;A3ECE6;
    SBC.W $0F7E,X                                                        ;A3ECE7;
    XBA                                                                  ;A3ECEA;
    AND.W #$FF00                                                         ;A3ECEB;
    LSR A                                                                ;A3ECEE;
    LSR A                                                                ;A3ECEF;
    LSR A                                                                ;A3ECF0;
    STA.B $14                                                            ;A3ECF1;
    AND.W #$1000                                                         ;A3ECF3;
    BEQ +                                                                ;A3ECF6;
    LDA.B $14                                                            ;A3ECF8;
    ORA.W #$E000                                                         ;A3ECFA;
    STA.B $14                                                            ;A3ECFD;

  + LDA.B $14                                                            ;A3ECFF;
    BMI .negativeY                                                       ;A3ED01;
    CMP.W #$0003                                                         ;A3ED03;
    BCC .moveDown                                                        ;A3ED06;
    LDA.W #$0003                                                         ;A3ED08;
    BRA .alwaysClamped                                                   ;A3ED0B;


.negativeY:
    CMP.W #$FFFD                                                         ;A3ED0D;
    BCS .moveDown                                                        ;A3ED10;
    LDA.W #$FFFD                                                         ;A3ED12;

.alwaysClamped:
    STA.B $14                                                            ;A3ED15;
    STZ.B $12                                                            ;A3ED17;

.moveDown:
    LDA.B $12                                                            ;A3ED19;
    STA.W $0FAC,X                                                        ;A3ED1B;
    LDA.B $14                                                            ;A3ED1E;
    STA.W $0FAE,X                                                        ;A3ED20;
    LDX.W $0E54                                                          ;A3ED23;
    JSL.L MoveEnemyDownBy_14_12                                          ;A3ED26;
    BCC .notCollidedWithBlock                                            ;A3ED2A;
    LDX.W $0E54                                                          ;A3ED2C;
    STZ.W $0FAC,X                                                        ;A3ED2F;
    STZ.W $0FAE,X                                                        ;A3ED32;

.notCollidedWithBlock:
    LDX.W $0E54                                                          ;A3ED35;
    STZ.B $12                                                            ;A3ED38;
    STZ.B $14                                                            ;A3ED3A;
    LDA.W $0AF6                                                          ;A3ED3C;
    SEC                                                                  ;A3ED3F;
    SBC.W $0F7A,X                                                        ;A3ED40;
    XBA                                                                  ;A3ED43;
    AND.W #$FF00                                                         ;A3ED44;
    LSR A                                                                ;A3ED47;
    LSR A                                                                ;A3ED48;
    LSR A                                                                ;A3ED49;
    STA.B $14                                                            ;A3ED4A;
    AND.W #$1000                                                         ;A3ED4C;
    BEQ +                                                                ;A3ED4F;
    LDA.B $14                                                            ;A3ED51;
    ORA.W #$E000                                                         ;A3ED53;
    STA.B $14                                                            ;A3ED56;

  + LDA.B $14                                                            ;A3ED58;
    BMI .negativeX                                                       ;A3ED5A;
    CMP.W #$0003                                                         ;A3ED5C;
    BCC .moveRight                                                       ;A3ED5F;
    LDA.W #$0003                                                         ;A3ED61;
    BRA .storeXVelocity                                                  ;A3ED64;


.negativeX:
    CMP.W #$FFFD                                                         ;A3ED66;
    BCS .moveRight                                                       ;A3ED69;
    LDA.W #$FFFD                                                         ;A3ED6B;

.storeXVelocity:
    STA.B $14                                                            ;A3ED6E;
    STZ.B $12                                                            ;A3ED70;

.moveRight:
    LDA.B $12                                                            ;A3ED72;
    STA.W $0FA8,X                                                        ;A3ED74;
    LDA.B $14                                                            ;A3ED77;
    STA.W $0FAA,X                                                        ;A3ED79;
    LDX.W $0E54                                                          ;A3ED7C;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A3ED7F;
    BCC .return                                                          ;A3ED83;
    LDX.W $0E54                                                          ;A3ED85;
    STZ.W $0FA8,X                                                        ;A3ED88;
    STZ.W $0FAA,X                                                        ;A3ED8B;

.return:
    RTS                                                                  ;A3ED8E;


%anchor($A3ED8F)
Function_Metroid_2_LatchedOntoSamus:
    LDX.W $0E54                                                          ;A3ED8F;
    LDA.W $0AF6                                                          ;A3ED92;
    STA.W $0F7A,X                                                        ;A3ED95;
    LDA.W $0E32                                                          ;A3ED98;
    STA.W $0F7E,X                                                        ;A3ED9B;
    STZ.W $0FA8,X                                                        ;A3ED9E;
    STZ.W $0FAA,X                                                        ;A3EDA1;
    STZ.W $0FAC,X                                                        ;A3EDA4;
    STZ.W $0FAE,X                                                        ;A3EDA7;
    RTS                                                                  ;A3EDAA;


%anchor($A3EDAB)
Function_Metroid_3_BombedOffSamus:
    LDX.W $0E54                                                          ;A3EDAB;
    LDA.W $0FB0,X                                                        ;A3EDAE;
    AND.W #$0003                                                         ;A3EDB1;
    ASL A                                                                ;A3EDB4;
    TAY                                                                  ;A3EDB5;
    LDA.W $0F7A,X                                                        ;A3EDB6;
    CLC                                                                  ;A3EDB9;
    ADC.W BombedOffVelocities_X,Y                                        ;A3EDBA;
    STA.W $0F7A,X                                                        ;A3EDBD;
    LDA.W $0F7E,X                                                        ;A3EDC0;
    CLC                                                                  ;A3EDC3;
    ADC.W BombedOffVelocities_Y,Y                                        ;A3EDC4;
    STA.W $0F7E,X                                                        ;A3EDC7;
    STZ.W $0FA8,X                                                        ;A3EDCA;
    STZ.W $0FAA,X                                                        ;A3EDCD;
    STZ.W $0FAC,X                                                        ;A3EDD0;
    STZ.W $0FAE,X                                                        ;A3EDD3;
    DEC.W $0FB0,X                                                        ;A3EDD6;
    BNE .return                                                          ;A3EDD9;
    STZ.W $0FB2,X                                                        ;A3EDDB;
    LDA.W #InstList_Metroid_ChasingSamus                                 ;A3EDDE;
    STA.W $0F92,X                                                        ;A3EDE1;
    LDA.W #$0001                                                         ;A3EDE4;
    STA.W $0F94,X                                                        ;A3EDE7;

.return:
    RTS                                                                  ;A3EDEA;


%anchor($A3EDEB)
EnemyTouch_Metroid:
    LDA.W $0AFA                                                          ;A3EDEB;
    SEC                                                                  ;A3EDEE;
    SBC.W #$0008                                                         ;A3EDEF;
    STA.W $0E32                                                          ;A3EDF2;
    LDA.W $0A6E                                                          ;A3EDF5;
    BEQ .normal                                                          ;A3EDF8;
    LDX.W $0E54                                                          ;A3EDFA;
    LDA.W $0FB2,X                                                        ;A3EDFD;
    CMP.W #$0002                                                         ;A3EE00;
    BEQ .return                                                          ;A3EE03;
    STZ.W $0FA8,X                                                        ;A3EE05;
    STZ.W $0FAC,X                                                        ;A3EE08;
    LDY.W #$0000                                                         ;A3EE0B;
    LDA.W $0F7A,X                                                        ;A3EE0E;
    SEC                                                                  ;A3EE11;
    SBC.W $0AF6                                                          ;A3EE12;
    BPL +                                                                ;A3EE15;
    LDY.W #$FF00                                                         ;A3EE17;

  + PHA                                                                  ;A3EE1A;
    TYA                                                                  ;A3EE1B;
    STA.W $0FAA,X                                                        ;A3EE1C;
    PLA                                                                  ;A3EE1F;
    ASL A                                                                ;A3EE20;
    ASL A                                                                ;A3EE21;
    ASL A                                                                ;A3EE22;
    ASL A                                                                ;A3EE23;
    ASL A                                                                ;A3EE24;
    ASL A                                                                ;A3EE25;
    STA.W $0FA9,X                                                        ;A3EE26;
    LDY.W #$0000                                                         ;A3EE29;
    LDA.W $0F7E,X                                                        ;A3EE2C;
    SEC                                                                  ;A3EE2F;
    SBC.W $0E32                                                          ;A3EE30;
    BPL +                                                                ;A3EE33;
    LDY.W #$FF00                                                         ;A3EE35;

  + PHA                                                                  ;A3EE38;
    TYA                                                                  ;A3EE39;
    STA.W $0FAE,X                                                        ;A3EE3A;
    PLA                                                                  ;A3EE3D;
    ASL A                                                                ;A3EE3E;
    ASL A                                                                ;A3EE3F;
    ASL A                                                                ;A3EE40;
    ASL A                                                                ;A3EE41;
    ASL A                                                                ;A3EE42;
    ASL A                                                                ;A3EE43;
    STA.W $0FAD,X                                                        ;A3EE44;
    STZ.W $0FB2,X                                                        ;A3EE47;
    LDA.W #InstList_Metroid_ChasingSamus                                 ;A3EE4A;
    STA.W $0F92,X                                                        ;A3EE4D;
    LDA.W #$0001                                                         ;A3EE50;
    STA.W $0F94,X                                                        ;A3EE53;

.return:
    RTL                                                                  ;A3EE56;


.normal:
    LDX.W $0E54                                                          ;A3EE57;
    LDA.W $0FB2,X                                                        ;A3EE5A;
    CMP.W #$0003                                                         ;A3EE5D;
    BEQ +                                                                ;A3EE60;
    LDA.W $0E44                                                          ;A3EE62;
    AND.W #$0007                                                         ;A3EE65;
    CMP.W #$0007                                                         ;A3EE68;
    BNE .skipSFX                                                         ;A3EE6B;
    LDA.W $09C2                                                          ;A3EE6D;
    CMP.W #$001E                                                         ;A3EE70;
    BMI .skipSFX                                                         ;A3EE73;
    LDA.W #$002D                                                         ;A3EE75;
    JSL.L QueueSound_Lib3_Max6                                           ;A3EE78;

.skipSFX:
    JSR.W DealMetroidContactDamageToSamus                                ;A3EE7C;

  + LDA.W $0FB2,X                                                        ;A3EE7F;
    CMP.W #$0002                                                         ;A3EE82;
    BCS .return                                                          ;A3EE85;
    LDY.W #$0001                                                         ;A3EE87;
    LDA.W $0F7A,X                                                        ;A3EE8A;
    SEC                                                                  ;A3EE8D;
    SBC.W $0AF6                                                          ;A3EE8E;
    BPL +                                                                ;A3EE91;
    EOR.W #$FFFF                                                         ;A3EE93;
    INC A                                                                ;A3EE96;

  + CMP.W #$0008                                                         ;A3EE97;
    BCS .setFunction                                                     ;A3EE9A;
    LDA.W $0F7E,X                                                        ;A3EE9C;
    SEC                                                                  ;A3EE9F;
    SBC.W $0E32                                                          ;A3EEA0;
    BPL +                                                                ;A3EEA3;
    EOR.W #$FFFF                                                         ;A3EEA5;
    INC A                                                                ;A3EEA8;

  + CMP.W #$0008                                                         ;A3EEA9;
    BCS .setFunction                                                     ;A3EEAC;
    LDY.W #$0002                                                         ;A3EEAE;
    LDA.W #$0012                                                         ;A3EEB1;
    JSL.L Run_Samus_Command                                              ;A3EEB4;

.setFunction:
    TYA                                                                  ;A3EEB8;
    STA.W $0FB2,X                                                        ;A3EEB9;
    CMP.W #$0002                                                         ;A3EEBC;
    BNE .return                                                          ;A3EEBF;
    LDA.W #InstList_Metroid_DrainingSamus                                ;A3EEC1;
    STA.W $0F92,X                                                        ;A3EEC4;
    LDA.W #$0001                                                         ;A3EEC7;
    STA.W $0F94,X                                                        ;A3EECA;
    RTL                                                                  ;A3EECD;


%anchor($A3EECE)
DealMetroidContactDamageToSamus:
    LDA.W $0AFA                                                          ;A3EECE;
    SEC                                                                  ;A3EED1;
    SBC.W #$0008                                                         ;A3EED2;
    STA.W $0E32                                                          ;A3EED5;
    LDA.W $09A2                                                          ;A3EED8;
    BIT.W #$0020                                                         ;A3EEDB;
    BNE .gravitySuit                                                     ;A3EEDE;
    LSR A                                                                ;A3EEE0;
    BCC .powerSuit                                                       ;A3EEE1;
    LDA.W #$6000                                                         ;A3EEE3;
    BRA .merge                                                           ;A3EEE6;


.gravitySuit:
    LDA.W #$3000                                                         ;A3EEE8;
    BRA .merge                                                           ;A3EEEB;


.powerSuit:
    LDA.W #$C000                                                         ;A3EEED;

.merge:
    STA.B $12                                                            ;A3EEF0;
    LDA.L $7E7804,X                                                      ;A3EEF2;
    SEC                                                                  ;A3EEF6;
    SBC.B $12                                                            ;A3EEF7;
    STA.L $7E7804,X                                                      ;A3EEF9;
    BCS .return                                                          ;A3EEFD;
    LDA.W #$0001                                                         ;A3EEFF;
    JSL.L Deal_A_Damage_to_Samus                                         ;A3EF02;

.return:
    RTS                                                                  ;A3EF06;


%anchor($A3EF07)
EnemyShot_Metroid:
    LDA.W $0AFA                                                          ;A3EF07;
    SEC                                                                  ;A3EF0A;
    SBC.W #$0008                                                         ;A3EF0B;
    STA.W $0E32                                                          ;A3EF0E;
    LDA.W $18A6                                                          ;A3EF11;
    ASL A                                                                ;A3EF14;
    TAY                                                                  ;A3EF15;
    LDX.W $0E54                                                          ;A3EF16;
    LDA.W $0F9E,X                                                        ;A3EF19;
    BEQ .notFrozen                                                       ;A3EF1C;
    LDA.W $0C18,Y                                                        ;A3EF1E;
    AND.W #$0F00                                                         ;A3EF21;
    CMP.W #$0100                                                         ;A3EF24;
    BEQ .missile                                                         ;A3EF27;
    CMP.W #$0200                                                         ;A3EF29;
    BNE .returnUpper                                                     ;A3EF2C;

.missile:
    LDA.W $0F7A,X                                                        ;A3EF2E;
    STA.L $7EF434                                                        ;A3EF31;
    LDA.W $0F7E,X                                                        ;A3EF35;
    STA.L $7EF436                                                        ;A3EF38;
    JSL.L CommonA3_NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic     ;A3EF3C;
    LDA.W $0F8C,X                                                        ;A3EF40;
    BNE .returnUpper                                                     ;A3EF43;
    STZ.W $0FAA,X                                                        ;A3EF45;
    LDA.W #$0004                                                         ;A3EF48;
    JSL.L EnemyDeath                                                     ;A3EF4B;
    LDA.W #$0013                                                         ;A3EF4F;
    JSL.L Run_Samus_Command                                              ;A3EF52;
    LDX.W $0E54                                                          ;A3EF56;
    LDA.L $7E7800,X                                                      ;A3EF59;
    TAX                                                                  ;A3EF5D;
    LDA.W #$0000                                                         ;A3EF5E;
    STA.L $7EEF78,X                                                      ;A3EF61;
    LDX.W $0E54                                                          ;A3EF65;
    LDA.L $7E7802,X                                                      ;A3EF68;
    TAX                                                                  ;A3EF6C;
    LDA.W #$0000                                                         ;A3EF6D;
    STA.L $7EEF78,X                                                      ;A3EF70;
    JSL.L MetroidDeathItemDropRoutine                                    ;A3EF74;

.returnUpper:
    RTL                                                                  ;A3EF78;


.notFrozen:
    LDA.W $0FB2,X                                                        ;A3EF79;
    CMP.W #$0002                                                         ;A3EF7C;
    BNE .notLatched                                                      ;A3EF7F;
    LDA.W $0C18,Y                                                        ;A3EF81;
    AND.W #$0F00                                                         ;A3EF84;
    CMP.W #$0500                                                         ;A3EF87;
    BNE .returnLower                                                     ;A3EF8A;
    LDA.W #$0004                                                         ;A3EF8C;
    STA.W $0FB0,X                                                        ;A3EF8F;
    LDA.W #$0003                                                         ;A3EF92;
    STA.W $0FB2,X                                                        ;A3EF95;
    LDA.W #InstList_Metroid_ChasingSamus                                 ;A3EF98;
    STA.W $0F92,X                                                        ;A3EF9B;
    LDA.W #$0001                                                         ;A3EF9E;
    STA.W $0F94,X                                                        ;A3EFA1;
    LDA.W #$0013                                                         ;A3EFA4;
    JSL.L Run_Samus_Command                                              ;A3EFA7;

.returnLower:
    RTL                                                                  ;A3EFAB;


.notLatched:
    STZ.W $0FA8,X                                                        ;A3EFAC;
    STZ.W $0FAC,X                                                        ;A3EFAF;
    LDY.W #$0000                                                         ;A3EFB2;
    LDA.W $0F7A,X                                                        ;A3EFB5;
    SEC                                                                  ;A3EFB8;
    SBC.W $0B64,Y                                                        ;A3EFB9;
    BPL +                                                                ;A3EFBC;
    LDY.W #$FF00                                                         ;A3EFBE;

  + PHA                                                                  ;A3EFC1;
    TYA                                                                  ;A3EFC2;
    STA.W $0FAA,X                                                        ;A3EFC3;
    PLA                                                                  ;A3EFC6;
    ASL A                                                                ;A3EFC7;
    ASL A                                                                ;A3EFC8;
    ASL A                                                                ;A3EFC9;
    ASL A                                                                ;A3EFCA;
    ASL A                                                                ;A3EFCB;
    STA.W $0FA9,X                                                        ;A3EFCC;
    LDY.W #$0000                                                         ;A3EFCF;
    LDA.W $0F7E,X                                                        ;A3EFD2;
    SEC                                                                  ;A3EFD5;
    SBC.W $0B78,Y                                                        ;A3EFD6;
    BPL +                                                                ;A3EFD9;
    LDY.W #$FF00                                                         ;A3EFDB;

  + PHA                                                                  ;A3EFDE;
    TYA                                                                  ;A3EFDF;
    STA.W $0FAE,X                                                        ;A3EFE0;
    PLA                                                                  ;A3EFE3;
    ASL A                                                                ;A3EFE4;
    ASL A                                                                ;A3EFE5;
    ASL A                                                                ;A3EFE6;
    ASL A                                                                ;A3EFE7;
    ASL A                                                                ;A3EFE8;
    STA.W $0FAD,X                                                        ;A3EFE9;
    STZ.W $0FB2,X                                                        ;A3EFEC;
    LDA.W #InstList_Metroid_ChasingSamus                                 ;A3EFEF;
    STA.W $0F92,X                                                        ;A3EFF2;
    LDA.W #$0001                                                         ;A3EFF5;
    STA.W $0F94,X                                                        ;A3EFF8;
    LDA.W $18A6                                                          ;A3EFFB;
    ASL A                                                                ;A3EFFE;
    TAY                                                                  ;A3EFFF;
    LDA.W $0C18,Y                                                        ;A3F000;
    AND.W #$0002                                                         ;A3F003;
    BEQ .notIceBeam                                                      ;A3F006;
    LDA.W #$000A                                                         ;A3F008;
    JSL.L QueueSound_Lib3_Max6                                           ;A3F00B;
    LDA.W $0C2C,Y                                                        ;A3F00F;
    STA.B $12                                                            ;A3F012;
    LDA.W #$0004                                                         ;A3F014;
    STA.W $0F9C,X                                                        ;A3F017;
    LDA.W $0FB6,X                                                        ;A3F01A;
    SEC                                                                  ;A3F01D;
    SBC.B $12                                                            ;A3F01E;
    BEQ .freeze                                                          ;A3F020;
    BCS .noFreeze                                                        ;A3F022;

.freeze:
    STZ.W $0FB6,X                                                        ;A3F024;
    LDA.W #$0190                                                         ;A3F027;
    STA.W $0F9E,X                                                        ;A3F02A;
    LDA.W $0F8A,X                                                        ;A3F02D;
    ORA.W #$0004                                                         ;A3F030;
    STA.W $0F8A,X                                                        ;A3F033;
    RTL                                                                  ;A3F036;


.noFreeze:
    STA.W $0FB6,X                                                        ;A3F037;

.notIceBeam:
    LDA.W #$005A                                                         ;A3F03A;
    JSL.L QueueSound_Lib2_Max6                                           ;A3F03D;
    RTL                                                                  ;A3F041;


%anchor($A3F042)
PowerBombReaction_Metroid:
    JSL.L NormalEnemyPowerBombAI                                         ;A3F042;
    LDA.W $0F8C,X                                                        ;A3F046;
    BNE .return                                                          ;A3F049;
    LDA.W #$0013                                                         ;A3F04B;
    JSL.L Run_Samus_Command                                              ;A3F04E;
    LDX.W $0E54                                                          ;A3F052;
    LDA.L $7E7800,X                                                      ;A3F055;
    TAX                                                                  ;A3F059;
    LDA.W #$0000                                                         ;A3F05A;
    STA.L $7EEF78,X                                                      ;A3F05D;
    LDX.W $0E54                                                          ;A3F061;
    LDA.L $7E7802,X                                                      ;A3F064;
    TAX                                                                  ;A3F068;
    LDA.W #$0000                                                         ;A3F069;
    STA.L $7EEF78,X                                                      ;A3F06C;

.return:
    RTL                                                                  ;A3F070;


if !FEATURE_KEEP_UNREFERENCED
%anchor($A3F071)
UNUSED_Spritemap_Metroid_Shell_A3F071:
    dw $000A                                                             ;A3F071;
    %spritemapEntry(0, $10, $04, 0, 1, 2, 0, $130)
    %spritemapEntry(0, $10, $FC, 0, 1, 2, 0, $120)
    %spritemapEntry(0, $10, $F4, 0, 1, 2, 0, $110)
    %spritemapEntry(0, $1E8, $04, 0, 0, 2, 0, $130)
    %spritemapEntry(0, $1E8, $FC, 0, 0, 2, 0, $120)
    %spritemapEntry(0, $1E8, $F4, 0, 0, 2, 0, $110)
    %spritemapEntry(1, $00, $FC, 0, 1, 2, 0, $121)
    %spritemapEntry(1, $00, $EC, 0, 0, 2, 0, $103)
    %spritemapEntry(1, $1F0, $FC, 0, 0, 2, 0, $121)
    %spritemapEntry(1, $1F0, $EC, 0, 0, 2, 0, $101)

%anchor($A3F0A5)
UNUSED_Spritemap_Metroid_Shell_A3F0A5:
    dw $000A                                                             ;A3F0A5;
    %spritemapEntry(0, $10, $FC, 0, 1, 2, 0, $12A)
    %spritemapEntry(0, $10, $04, 0, 1, 2, 0, $13A)
    %spritemapEntry(0, $10, $F4, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1E8, $04, 0, 0, 2, 0, $13A)
    %spritemapEntry(0, $1E8, $FC, 0, 0, 2, 0, $12A)
    %spritemapEntry(0, $1E8, $F4, 0, 0, 2, 0, $11A)
    %spritemapEntry(1, $00, $EC, 0, 0, 2, 0, $10D)
    %spritemapEntry(1, $00, $FC, 0, 1, 2, 0, $12B)
    %spritemapEntry(1, $1F0, $FC, 0, 0, 2, 0, $12B)
    %spritemapEntry(1, $1F0, $EC, 0, 0, 2, 0, $10B)

%anchor($A3F0D9)
UNUSED_Spritemap_Metroid_Shell_A3F0D9:
    dw $000A                                                             ;A3F0D9;
    %spritemapEntry(0, $1E8, $FC, 0, 0, 2, 0, $125)
    %spritemapEntry(0, $10, $04, 0, 1, 2, 0, $135)
    %spritemapEntry(0, $10, $FC, 0, 1, 2, 0, $125)
    %spritemapEntry(0, $10, $F4, 0, 1, 2, 0, $115)
    %spritemapEntry(0, $1E8, $04, 0, 0, 2, 0, $135)
    %spritemapEntry(0, $1E8, $F4, 0, 0, 2, 0, $115)
    %spritemapEntry(1, $00, $FC, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $00, $EC, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F0, $FC, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $1F0, $EC, 0, 0, 2, 0, $106)
endif ; !FEATURE_KEEP_UNREFERENCED

%anchor($A3F10D)
Spritemap_Metroid_Insides_0:
    dw $0008                                                             ;A3F10D;
    %spritemapEntry(0, $10, $00, 0, 1, 2, 0, $160)
    %spritemapEntry(0, $10, $F8, 0, 1, 2, 0, $150)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $160)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 2, 0, $150)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 0, $161)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 0, $141)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $161)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $141)

%anchor($A3F137)
Spritemap_Metroid_Insides_1:
    dw $0006                                                             ;A3F137;
    %spritemapEntry(0, $10, $00, 0, 1, 2, 0, $163)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $163)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 0, $164)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 0, $144)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $164)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $144)

%anchor($A3F157)
Spritemap_Metroid_Insides_2:
    dw $0008                                                             ;A3F157;
    %spritemapEntry(0, $10, $00, 0, 1, 2, 0, $166)
    %spritemapEntry(0, $10, $F8, 0, 1, 2, 0, $156)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $166)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 2, 0, $156)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 0, $167)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 0, $147)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $167)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $147)

%anchor($A3F181)
Spritemap_Metroid_Insides_3:
    dw $0008                                                             ;A3F181;
    %spritemapEntry(0, $10, $00, 0, 1, 2, 0, $169)
    %spritemapEntry(0, $10, $F8, 0, 1, 2, 0, $159)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $169)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 2, 0, $159)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 0, $16A)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 0, $14A)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $16A)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $14A)

if !FEATURE_KEEP_UNREFERENCED
%anchor($A3F1AB)
UNUSED_Spritemap_Metroid_Electricity_A3F1AB:
    dw $0003                                                             ;A3F1AB;
    %spritemapEntry(0, $00, $EC, 0, 0, 2, 0, $17C)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $14D)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $14C)

%anchor($A3F1BC)
UNUSED_Spritemap_Metroid_Electricity_A3F1BC:
    dw $0003                                                             ;A3F1BC;
    %spritemapEntry(0, $00, $EC, 0, 0, 2, 0, $17D)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $15D)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $15C)

%anchor($A3F1CD)
UNUSED_Spritemap_Metroid_Electricity_A3F1CD:
    dw $0003                                                             ;A3F1CD;
    %spritemapEntry(0, $00, $EC, 0, 0, 2, 0, $17E)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $16D)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $16C)

%anchor($A3F1DE)
UNUSED_Spritemap_Metroid_Electricity_A3F1DE:
    dw $0004                                                             ;A3F1DE;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $14F)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $14E)
    %spritemapEntry(0, $1F8, $F4, 0, 0, 2, 0, $13D)
    %spritemapEntry(0, $1F8, $EC, 0, 0, 2, 0, $12D)

%anchor($A3F1F4)
UNUSED_Spritemap_Metroid_Electricity_A3F1F4:
    dw $0004                                                             ;A3F1F4;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $15F)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $15E)
    %spritemapEntry(0, $1F8, $F4, 0, 0, 2, 0, $13E)
    %spritemapEntry(0, $1F8, $EC, 0, 0, 2, 0, $12E)

%anchor($A3F20A)
UNUSED_Spritemap_Metroid_Electricity_A3F20A:
    dw $0004                                                             ;A3F20A;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $16F)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $16E)
    %spritemapEntry(0, $1F8, $F4, 0, 0, 2, 0, $13F)
    %spritemapEntry(0, $1F8, $EC, 0, 0, 2, 0, $12F)

%anchor($A3F220)
UNUSED_Spritemap_Metroid_Electricity_A3F220:
    dw $0003                                                             ;A3F220;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $14D)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $14C)
    %spritemapEntry(0, $1F8, $EC, 0, 1, 2, 0, $17C)

%anchor($A3F231)
UNUSED_Spritemap_Metroid_Electricity_A3F231:
    dw $0003                                                             ;A3F231;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $15D)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $15C)
    %spritemapEntry(0, $1F8, $EC, 0, 1, 2, 0, $17D)

%anchor($A3F242)
UNUSED_Spritemap_Metroid_Electricity_A3F242:
    dw $0003                                                             ;A3F242;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $16D)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $16C)
    %spritemapEntry(0, $1F8, $EC, 0, 1, 2, 0, $17E)

%anchor($A3F253)
UNUSED_Spritemap_Metroid_Electricity_A3F253:
    dw $0004                                                             ;A3F253;
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $14F)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $14E)
    %spritemapEntry(0, $00, $F4, 0, 1, 2, 0, $13D)
    %spritemapEntry(0, $00, $EC, 0, 1, 2, 0, $12D)

%anchor($A3F269)
UNUSED_Spritemap_Metroid_Electricity_A3F269:
    dw $0004                                                             ;A3F269;
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $16F)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $16E)
    %spritemapEntry(0, $00, $F4, 0, 1, 2, 0, $13E)
    %spritemapEntry(0, $00, $EC, 0, 1, 2, 0, $12E)

%anchor($A3F27F)
UNUSED_Spritemap_Metroid_Electricity_A3F27F:
    dw $0004                                                             ;A3F27F;
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $15F)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $15E)
    %spritemapEntry(0, $00, $F4, 0, 1, 2, 0, $13F)
    %spritemapEntry(0, $00, $EC, 0, 1, 2, 0, $12F)

%anchor($A3F295)
UNUSED_Spritemap_Metroid_Electricity_A3F295:
    dw $0002                                                             ;A3F295;
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $14D)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $14C)

%anchor($A3F2A1)
UNUSED_Spritemap_Metroid_Electricity_A3F2A1:
    dw $0001                                                             ;A3F2A1;
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $15C)

%anchor($A3F2A8)
UNUSED_Spritemap_Metroid_Electricity_A3F2A8:
    dw $0002                                                             ;A3F2A8;
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $16D)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $16C)

%anchor($A3F2B4)
UNUSED_Spritemap_Metroid_Electricity_A3F2B4:
    dw $0002                                                             ;A3F2B4;
    %spritemapEntry(0, $1F8, $F4, 0, 0, 2, 0, $13D)
    %spritemapEntry(0, $1F8, $EC, 0, 0, 2, 0, $12D)

%anchor($A3F2C0)
UNUSED_Spritemap_Metroid_Electricity_A3F2C0:
    dw $0002                                                             ;A3F2C0;
    %spritemapEntry(0, $1F8, $F4, 0, 0, 2, 0, $13E)
    %spritemapEntry(0, $1F8, $EC, 0, 0, 2, 0, $12E)

%anchor($A3F2CC)
UNUSED_Spritemap_Metroid_Electricity_A3F2CC:
    dw $0002                                                             ;A3F2CC;
    %spritemapEntry(0, $1F8, $F4, 0, 0, 2, 0, $13F)
    %spritemapEntry(0, $1F8, $EC, 0, 0, 2, 0, $12F)

%anchor($A3F2D8)
UNUSED_Spritemap_Metroid_Electricity_A3F2D8:
    dw $0002                                                             ;A3F2D8;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $14D)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $14C)

%anchor($A3F2E4)
UNUSED_Spritemap_Metroid_Electricity_A3F2E4:
    dw $0002                                                             ;A3F2E4;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $15D)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $15C)

%anchor($A3F2F0)
UNUSED_Spritemap_Metroid_Electricity_A3F2F0:
    dw $0002                                                             ;A3F2F0;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $16D)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $16C)

%anchor($A3F2FC)
UNUSED_Spritemap_Metroid_Electricity_A3F2FC:
    dw $0001                                                             ;A3F2FC;
    %spritemapEntry(0, $00, $EC, 0, 0, 2, 0, $17C)

%anchor($A3F303)
UNUSED_Spritemap_Metroid_Electricity_A3F303:
    dw $0001                                                             ;A3F303;
    %spritemapEntry(0, $00, $EC, 0, 0, 2, 0, $17D)

%anchor($A3F30A)
UNUSED_Spritemap_Metroid_Electricity_A3F30A:
    dw $0001                                                             ;A3F30A;
    %spritemapEntry(0, $00, $EC, 0, 0, 2, 0, $17E)
endif ; !FEATURE_KEEP_UNREFERENCED


%anchor($A3F311)
Freespace_BankA3_F311:                                                   ;A3F311;
; $CEF bytes
