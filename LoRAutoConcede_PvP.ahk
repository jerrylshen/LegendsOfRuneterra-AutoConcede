#SingleInstance force ; no prompts
#Include RandomBezier.ahk 

; Start the LoRAutoConcede.ahk file
; CTRL + j to start 
^j::
screenWidth := A_ScreenWidth
screenHeight := A_ScreenHeight

; the comments for the following code block can be applied to the rest of the code blocks.
; The major differences betwee the code blocks is the parameters for RandomBezier and Sleep times

; for every action, I get the current mouse position
MouseGetPos, CX, CY
; the X, Y coordinates for such button
Play_X := floor(0.02604*A_ScreenWidth)
Play_Y := floor(0.37037*A_ScreenHeight)
; Calls RandomBezier, which controls the mouse movements, duration of movement, etc
; https://github.com/MasterFocus/AutoHotkey/tree/master/Functions/RandomBezier 
RandomBezier(CX, CY, Play_X, Play_Y, "T1200 OT100 OB-100 OL60 OR80 P2-1")
; Sleep in milliseconds
Sleep, 75
Click   

MouseGetPos, CX, CY
PvP_X := floor(0.110677*A_ScreenWidth)
PvP_Y := floor(0.26*A_ScreenHeight)
RandomBezier(CX, CY, PvP_X, PvP_Y, "T400 OT100 OB-100 OL0 OR0 P2-1")
Sleep, 100
Click 

MouseGetPos, CX, CY
Deck_X := floor(0.3190104*A_ScreenWidth)
Deck_Y := floor(0.3032407*A_ScreenHeight)
RandomBezier(CX, CY, Deck_X, Deck_Y, "T700 OT100 OB-100 OL0 OR0 P3-1")
Sleep, 100
Click

Loop, 10
{
    MouseGetPos, CX, CY
    PlayMatch_X := floor(0.8*A_ScreenWidth)
    PlayMatch_Y := floor(0.9050925*A_ScreenHeight)
    RandomBezier(CX, CY, PlayMatch_X, PlayMatch_Y, "T750 OT100 OB-100 OL0 OR0 P3-1")
    Sleep, 100
    Click

    ; to allow for opponent's turn and loading
    Sleep, 36000
    Send {Space}
    Sleep, 20000
    Send {Space}
    Sleep, 400

    MouseGetPos, CX, CY
    Settings_X := floor(0.96*A_ScreenWidth)
    Settings_Y := floor(0.065*A_ScreenHeight)
    RandomBezier(CX, CY, Settings_X, Settings_Y, "T500 OT100 OB-100 OL0 OR0 P3-1")
    Sleep, 185
    Click

    MouseGetPos, CX, CY
    Surrender_X := floor(0.47*A_ScreenWidth)
    Surrender_Y := floor(0.85*A_ScreenHeight)
    RandomBezier(CX, CY, Surrender_X, Surrender_Y, "T600 OT100 OB-100 OL0 OR0 P2-1")
    Sleep, 190
    Click

    MouseGetPos, CX, CY
    Ok_X := floor(0.6*A_ScreenWidth)
    Ok_Y := floor(0.55*A_ScreenHeight)
    RandomBezier(CX, CY, Ok_X, Ok_Y, "T500 OT100 OB-100 OL0 OR0 P2-1")
    Sleep, 175
    Click

    ; to allow for end of game loading time
    Sleep 12000

    MouseGetPos, CX, CY
    Continue_X := floor(0.6*A_ScreenWidth)
    Continue_Y := floor(0.90509*A_ScreenHeight)
    RandomBezier(CX, CY, Continue_X, Continue_Y, "T400 OT100 OB-100 OL0 OR0 P2-1")
    Sleep, 185
    Click

    ; to allow for return back to Play menu loading time
    Sleep, 1500 
}
return

Escape::
ExitApp
Return
