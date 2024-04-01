#SingleInstance Force
#NoEnv
#NoTrayIcon

SetBatchLines -1

^+F3::

Text := "Grupo A`nNotificação + Cartão Dengue  + Prova do laço `nReceita médica `nAtestado se necessário `nRetorno 5°do início dos sintomas [enf. ou méd.] `nIníciar hidratação oral na unidade `nRT-PCR 1 a cada 10`n`nGrupo B`nNotificação  + Cartão Dengue `nHematocrito + hemograma dengue (coleta ate 13:30)`nReceita médica `nAtestado se necessário `nRetorno diário com médico até 48h pós febre`nIníciar hidratação oral na unidade `nRT-PCR em todos`n`nGrupo C`nNotificação `nCartão Dengue + Hematocrito `nHidratação venosa`nMonitorização dos sinais vitais`nContato Samu`nApós alta retorno como grupo B`n`nGrupo D`nNotificação + Cartão Dengue `nHematocrito se possível  + Hidratação venosa`nMonitorização dos sinais vitais`nContato Samu`nApós alta retorno como grupo B"

Result := MsgBoxEx(Text, "LEMBRETE RÁPIDO - DENGUE 2024", "FECHAR", 0, "", "MinimizeBox", 0, 0, "s12 bold c0x000000", "Calibri", "0xFFBB77")


MsgBoxEx(Text, Title := "", Buttons := "", Icon := "", ByRef CheckText := "", Styles := "", Owner := "", Timeout := "", FontOptions := "", FontName := "", BGColor := "")
{
    Static hWnd, y2, p, px, pw, c, cw, cy, ch, f, o, gL, hBtn, lb, DHW, ww, Off, k, v, RetVal
    Static Sound := {2: "*48", 4: "*16", 5: "*64"}

    Gui dn:New, hWndhWnd LabelMsgBoxEx -0xA0000
    Gui % (Owner) ? "+Owner" . Owner : ""
    Gui dn:Font
    Gui dn:Font, % (FontOptions) ? FontOptions : "s9", % (FontName) ? FontName : "Segoe UI"
    Gui dn:Color, % (BGColor) ? BGColor : "White"
    Gui dn:Margin, 10, 12

    Gui dn:Add, Link, % "x" . (Icon ? 65 : 20) . " y" . (InStr(Text, "`n") ? 24 : 32) . " vc", %Text%
    GuicontrolGet c, Pos
    GuiControl Move, c, % "w" . (cw + 30)
    y2 := (cy + ch < 52) ? 90 : cy + ch + 34

    Gui dn:Add, Text, vf -Background ; Footer

   Gui dn:Font
   Gui dn:Font, s9, Segoe UI
    px := 42
    If (CheckText != "") {
        CheckText := StrReplace(CheckText, "*",, ErrorLevel)
        Gui dn:Add, CheckBox, vCheckText x12 y%y2% h26 -Wrap -Background AltSubmit Checked%ErrorLevel%, %CheckText%
        GuicontrolGet p, Pos, CheckText
        px := px + pw + 10
    }

    GuiControl +Default, % (RegExMatch(Buttons, "([^\*\|]*)\*", Match)) ? Match1 : StrSplit(Buttons, "|")[1]

    Gui dn:Show, Autosize Center Hide, %Title%
    DHW := A_DetectHiddenWindows
    DetectHiddenWindows On
    WinGetPos,,, ww,, ahk_id %hWnd%

    Guicontrol MoveDraw, f, % "x-1 y" . (y2 - 10) . " w" . ww . " h" . 48

    Gui dn:Show
    Gui dn:+SysMenu %Styles%
    DetectHiddenWindows %DHW%

    If (Timeout) {
        SetTimer MsgBoxExTIMEOUT, % Round(Timeout) * 1000
    }

    If (Owner) {
        WinSet Disable,, ahk_id %Owner%
    }

    GuiControl Focus, f
    Gui dn:Font
    WinWaitClose ahk_id %hWnd%
    Return RetVal

    MsgBoxExESCAPE:
    MsgBoxExCLOSE:
    MsgBoxExTIMEOUT:
    MsgBoxExBUTTON:
        SetTimer MsgBoxExTIMEOUT, Delete

        If (A_ThisLabel == "MsgBoxExBUTTON") {
            RetVal := StrReplace(A_GuiControl, "&")
        } Else {
            RetVal := (A_ThisLabel == "MsgBoxExTIMEOUT") ? "Timeout" : "Cancel"
        }

        If (Owner) {
            WinSet Enable,, ahk_id %Owner%
        }

        Gui %hWnd%: Submit
        Gui %hWnd%: Destroy
    Return
}
