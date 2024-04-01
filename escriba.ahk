#SingleInstance
#NoEnv
#Warn UseUnsetLocal, OutputDebug

SetWorkingDir %A_ScriptDir%
SetBatchLines -1


Suspend, On
^+c::
    Suspend, Toggle
Gui, cp:Default
Gui, cp:New, -MinimizeBox -MaximizeBox -Resize +AlwaysOnTop +ToolWindow
Gui, cp:Show, w370 h780, Copia e Cola

ClipSave1 := ""
ClipSave2 := ""
ClipSave3 := ""
ClipSave4 := ""
ClipSave5 := ""
ClipSave6 := ""
ClipSave7 := ""
ClipSave8 := ""
ClipSave9 := ""
ClipSave10 := ""

Gui, Font
Gui, cp:Font, s11 cNavy Bold, Calibri


Gui, cp:Add, Text, x100 y120 w160 h30 vLabel2
Gui, cp:Add, Text, x100 y180 w160 h30 vLabel3
Gui, cp:Add, Text, x100 y240 w160 h30 vLabel4
Gui, cp:Add, Text, x100 y300 w160 h30 vLabel5
Gui, cp:Add, Text, x100 y360 w160 h30 vLabel6
Gui, cp:Add, Text, x100 y420 w160 h30 vLabel7
Gui, cp:Add, Text, x100 y480 w160 h30 vLabel8
Gui, cp:Add, Text, x100 y540 w160 h30 vLabel9
Gui, cp:Add, Text, x100 y600 w160 h30 vLabel10
Gui, cp:Add, Text, x100 y660 w160 h30 vLabel_a1
Gui, cp:Add, Button, x125 y720 w100 h30 gClearAll, Limpar Tudo
Gui, cp:Add, Text, x20 y50 w340 h90,Use control+c, e pressione o botão copiar. Repita até 10 vezes! Para colar, pressione o botão colar e control +v.
Gui, cp:Font
Gui, cp:Font, s14 cNavy Bold, Calibri
Gui, cp:Add, Text, x140 y5 w70 h20, Escriba

Gui, Font
Gui, cp:Font, s11 cNavy Bold, Calibri

Gui, cp:Add, Button, x20 y120 w70 h30 gCopyToClipSave2, Copiar-1
Gui, cp:Add, Button, x280 y120 w70 h30 gPasteFromClipSave2, Colar-1
Gui, cp:Add, Button, x20 y180 w70 h30 gCopyToClipSave3, Copiar-2
Gui, cp:Add, Button, x280 y180 w70 h30 gPasteFromClipSave3, Colar-2
Gui, cp:Add, Button, x20 y240 w70 h30 gCopyToClipSave4, Copiar-3
Gui, cp:Add, Button, x280 y240 w70 h30 gPasteFromClipSave4, Colar-3
Gui, cp:Add, Button, x20 y300 w70 h30 gCopyToClipSave5, Copiar-4
Gui, cp:Add, Button, x280 y300 w70 h30 gPasteFromClipSave5, Colar-4
Gui, cp:Add, Button, x20 y360 w70 h30 gCopyToClipSave6, Copiar-5
Gui, cp:Add, Button, x280 y360 w70 h30 gPasteFromClipSave6, Colar-5
Gui, cp:Add, Button, x20 y420 w70 h30 gCopyToClipSave7, Copiar-6
Gui, cp:Add, Button, x280 y420 w70 h30 gPasteFromClipSave7, Colar-6
Gui, cp:Add, Button, x20 y480 w70 h30 gCopyToClipSave8, Copiar-7
Gui, cp:Add, Button, x280 y480 w70 h30 gPasteFromClipSave8, Colar-7
Gui, cp:Add, Button, x20 y540 w70 h30 gCopyToClipSave9, Copiar-8
Gui, cp:Add, Button, x280 y540 w70 h30 gPasteFromClipSave9, Colar-8
Gui, cp:Add, Button, x20 y600 w70 h30 gCopyToClipSave10, Copiar-9
Gui, cp:Add, Button, x280 y600 w70 h30 gPasteFromClipSave10, Colar-9
Gui, cp:Add, Button, x20 y660 w70 h30 gCopyToClipSave1, Copiar-.10
Gui, cp:Add, Button, x280 y660 w70 h30 gPasteFromClipSave1, Colar-.10

return

CopyToClipSave1:
    ClipSave1 := ClipboardAll
    GuiControl,, Label_a1, %ClipSave1%
return

CopyToClipSave2:
    ClipSave2 := Clipboard
    GuiControl,, Label2, %ClipSave2%
return

CopyToClipSave3:
    ClipSave3 := Clipboard
    GuiControl,, Label3, %ClipSave3%
return

CopyToClipSave4:
    ClipSave4 := Clipboard
    GuiControl,, Label4, %ClipSave4%
return

CopyToClipSave5:
    ClipSave5 := Clipboard
    GuiControl,, Label5, %ClipSave5%
return

CopyToClipSave6:
    ClipSave6 := Clipboard
    GuiControl,, Label6, %ClipSave6%
return

CopyToClipSave7:
    ClipSave7 := Clipboard
    GuiControl,, Label7, %ClipSave7%
return

CopyToClipSave8:
    ClipSave8 := Clipboard
    GuiControl,, Label8, %ClipSave8%
return

CopyToClipSave9:
    ClipSave9 := Clipboard
    GuiControl,, Label9, %ClipSave9%
return

CopyToClipSave10:
    ClipSave10 := Clipboard
    GuiControl,, Label10, %ClipSave10%
return

PasteFromClipSave1:
    clipboard := ClipSave1
return
PasteFromClipSave2:
    clipboard := ClipSave2
return
PasteFromClipSave3:
    clipboard := ClipSave3
return
PasteFromClipSave4:
    clipboard := ClipSave4
return
PasteFromClipSave5:
    clipboard := ClipSave5
return
PasteFromClipSave6:
    clipboard := ClipSave6
return
PasteFromClipSave7:
    clipboard := ClipSave7
return
PasteFromClipSave8:
    clipboard := ClipSave8
return
PasteFromClipSave9:
    clipboard := ClipSave9
return
PasteFromClipSave10:
    clipboard := ClipSave10
return

ClearAll:
    ClipSave1 := ""
    ClipSave2 := ""
    ClipSave3 := ""
    ClipSave4 := ""
    ClipSave5 := ""
    ClipSave6 := ""
    ClipSave7 := ""
	ClipSave8 := ""
	ClipSave9 := ""
	ClipSave10 := ""

    GuiControl,, Label_a1,
    GuiControl,, Label2,
    GuiControl,, Label3,
    GuiControl,, Label4,
    GuiControl,, Label5,
    GuiControl,, Label6,
    GuiControl,, Label7,
    GuiControl,, Label8,
    GuiControl,, Label9,
    GuiControl,, Label10,
return

Gui, cpClose:
    Gui cp:Destroy
return