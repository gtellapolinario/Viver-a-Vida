#SingleInstance Force
#NoEnv
#NoTrayIcon

SetBatchLines -1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Suspend, On
^+d::
    Suspend, Toggle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Gui, dng:Default
Gui, dng:New, -MinimizeBox -AlwaysOnTop
Gui, dng:Show, w420 h300, Hidratação grupos A e B
Gui, dng:Font
Gui, dng:Font, s12 cNavy, Calibri
Gui, dng:Add, Text, x20 y70, Volume total em 24h:
Gui, dng:Add, Text, x20 y110, SORO DE REIDRATAÇÃO ORAL:
Gui, dng:Add, Text, x20 y150, Volume dos demais líquidos:
Gui, dng:Add, Text, x10 y10, Peso do adulto (Kg):

Gui, dng:Add, Edit, x170 y10 vPesoAdulto w65
Gui, dng:Add, Button, x260 y10 w100 h30 gCalcular, Calcular
return

Calcular:
Gui, Submit, NoHide
VolumeTotal := PesoAdulto * 60
VolumeSoro := Floor(VolumeTotal * 1/3)
VolumeOutrosLiquidos := VolumeTotal - VolumeSoro

resultadoTexto := "Volume total em 24h: " . VolumeTotal . " mL`n"
resultadoTexto .= "SORO DE REIDRATAÇÃO ORAL: " . VolumeSoro . " mL`n"
resultadoTexto .= "Volume dos demais líquidos: " . VolumeOutrosLiquidos . " mL"

Clipboard := ""
Clipboard := resultadoTexto
MsgBox, %Clipboard%

Gui, dngClose:
    Gui, dng:Hide
return