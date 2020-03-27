;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#Include RandomBezier.ahk

^j::
screenWidth := A_ScreenWidth
screenHeight := A_ScreenHeight

; set mouse to upper left corner
;RandomBezier(0, 0, -screenWidth, -screenHeight, "T1200 RO RD OT100 OB-100 OL0 OR0 P4-3")

MouseGetPos, CX, CY
Play_X := floor(0.02604*A_ScreenWidth)
Play_Y := floor(0.37037*A_ScreenHeight)
Send, %Play_X%
RandomBezier(CX, CY, Play_X, Play_Y, "T1200 OT100 OB-100 OL60 OR80 P2-1")
;MouseMove, %Play_X%, %Play_Y%, 10
Sleep 50
Click   

MouseGetPos, CX, CY
AI_X := floor(0.110677*A_ScreenWidth)
AI_Y := floor(0.3032407*A_ScreenHeight)
RandomBezier(CX, CY, AI_X, AI_Y, "T100 OT100 OB-100 OL0 OR0 P2-1")
;MouseMove, %AI_X%, %AI_Y%, 10
Sleep 50
Click 

MouseGetPos, CX, CY
Deck_X := floor(0.3190104*A_ScreenWidth)
Deck_Y := floor(0.3032407*A_ScreenHeight)
RandomBezier(CX, CY, Deck_X, Deck_Y, "T700 OT100 OB-100 OL0 OR0 P3-1")
;MouseMove, %deck_X%, %deck_Y%, 10
Sleep 50
Click

Loop, 10
{
MouseGetPos, CX, CY
PlayMatch_X := floor(0.8*A_ScreenWidth)
PlayMatch_Y := floor(0.9050925*A_ScreenHeight)
RandomBezier(CX, CY, PlayMatch_X, PlayMatch_Y, "T750 OT100 OB-100 OL0 OR0 P3-1")
;MouseMove, %PlayMatch_X%, %PlayMatch_Y%, 10
Sleep 50
Click

Sleep, 21000
Send {Space}
Sleep, 20000
Send {Space}
Sleep, 200

MouseGetPos, CX, CY
Settings_X := floor(0.96*A_ScreenWidth)
Settings_Y := floor(0.065*A_ScreenHeight)
RandomBezier(CX, CY, Settings_X, Settings_Y, "T500 OT100 OB-100 OL0 OR0 P3-1")
;MouseMove, %Settings_X%, %Settings_Y%, 10
Sleep 50
Click

MouseGetPos, CX, CY
Surrender_X := floor(0.47*A_ScreenWidth)
Surrender_Y := floor(0.85*A_ScreenHeight)
RandomBezier(CX, CY, Surrender_X, Surrender_Y, "T600 OT100 OB-100 OL0 OR0 P2-1")
;MouseMove, %Surrender_X%, %Surrender_Y%, 10
Sleep 50
Click

MouseGetPos, CX, CY
Ok_X := floor(0.6*A_ScreenWidth)
Ok_Y := floor(0.55*A_ScreenHeight)
RandomBezier(CX, CY, Ok_X, Ok_Y, "T500 OT100 OB-100 OL0 OR0 P2-1")
;MouseMove, %Ok_X%, %Ok_Y%, 10
Sleep 50
Click
Sleep, 10000

MouseGetPos, CX, CY
Continue_X := floor(0.6*A_ScreenWidth)
Continue_Y := floor(0.90509*A_ScreenHeight)
RandomBezier(CX, CY, Continue_X, Continue_Y, "T400 OT100 OB-100 OL0 OR0 P2-1")
;MouseMove, %Continue_X%, %Continue_Y%, 10
Sleep 50
Click
Sleep 110 
}
return

^k::
Send, ^j

Escape::
ExitApp
Return