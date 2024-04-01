#SingleInstance Ignore
#Persistent
#NoEnv

SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Clean() {
    global HC, HB, HT, VCM, GL, S, L, PQL, CT, HDL, LDL, TRG, GJ, HBG, K, AUR, CR, TFG, UR, EAS, EPF, PSOF, UC,
    global Var1, Var2, Var3, Var4, Var5, Var6
    HC = ""
    HB = ""
    HT = ""
    VCM = ""
    GL = ""
    S = ""
    L = ""
    PQL = ""
    CT = ""
    HDL = ""
    LDL = ""
    TRG = ""
    GJ = ""
    HBG = ""
    K = ""
    AUR = ""
    CR = ""
    TFG = ""
    UR = ""
    EAS = ""
    EPF = ""
    PSOF = ""
    UC = ""
    Var1 = ""
    Var2= ""
    Var3= ""
    Var4= ""
    Var5= ""
    Var6= ""
}

RestScript() {
    Reload
}

^+!r::
    RestScript()
    Criarex()


Criarex() {
    Clean()
    Gui, ex: -MinimizeBox -MaximizeBox -Resize -0x10000 -SysMenu +AlwaysOnTop
    Gui, ex:Show, w380 h440, Entrada de Exames
    Gui, ex:Font
    Gui, ex:Font, s10 cNavy, Lucida Console
    Gui, ex:Add, Text, x20 y20  w43 h15, HC:
    Gui, ex:Add, Edit, x50 y20  w43 h15 vHC
    Gui, ex:Add, Text, x20 y60  w43 h15, HB:
    Gui, ex:Add, Edit, x50 y60  w43 h15 vHB
    Gui, ex:Add, Text, x20 y100 w43 h15, HT:
    Gui, ex:Add, Edit, x50 y100 w43 h15 vHT
    Gui, ex:Add, Text, x20 y140 w43 h15, VCM:
    Gui, ex:Add, Edit, x50 y140 w43 h15 vVCM
    Gui, ex:Add, Text, x20 y180 w43 h15, GL:
    Gui, ex:Add, Edit, x50 y180 w43 h15 vGL
    Gui, ex:Add, Text, x20 y220 w43 h15, S:
    Gui, ex:Add, Edit, x50 y220 w43 h15 vS
    Gui, ex:Add, Text, x20 y260 w43 h15, L:
    Gui, ex:Add, Edit, x50 y260 w43 h15 vL
    Gui, ex:Add, Text, x20 y300 w43 h15, PQL:
    Gui, ex:Add, Edit, x50 y300 w43 h15 vPQL
    Gui, ex:Add, Edit, x50 y340 w43 h15 vVar1
    Gui, ex:Add, Edit, x50 y380 w43 h15 vVar2

    Gui, ex:Add, Text, x115 y20 w43 h15, CT:
    Gui, ex:Add, Edit, x150 y20 w43 h15 vCT
    Gui, ex:Add, Text, x115 y60 w43 h15, HDL:
    Gui, ex:Add, Edit, x150 y60 w43 h15 vHDL
    Gui, ex:Add, Text, x115 y100 w43 h15, LDL:
    Gui, ex:Add, Edit, x150 y100 w43 h15 vLDL
    Gui, ex:Add, Text, x115 y140 w43 h15, TRG:
    Gui, ex:Add, Edit, x150 y140 w43 h15 vTRG
    Gui, ex:Add, Text, x115 y180 w43 h15, GJ:
    Gui, ex:Add, Edit, x150 y180 w43 h15 vGJ
    Gui, ex:Add, Text, x115 y220 w43 h15, HBG:
    Gui, ex:Add, Edit, x150 y220 w43 h15 vHBG
    Gui, ex:Add, Text, x115 y260 w43 h15, K+:
    Gui, ex:Add, Edit, x150 y260 w43 h15 vK
    Gui, ex:Add, Text, x115 y300 w43 h15, Á.ÚR:
    Gui, ex:Add, Edit, x150 y300 w43 h15 vAUR

    Gui, ex:Add, Edit, x150 y340 w43 h15 vVar3
    Gui, ex:Add, Edit, x150 y380 w43 h15 vVar4
    Gui, ex:Add, Text, x210 y20 w43 h15, CR:
    Gui, ex:Add, Edit, x255 y20 w43 h15 vCR
    Gui, ex:Add, Text, x210 y60 w43 h15, TFG:
    Gui, ex:Add, Edit, x255 y60 w43 h15 vTFG
    Gui, ex:Add, Text, x210 y100 w43 h15, UR:
    Gui, ex:Add, Edit, x255 y100 w43 h15 vUR
    Gui, ex:Add, Text, x210 y140 w43 h15, EAS:
    Gui, ex:Add, Edit, x255 y140 w43 h15 vEAS
    Gui, ex:Add, Text, x210 y180 w43 h15, EPF:
    Gui, ex:Add, Edit, x255 y180 w43 h15 vEPF
    Gui, ex:Add, Text, x210 y220 w43 h15, PSOF:
    Gui, ex:Add, Edit, x255 y220 w43 h15 vPSOF
    Gui, ex:Add, Text, x210 y260 w43 h15, UC:
    Gui, ex:Add, Edit, x255 y260 w43 h15 vUC
    Gui, ex:Add, Edit, x255 y300 w43 h15 vVar5
    Gui, ex:Add, Edit, x255 y340 w43 h15 vVar6
    Gui, ex:Add, Button, x240 y380 w120 h25 gcop, Copia/Fecha
    Return

    cop:
		global HC, HB, HT, VCM, GL, S, L, PQL, CT, HDL, LDL, TRG, GJ, HBG, K, AUR, CR, TFG, UR, EAS, EPF, PSOF, UC, Var1, Var2, Var3, Var4, Var5, Var6
        Gui, ex:Submit, NoHide
        textoCopiado := "RESULTADO DE EXAMES:`n"
        if (HC != "")
            textoCopiado .= "HC: " . HC . "; "
        if (HB != "")
            textoCopiado .= "HB: " . HB . "; "
        if (HT != "")
            textoCopiado .= "HT: " . HT . "; "
        if (VCM != "")
            textoCopiado .= "VCM: " . VCM . "; "
        if (GL != "")
            textoCopiado .= "GL: " . GL . "; "
        if (S != "")
            textoCopiado .= "S: " . S . "; "
        if (L != "")
            textoCopiado .= "L: " . L . "; "
        if (PQL != "")
            textoCopiado .= "PQL: " . PQL . "; "
        if (CT != "")
            textoCopiado .= "CT: " . CT . "; "
        if (HDL != "")
            textoCopiado .= "HDL: " . HDL . "; "
        if (LDL != "")
            textoCopiado .= "LDL: " . LDL . "; "
        if (TRG != "")
            textoCopiado .= "TRG: " . TRG . "; "
        if (GJ != "")
            textoCopiado .= "GJ: " . GJ . "; "
        if (HBG != "")
            textoCopiado .= "HBG: " . HBG . "; "
        if (K != "")
            textoCopiado .= "K+: " . K . "; "
        if (AUR != "")
            textoCopiado .= "Á.ÚR: " . AUR . "; "
        if (CR != "")
            textoCopiado .= "CR: " . CR . "; "
        if (TFG != "")
            textoCopiado .= "TFG: " . TFG . "; "
        if (UR != "")
            textoCopiado .= "UR: " . UR . "; "
        if (EAS != "")
            textoCopiado .= "EAS: " . EAS . "; "
        if (EPF != "")
            textoCopiado .= "EPF: " . EPF . "; "
        if (PSOF != "")
            textoCopiado .= "PSOF: " . PSOF . "; "
        if (UC != "")
            textoCopiado .= "UC: " . UC . "; "
        if (Var1 != "")
            textoCopiado .= Var1 . "; "
        if (Var2 != "")
            textoCopiado .= Var2 . "; "
        if (Var3 != "")
            textoCopiado .= Var3 . "; "
        if (Var4 != "")
            textoCopiado .= Var4 . "; "
        if (Var5 != "")
            textoCopiado .= Var5 . "; "
        if (Var6 != "")
            textoCopiado .= Var6 . "; "

        textoCopiado := RTrim(textoCopiado, "; ")
        textoCopiado .= "`n"

        Clipboard := textoCopiado
		RestScript()

    Return
}

Gui, exClose:
    Gui, ex:Destroy
    RestScript()
return

^+e::
    Clean()
    Criarex()
return