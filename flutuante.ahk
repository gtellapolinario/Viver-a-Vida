#SingleInstance
#NoEnv


SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Suspend, On
^+f::
    Suspend, Toggle

mbutton::
CoordMode, Mouse, Screen
MouseGetPos, XposA, YposA
XposA-=+80
YposA-=+80
Gui, 50:Default
Gui, Font
Gui, Font, s11 Bold, wCalibri
Gui, 50:destroy
Gui, 50:Color, EEAA99

Gui, 50:Add, Button, x2 y0 w50 h50 BackgroundTrans gdothis1, Pue 👶
Gui, 50:Add, Button, x2 y60 w50 h50 BackgroundTrans gdothis2, Pré Natal🤰
Gui, 50:Add, Button, x122 y60 w50 h50 BackgroundTrans gdothis3, Calc DNG🦟
Gui, 50:Add, Button, x62 y120 w50 h50 BackgroundTrans gdothis4, Dng 🦟
Gui, 50:Add, Button, x122 y120 w50 h50 BackgroundTrans gclosewanrmenu, Fechar 🤚
Gui, 50:Add, Button, x122 y0 w50 h50 BackgroundTrans gdothis6, Escriba
Gui, 50:Add, Button, x2 y120 w50 h50 BackgroundTrans gdothis7, Dr-Gtell 🌐
Gui, 50:Add, Button,xa x62 y0 w50 h50 BackgroundTrans gdothis5, Exam 🔬
Gui 50:+LastFound +AlwaysOnTop +ToolWindow
WinSet, TransColor, EEAA99
Gui 50:-Caption
Gui, 50:Show, x%XposA% y%YposA% h176 w179, menus
Return

closewanrmenu:
Gui, 50:Destroy
return

dothis1: ;puericultura
Send, ^+{p}
Gui, 50:Destroy
Return

dothis2: ;prenatal
;Send, ^+{n}
Gui, 50:Destroy
Return

dothis3: ; hidratação dengue
Send, ^+{d}
Gui, 50:Destroy
Return

dothis4: ; Reforço dengue
Send, ^+{F3}
Gui, 50:Destroy
Return

dothis5:
Send, ^+e
Gui, 50:Destroy
Return

dothis6:
Send, ^+d
Gui, 50:Destroy
Return

dothis7:
Run, msedge.exe https://dr-guilhermeapolinario.com
Gui, 50:Destroy
Return

