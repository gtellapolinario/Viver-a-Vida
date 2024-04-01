#SingleInstance
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

ClearAll() {
    global Idade, Peso, Pesonasc, Comp, PC
    global ComboPreNatal, ComboParto, ComboAIG, ComboTermo, ComboApgar
    global ComboAlimentacao, ComboEliminacoes, DDLSelection, EditBox, EditBoxContent, textoParaCopiar

    Idade := ""
    Peso := ""
    Pesonasc := ""
    Comp := ""
    PC := ""
    ComboPreNatal := ""
    ComboParto := ""
    ComboAIG := ""
    ComboTermo := ""
    ComboApgar := ""
    ComboAlimentacao := ""
    ComboEliminacoes := ""
    DDLSelection := ""
    EditBox := ""
    EditBoxContent := ""
    textoParaCopiar := ""

}

RestartScript() {
    Reload
}


^+!p::
    RestartScript()
    CriarGuiPed()

CriarGuiPed() {

    ClearAll()

    Gui GuiPed:-MinimizeBox -MaximizeBox -Resize -0x10000 -SysMenu +AlwaysOnTop
    Gui GuiPed:Show, w1240 h640, Puericultura

    Gui, GuiPed:Default
    Gui, GuiPed:Font
    Gui, GuiPed:Font, s11 cNavy, Lucida Console
    Gui, GuiPed:Add, Text, x21 y263 w62 h15, Idade:
    Gui, GuiPed:Add, Edit, x80 y259 w56 h21 vIdade
    Gui, GuiPed:Font
    Gui, GuiPed:Font, s11 cNavy, Lucida Console
    Gui, GuiPed:Add, Text, x333 y65 w98 h15, Peso:
    Gui, GuiPed:Add, Edit, x324 y258 w43 h22 vPeso

    Gui, GuiPed:Font
    Gui, GuiPed:Font, s11 cNavy, Lucida Console
    Gui, GuiPed:Add, Text, x272 y263 w43 h15, Peso nasc:
    Gui, GuiPed:Add, Edit, x428 y62 w54 h21 vPesonasc

    Gui, GuiPed:Font
    Gui, GuiPed:Font, s11 cNavy, Lucida Console
    Gui, GuiPed:Add, Text, x159 y264 w43 h15, Comp:
    Gui, GuiPed:Add, Edit, x213 y258 w43 h22 vComp

    Gui, GuiPed:Font
    Gui, GuiPed:Font, s11 cNavy, Lucida Console
    Gui, GuiPed:Add, Text, x388 y262 w26 h15, PC:
    Gui, GuiPed:Add, Edit, x429 y260 w80 h21 vPC

    Gui, GuiPed:Font
    Gui, GuiPed:Font, s10 cNavy, Lucida Console
    Gui, GuiPed:Add, Text, x22 y351 w80 h15, MOTOR
    Gui, GuiPed:Add, Text, x22 y371 w80 h15, ADAPTATIVO
    Gui, GuiPed:Add, Text, x22 y391 w80 h15, LINGUAGEM
    Gui, GuiPed:Add, Text, x22 y411 w100 h15, PSICOSOCIAL

    Gui, GuiPed:Add, Text, x15 y65 w80 h15, Pré natal:
    Gui, GuiPed:Add, ComboBox, x109 y63 w201 vComboPreNatal, Habitual|DMG|Hipertensão na gestação|TORCHS

    Gui, GuiPed:Add, Text, x27 y95 w51 h15, Parto:
    Gui, GuiPed:Add, ComboBox, x85 y93 w80 vComboParto, Normal|Cesáreo

    Gui, GuiPed:Add, Text, x27 y130 w43 h15, AIG?
    Gui, GuiPed:Add, ComboBox, x72 y130 w66 vComboAIG, PIG|AIG|GIG

    Gui, GuiPed:Add, Text, x145 y130 w55 h15, Termo:
    Gui, GuiPed:Add, ComboBox, x205 y130 w106 vComboTermo, Pré termo|A termo|Pós termo

    Gui, GuiPed:Add, Text, x330 y130 w53 h15, Apgar:
    Gui, GuiPed:Add, ComboBox, x390 y130 w53 vComboApgar, 4|5|6|7|8|9|10

    Gui, GuiPed:Add, Text, x15 y316 w105 h15, Alimentação:
    Gui, GuiPed:Add, ComboBox, x134 y309 w120 vComboAlimentacao, Leite materno exclusivo|Variada|Leite materno + fórmula

    Gui, GuiPed:Add, Text, x273 y315 w105 h15, Eliminações:
    Gui, GuiPed:Add, ComboBox, x388 y310 w120 vComboEliminacoes, Fisiológicas|Constipado
    Gui, GuiPed:Font
    Gui, GuiPed:Font, s11 cNavy, Lucida Console
    Gui, GuiPed:Add, ListView, x560 y40 w560 h200 Grid NoSortHeader, Idade|Peso| Comprimento|PC
        LV_Add("Select","1º TRIM ", "700 g/mês (25-40g/dia)","2cm/mês","2cm/mês")
        LV_Add("Select","2º TRIM", "600 g/mês (20g/dia)","2cm/mês","1cm/mês")
        LV_Add("Select","3º TRIM", "500 g/mês (15g/dia)","1cm/mês","0,5cm/mês")
        LV_Add("Select","4º TRIM", "400 g/mês (10g/dia)","1cm/mês","0,5cm/mês")
        LV_Add("Select","~12-18M", "200 g/mês","10cm/ano","2 cm/ano")
        LV_Add("Select","~18-24M", "180 g/mês","10cm/ano","2 cm/ano")
        LV_ModifyCOl(1, 90)
        LV_ModifyCOl(2, 220)
        LV_ModifyCOl(3, 130)
        LV_ModifyCOl(4, 110)

    Gui, GuiPed:Add, TreeView, x560 y300 vMyTreeView w200 h240
        FR := TV_Add("FR")
        FC := TV_Add("FC média")
        TEMP := TV_Add("TEMPERATURA")

        FR_0_2m := TV_Add("0–2m", FR)
        TV_Add("60irpm", FR_0_2m)
        FR_2_11m := TV_Add("2-11m", FR)
        TV_Add("50irpm", FR_2_11m)
        FR_12m_5a := TV_Add("12m-5a", FR)
        TV_Add("40irpm", FR_12m_5a)
        ; Adiciona subnós para FC média
        FC_0_11m := TV_Add("0–11m", FC)
        TV_Add("125bpm", FC_0_11m)
        FC_1a := TV_Add("1a", FC)
        TV_Add("120bpm", FC_1a)
        FC_2a := TV_Add("2a", FC)
        TV_Add("110bpm", FC_2a)
        TEMP_Hipotermia := TV_Add("Hipotermia", TEMP)
        TV_Add("<36,2", TEMP_Hipotermia)
        TEMP_Febre := TV_Add("Febre", TEMP)
        TV_Add(">37,8", TEMP_Febre)

    Gui, GuiPed:Font
    Gui, GuiPed:Font, s9 cNavy, Lucida Console
    Gui, GuiPed:Add, TreeView, x790 y300 vMy2TreeView w440 h300
        AM := TV_Add("Amamentação")
        FI := TV_Add("Fórmula Infantil")
        LV := TV_Add("Leite de Vaca Modificado")
        GER := TV_Add("GERAL")

        ; Subnós para Amamentação
        AM_0_6m := TV_Add("0-6m", AM)
        TV_Add("Leite Materno Exclusivo", AM_0_6m)
        AM_0_6mLM := TV_Add("Livre demanda, Ordenhar se necessário", AM_0_6m)
        TV_Add("Armazenamento (12h refrigerador, 15d congelador", AM_0_6mLM)
        TV_Add("Se pega difícil, oferecer em copinho ou colher", AM_0_6mLM)

        AM_6_7m := TV_Add("6-7m", AM)
        TV_Add("LM, máximo 500ml/di", AM_6_7m)
        AM_0_6_7mLM := TV_Add("Alimentos complementares", AM_6_7m)
        TV_Add("Fruta amassada/raspada", AM_0_6_7mLM)
        TV_Add("Almoço amassado", AM_0_6_7mLM)
        TV_Add("Jantar amassado", AM_0_6_7mLM)

        AM_7_11m := TV_Add("7-11m", AM)
        TV_Add("Alimentação da casa", AM_7_11m)
        TV_Add("Orientações gerais", AM_7_11m)
        TV_Add("Estímulo a novos alimentos", AM_7_11m)
        TV_Add("Evitar leite desnatado/integral < 2a", AM_7_11m)


        FI_0_6m := TV_Add("0-6m", FI)
        TV_Add("Uso conforme necessidade", FI_0_6m)
        TV_Add("Preparo e higiene", FI_0_6m)

        FI_6_7m := TV_Add("6-7m", FI)
        TV_Add("Alimentos complementares", FI_6_7m)
        TV_Add("Similar à amamentação", FI_6_7m)

        FI_7_11m := TV_Add("7-11m", FI)
        TV_Add("Transição para alimentação familiar", FI_7_11m)
        TV_Add("Alimentação leve após 9 meses", FI_7_11m)

        ; Subnós para Leite de Vaca Modificado
        LV_0_4m := TV_Add("Até 4m", LV)
        TV_Add("Condicionado a imposibilidade de amamentação", LV_0_4m)
        TV_Add("Diluição [2/3L + 1/3A + 1colher de óleo]", LV_0_4m)

        LV_4_5m := TV_Add("4-5m", LV)
        TV_Add("Início com fruta", LV_4_5m)
        TV_Add("Almoço e jantar amassados", LV_4_5m)

        LV_6_11m := TV_Add("6-11m", LV)
        TV_Add("Consistência adulto", LV_6_11m)
        TV_Add("Orientações gerais", LV_6_11m)

        GER_TODOS := TV_Add("TODOS", GER)
        TV_Add("Frutas in natura", GER_TODOS)
        TV_Add("Alimentos de todos os grupos", GER_TODOS)
        TV_Add("Introdução de pedaços pequenos aos 8 meses", GER_TODOS)
        TV_Add("Aos 12 meses consistência de adulto", GER_TODOS)
        TV_Add("Escovação/limpeza oral", GER_TODOS)
        TV_Add("Higienização de frutas e hortaliças", GER_TODOS)
        TV_Add("EVITAR AÇUCAR E ALIMENTOS INDUSTRIALIZADOS", GER_TODOS)
        TV_Add("NÃO USAR MEL NO 1º ANO DE VIDA", GER_TODOS)
        TV_Add("OVOS, A PARTIR DOS 6M DE VIDA", GER_TODOS)
        TV_Add("EVITAR SAL", GER_TODOS)

    Gui, GuiPed:Font
    Gui, GuiPed:Font, s13 cNavy, Lucida Console
    Gui, GuiPed:Add, Text, x99 y12 w382 h23 +0x200, INFORMAÇÕES DO PRÉ NATAL E NASCIMENTO
    Gui, GuiPed:Add, Text, x570 y12 w382 h23 +0x200, PARÂMETROS DE CRESCIMENTO
    Gui, GuiPed:Add, Text, x570 y260 w170 h23 +0x200, PARÂMETROS VITAIS
    Gui, GuiPed:Add, Text, x795 y260 w382 h23 +0x200, PARÂMETROS ALIMENTARES
    Gui, GuiPed:Font
    Gui, GuiPed:Font, s13 cRed, Lucida Console
    Gui, GuiPed:Add, Link, x400 y620 w450 h30, <a href="https://www.gov.br/saude/pt-br/vacinacao/calendario">Calendário de Vacinação - Ministério da saúde</a>
    Gui, GuiPed:Font
    Gui, GuiPed:Font, s11 cNavy, Lucida Console
    Gui, GuiPed:Add, Text, x24 y169 w521 h3 +0x10
    Gui, GuiPed:Add, Text, x179 y200 w204 h23 +0x200, CONSULTA PUERICULTURA

    Gui, GuiPed:Add, DropDownList, x16 y437 w120 vDDLSelection gDDLChanged, 1 Mês|3 Meses|6 Meses|9 Meses|12 Meses|15 Meses|18 Meses|24 Meses
    Gui, GuiPed:Add, Edit, x168 y402 w340 h126 vEditBox
    Gui, GuiPed:Font
    Gui, GuiPed:Font, s13 cRed Bold, Lucida Console
    Gui, GuiPed:Add, Button, x200 y560 w180 h50 gCopiar, Copiar/Fechar
    Gui, GuiPed:Font
    Gui, GuiPed:Add, Text, x553 y58 w3 h431 +0x10

    return

    DDLChanged:

    GuiControlGet, CurrentSelection,, DDLSelection
    GuiControl,, EditBox, %CurrentSelection%
    if (CurrentSelection = "1 Mês")
        GuiControl,, EditBox, Motor: Levanta a cabeça quando deitado de barriga para baixo.`nAdaptativo: Segue objetos em movimento com os olhos.`nLinguagem: Faz sons de choro e de satisfação.`nPsicosocial: Observa o rosto dos pais.
    else if (CurrentSelection = "3 Meses")
        GuiControl,, EditBox, Motor: Levanta cabeça e peito quando deitado de bruço.`nAdaptativo: Acompanha objetos em movimento com os olhos por 180 graus.`nLinguagem: Começa a balbuciar e imitar alguns sons.`nPsicosocial: Sorri em resposta a rostos familiares ou sorrisos.
    else if (CurrentSelection = "6 Meses")
        GuiControl,, EditBox, Motor: Senta-se com apoio, rola de barriga para as costas.`nAdaptativo: Leva objetos à boca.`nLinguagem: Balbucia, riso vocal.`nPsicosocial: Reconhece pessoas, estranha desconhecidos.
    else if (CurrentSelection = "9 Meses")
        GuiControl,, EditBox, Motor: Começa a engatinhar, senta-se sem apoio.`nAdaptativo: Procura objetos que caem.`nLinguagem: Balbucia com inflexão, responde a comandos simples.`nPsicosocial: Tem ansiedade de separação, entende 'não-não'.
    else if (CurrentSelection = "12 Meses")
        GuiControl,, EditBox, Motor: Fica de pé com apoio, começa a andar segurando nos móveis.`nAdaptativo: Come usando dedos, sacode, bate e joga objetos.`nLinguagem: Uma ou duas palavras, além de 'mamãe' e 'papai'.`nPsicosocial: Imita comportamentos, pode ter ansiedade de separação.
    else if (CurrentSelection = "15 Meses")
        GuiControl,, EditBox, Motor: Anda sem ajuda, pode subir escadas com ajuda.`nAdaptativo: Começa a comer com colher, bebe de um copo.`nLinguagem: Pode dizer várias palavras simples, entre 3 a 10 palavras.`nPsicosocial: Imita os outros, mostra afeição.
    else if (CurrentSelection = "18 Meses")
        GuiControl,, EditBox, Motor: Pode correr, subir móveis sem ajuda.`nAdaptativo: Ajuda a vestir-se, empilha blocos.`nLinguagem: Pode dizer 10 a 20 palavras, aponta para itens quando nomeados.`nPsicosocial: Conhece o uso cotidiano de objetos comuns, pode ter birras.
    else if (CurrentSelection = "24 Meses")
        GuiControl,, EditBox, Motor: Anda correndo, começa a pular com os dois pés.`nAdaptativo: Começa a desenhar linhas, constrói torres de blocos.`nLinguagem: Combina duas palavras, repete palavras, vocabulário de 50 a 200 palavras.`nPsicosocial: Começa a jogar de faz-de-conta, mostra independência.
    return

    Copiar:
        global Idade, peso, pesonasc, comp, PC, ComboPreNatal, ComboParto, ComboAIG, ComboTermo, ComboApgar, ComboAlimentacao, ComboEliminacoes, textoParaCopiar, EditBox, EditBoxContent, MyTreeView, My2TreeView

        Gui, GuiPed:Submit, NoHide  ; Coleta os valores dos campos

        textoParaCopiar := "PUERICULTURA:`n"

        if (Idade != "")
            textoParaCopiar .= "Idade: " . Idade . "m; "

        if (Peso != "")
            textoParaCopiar .= "Peso: " . Peso . "g; "

        if (Pesonasc != "")
            textoParaCopiar .= "Peso nasc: " . Pesonasc . "g; "

        if (Comp != "")
            textoParaCopiar .= "Comp: " . Comp . " cm; "

        if (PC != "")
            textoParaCopiar .= "PC: " . PC . " cm; "

        ; Obtém os valores selecionados das comboboxes e verifica se eles não estão vazios
        GuiControlGet, ComboParto,, ComboParto
        if (ComboParto != "")
            textoParaCopiar .= "Parto: " . ComboParto . "`n"
        GuiControlGet, ComboAIG,, ComboAIG
        if (ComboAIG != "")
            textoParaCopiar .= "AIG: " . ComboAIG . "; "
        GuiControlGet, ComboTermo,, ComboTermo
        if (ComboTermo != "")
            textoParaCopiar .= "Termo: " . ComboTermo . "; "
        GuiControlGet, ComboApgar,, ComboApgar
        if (ComboApgar != "")
            textoParaCopiar .= "Apgar: " . ComboApgar . ";"
        GuiControlGet, ComboAlimentacao,, ComboAlimentacao
        if (ComboAlimentacao != "")
            textoParaCopiar .= "Alimentação: " . ComboAlimentacao . "; "
        GuiControlGet, ComboEliminacoes,, ComboEliminacoes
        if (ComboEliminacoes != "")
            textoParaCopiar .= "Eliminações: " . ComboEliminacoes . "; "
        GuiControlGet, ComboPreNatal,, ComboPreNatal
        if (ComboPreNatal != "")
            textoParaCopiar .= "Pré natal: " . ComboPreNatal . "`n"

        GuiControlGet, EditBoxContent,, EditBox
        if (EditBoxContent != "")
            textoParaCopiar .= "`n" "Crescimento e desenvolvimento" . "`n" EditBoxContent . "`n"

        Clipboard := textoParaCopiar  ; Copia para a área de transferência

        RestartScript()
    return
}

Gui, GuiPedClose:
    Gui, GuiPed:Destroy
    RestartScript()
return

^+p::
    ClearAll()  ; Limpa as variáveis
    CriarGuiPed()  ; Recria a GUI
return