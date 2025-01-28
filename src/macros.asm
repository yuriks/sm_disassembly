
macro anchor(desired)
    if !ANCHOR_LABELS
        warnpc <desired>
        org <desired>
    endif
endmacro

macro spritemapEntry(Size, XOffset, YOffset, YFlip, XFlip, Priority, Palette, Tile)
; Spritemap entry format is:
;     s000000xxxxxxxxx yyyyyyyy YXppPPPttttttttt
; Where:
;     s = size bit
;     x = sprite X offset
;     y = sprite Y offset
;     Y = Y flip
;     X = X flip
;     p = priority (relative to background)
;     P = palette (often unused)
;     t = tile number
    dw <Size><<15|<XOffset>
    db <YOffset>
    dw <YFlip><<15|<XFlip><<14|<Priority><<12|<Palette><<9|<Tile>
endmacro

macro PLMPopEntry(ID, X, Y, Param)
    dw <ID>
    db <X>, <Y>
    dw <Param>
endmacro
