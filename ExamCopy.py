"""Script para extrair dados de exames de um PDF e formatar para copiar na área de transferência"""

# Extraindo dados de exames de um PDF e formatando para copiar na área de transferência
import re
import sys

import pandas as pd
import pdfplumber
import pyperclip
import regex

if len(sys.argv) > 1:
    caminho_pdf = sys.argv[1]
else:
    print("Nenhum arquivo PDF fornecido.")
    sys.exit(1)

with pdfplumber.open(caminho_pdf) as pdf:
    TEXT = ""
    for page in pdf.pages:
        TEXT += page.extract_text() + "\n"

texto = TEXT
regex_paciente = r"Paciente\s+:\s+([^\n]+).*Coletado em\((\d{2}/\d{2}/\d{4})"
match_pac = re.findall(regex_paciente, texto, re.DOTALL)

if match_pac:
    nome_paciente, data_coleta = match_pac[0]
    dado_user = f"- {nome_paciente}, Coleta: {data_coleta}"

reobj = re.compile(
    r"""
    (?>([T]\s[O].*L\s([.]\s){2}:\s\d{3,4}))|
    (?>([HL]\s[D].L\s([.]\s){4}:\s\d{2,4}))|
    (?>(^Hem[áoa][gct].*:\s?\d{1,2}[.]\d{1,2}))|
    (?>(^MCV\s:\s\d{2,3}[.]\d{1,2}))|
    (?>(^[LPS]\s[eUEil]\s[Ugona].*[bdt]\s[ao]\s[ls]\s:\s\d?[\s]?\d...?[\d]))|
    (?>([TU][R][EÉ].*))|
    (?>([R][e][s][u].*:\s?\d{1,3}\s?[.,]?\s?\d?\s?\d?))|
    (?>([STP][S4ÓA][\sHDR][IL\sA].*\s?))|
    (?>([CÁ][LÁC][LIO][DCR].*\s?))|
    (?>([GPC][RlOL][ITiE][CcÁAG].*\\.?\s?))|
    (?>(^[GR][Le][Is][Cu][El].*o?:?))|
    (?>(^[U][R][O][C].*\nM.*\n[MR].*\n.*))|
    (?>(^[CR][EO][SO][UM][B]?.:?.*))|
    (?>([F][Ó][S].*O))|
    (?>([G][L][I].*[Aa]$))|
    ([PC][RO].[ÁA].*)|
    (?>([T][R]\w{5}[É].*S))|
    (?>([M][é].*\s[E]st))|
    (?>([EP][Lr][Eo][Tt][Re].*[S][\w{4}?]...\w?))|
    (?>([RP][REA].[ÃTA][OETÇ].*[AM]:?$))|
    (?>(^[ABGRP]\s?[lear]\s?[bftmlo]\s?[uat][\s].*:\s?\d{1,3}\s?[.,]?\s?\d?\s?\d?,?\s?\d?))|
    (?>(ELEM.*[A]\w[S]))|
    (?>(^[GHPNL][leri][imotu][cotr][ogeió].*:.*\s[|]))|
    (?>([PHCF][ierl][óioml].*[..]:.*\s[|]))
    """,
    regex.VERBOSE | regex.MULTILINE,
)

matches = reobj.findall(texto)

linhas_limpa = []
for match in matches:
    elementos_nao_vazios = [elem for elem in match if elem]
    if elementos_nao_vazios:
        nome_exame = elementos_nao_vazios[0].strip()
        valor = " ".join(elementos_nao_vazios[1:]).strip()
        linha = f"{nome_exame} {valor}"
        linhas_limpa.append(linha)
texto_vertical = "\n".join(linhas_limpa)

texto_vertical = re.sub(r"(\d) [\.\,] (\d) (\d)", r"\1,\2\3", texto_vertical)
texto_vertical = re.sub(r"(\d+) [\.\,] (\d+)", r"\1,\2", texto_vertical)
texto_vertical = re.sub(r"(\d+) [\.\,] (\d+)", r"\1,\2", texto_vertical)
texto_vertical = re.sub(r"(\d+) (\d+) [\.\,] (\d+)", r"\1\2,\3", texto_vertical)
texto_vertical = re.sub(r"(\d+) (\d+) [\.\,](\d+)", r"\1\2,\3", texto_vertical)

texto_vertical = re.sub(r"(\d+)\.(\d+)", r"\1,\2", texto_vertical)
texto_vertical = re.sub(r"(\d+)(\d+)\.(\d+)", r"\1\2,\3", texto_vertical)
texto_vertical = re.sub(r"(\d+)\.(\d+)(\d+)", r"\1,\2\3", texto_vertical)

padrao = []
substituicoes = {
    r"(^[T]\s[O]\s[T]\s[A].*:)": "CT:",
    r"(^H\sD\sL.*:)": "HDL:",
    r"(^L\sD\sL.*:)": "LDL:",
    r"GLICEMIA\s*\nResultado:": "GJ:",
    r"(^POTÁ.*\nResul.*:)": "K:",
    r"(^Hemácias\s:)": "HC:",
    r"(^Hemoglobina:)": "HB:",
    r"(^Hematócrito:)": "HT:",
    r"(^MCV\s:)": "VCM:",
    r"(^L\sE\sU\sC\sO.*a\sl\s:)": "GL:",
    r"(^S\se\sg\sm\se.*o\ss\s:)": "S:",
    r"(^L\si\sn\sf\só.*s\s:)": "L:",
    r"(^P\sl\sa\sq\su.*s\s:)": "PQL:",
    r"(^CREATININA\s*\nResultado:)": "CR:",
    r"(^TRIGLICÉRIDES\s*\nResultado:)": "TRG:",
    r"(^ÁCIDO ÚRICO\s*\nResultado:)": "ÁC ÚRI:",
    r"(^ELEMENTOS ANORMAIS\s*\nGlicose.*:)": "EAS[glc]:",
    #  r"(^Glicos.*[.][.][.]:)": "GC[uri]:",
    r"(^Hemoglob.*[.][.][.]:)": "EAS[hg]:",
    r"(^Proteí.*[.][.][.]:)": "EAS[prt]:",
    r"(^Nitrit.*[.][.][.]:)": "EAS[nitrito]:",
    r"(^Leucóc.*Ester.*:)": "EAS[leuc Est]:",
    r"(^Pióci.*[.][.][.]:)": "EAS[piócitos]::",
    r"(^Hemác.*[.][.][.]:)": "EAS[hc]:",
    r"(^Cilind.*[.][.][.]:)": "EAS[cilindros]:",
    r"(^Crist.*[.][.][.]:)": "EAS[cristais]:",
    r"(^Flora\sBac.*[.][.][.]:)": "EAS[flora bac]:",
    r"(^T4 LIVRE\s*\nResultado:)": "T4L:",
    r"(^TSH ULTRA SENSÍVEL\s*\nResultado:)": "TSH:",
    r"(^UREI.*\nResul.*:)": "UR:",
    r"(^ELETROFORESE DE\s*\nA l b u m i n a.*:)": "ELTR PRT[Albumina]:",
    # r"(^A\sl\sb\su.*n\sa\s:)": "ALBUMINA:",
    r"(^A\sl\sf.*\s1\s:)": "ELTR PRT[Alfa1]:",
    r"(^A\sl\sf.*\s2\s:)": "ELTR PRT[Alfa2]:",
    r"(^B\se\st.*a\s1\s:)": "ELTR PRT[Beta1]:",
    r"(^B\se\st.*a\s2\s:)": "ELTR PRT[Beta2]:",
    r"(^G\sa\sm\sa\s:)": "ELTR PRT[Gama]:",
    r"(^R\se\sl\sa\sç.*A\s/\sG\s:)": "ELTR PRT[A/G]:",
    r"(^P\sr\so\st\seí.*T\so\st.*\s:)": "ELTR PRT[prt total]:",
    r"(^Proteí.*Monoclo.*:)": "PRT MONOCLONAL:",
    r"(^PARATORMÔNIO PTH INTACTO [(]MOLÉCULA INTEIRA[)]\s*\nResultado:)": "PTH:",
    r"(^CÁLCIO\s*\nResultado:)": "Ca: ",
    r"(^CLORETOS\s*\nResultado:)": "CL-:",
    r"(^SÓDIO\s*\nResultado:)": "NA:",
    r"(^FÓSFORO\s*\nResultado:)": "P:",
    r"(^Result.*:\sHemoglo.*A1C.*:)": "HBG:",
    r"(^Média\sEs.*\nResult.*:)": "GC MÉDIA:",
    r"(^RAZÃO\sPROTE.*\nPROT.*\nResul.*:)": "RAC[prt]:",
    r"(^CREATININA\s-\sDOS.*\nResul.*:)": "RAC[cr]:",
    r"(^COOMBS INDIRETO\s+RESULTADO:)": "COOMBS[I]:",
    r"(^GLICEMIA 1 HORA APÓS DEXTROSOL\s+Resultado:)": "TOTG[1H]:",
    r"(^GLICEMIA 2 HORAS APÓS DEXTROSOL\s+Resultado:)": "TOTG[2H]:",
    r"(UROCULTURA\s+Material: URINA J\. MEDIO\s+RESULTADO:\s+)(Não houve crescimento bacteriano)": r"UROC[urina]: \2",
    r"[|]": "",
    r"[\.$]": "",
    r"(^RELAÇÃO\sPR.*\nResul.*:)": "RAC[relação P/C]:",
}
for padrao, substituicao in substituicoes.items():
    texto_vertical = regex.sub(
        padrao, substituicao, texto_vertical, flags=regex.MULTILINE
    )

linhas = texto_vertical.split("\n")
linhas_divididas = [linha.split(":", 1) for linha in linhas if ":" in linha]
df = pd.DataFrame(linhas_divididas, columns=["Exame", "Valor"])

df["Exame"] = df["Exame"].str.strip()
df["Valor"] = df["Valor"].str.strip()

EX_DCT = pd.Series(df.Valor.values, index=df.Exame).to_dict()

exames_e_valores = {
    "CT": EX_DCT.get("CT", "N/A"),
    "HDL": EX_DCT.get("HDL", "N/A"),
    "LDL": EX_DCT.get("LDL", "N/A"),
    "HBG": EX_DCT.get("HBG", "N/A"),
    "GC Média": EX_DCT.get("GC Média", "N/A"),
    "GJ": EX_DCT.get("GJ", "N/A"),
    "K": EX_DCT.get("K", "N/A"),
    "HC": EX_DCT.get("HC", "N/A"),
    "HB": EX_DCT.get("HB", "N/A"),
    "HT": EX_DCT.get("HT", "N/A"),
    "VCM": EX_DCT.get("VCM", "N/A"),
    "GL": EX_DCT.get("GL", "N/A"),
    "S": EX_DCT.get("S", "N/A"),
    "L": EX_DCT.get("L", "N/A"),
    "PQL": EX_DCT.get("PQL", "N/A"),
    "CR": EX_DCT.get("CR", "N/A"),
    "TRG": EX_DCT.get("TRG", "N/A"),
    "ÁC ÚRI": EX_DCT.get("ÁC ÚRI", "N/A"),
    "EAS[glc]": EX_DCT.get("EAS[glc]", "N/A"),
    "EAS[hg]": EX_DCT.get("EAS[hg]", "N/A"),
    "EAS[prt]": EX_DCT.get("EAS[prt]", "N/A"),
    "EAS[nitrito]": EX_DCT.get("EAS[nitrito]", "N/A"),
    "EAS[leuc Est]": EX_DCT.get("EAS[leuc Est]", "N/A"),
    "EAS[piócitos]": EX_DCT.get("EAS[piócitos]", "N/A"),
    "EAS[hc]": EX_DCT.get("EAS[hc]", "N/A"),
    "EAS[cilindros]": EX_DCT.get("EAS[cilindros]", "N/A"),
    "EAS[cristais]": EX_DCT.get("EAS[cristais]", "N/A"),
    "EAS[flora bac]": EX_DCT.get("EAS[flora bac]", "N/A"),
    "T4L": EX_DCT.get("T4L", "N/A"),
    "TSH": EX_DCT.get("TSH", "N/A"),
    "UR": EX_DCT.get("UR", "N/A"),
    "ELTR PRT[Albumina]": EX_DCT.get("ELTR PRT[Albumina]", "N/A"),
    "ELTR PRT[Alfa1]": EX_DCT.get("ELTR PRT[Alfa1]", "N/A"),
    "ELTR PRT[Alfa2]": EX_DCT.get("ELTR PRT[Alfa2]", "N/A"),
    "ELTR PRT[Beta1]": EX_DCT.get("ELTR PRT[Beta1]", "N/A"),
    "ELTR PRT[Beta2]": EX_DCT.get("ELTR PRT[Beta2]", "N/A"),
    "ELTR PRT[Gama]": EX_DCT.get("ELTR PRT[Gama]", "N/A"),
    "ELTR PRT[A/G]": EX_DCT.get("ELTR PRT[A/G]", "N/A"),
    "ELTR PRT[prt total]": EX_DCT.get("ELTR PRT[prt total]", "N/A"),
    "PRT MONOCLONAL": EX_DCT.get("PRT MONOCLONAL", "N/A"),
    "PTH": EX_DCT.get("PTH", "N/A"),
    "Ca": EX_DCT.get("Ca", "N/A"),
    "CL-": EX_DCT.get("CL-", "N/A"),
    "NA": EX_DCT.get("NA", "N/A"),
    "P": EX_DCT.get("P", "N/A"),
    "RAC[prt]": EX_DCT.get("RAC[prt]", "N/A"),
    "RAC[cr]": EX_DCT.get("RAC[cr]", "N/A"),
    "RAC[relação P/C]": EX_DCT.get("RAC[relação P/C]", "N/A"),
    "TOTG[1H]": EX_DCT.get("TOTG[1H]", "N/A"),
    "TOTG[2H]": EX_DCT.get("TOTG[2H]", "N/A"),
    "COOMBS[I]": EX_DCT.get("COOMBS[I]", "N/A"),
    "UROC[urina]": EX_DCT.get("UROC[urina]", "N/A"),
}
texto_para_copiar = f"RESULTADO DE EXAMES {dado_user}\n\n"

linha_atual = ""
limite_caracteres = 90
for exame, valor in exames_e_valores.items():
    if valor != "N/A":
        # Gerando a string do exame atual
        exame_atual = f"{exame}: {valor}; "

        # Verificando se a adição deste exame excede o limite de caracteres
        if len(linha_atual + exame_atual) > limite_caracteres:
            # Se exceder, adicionamos a linha atual ao texto final e resetamos a linha_atual
            texto_para_copiar += linha_atual + "\n"
            linha_atual = exame_atual
        else:
            # Se não exceder, apenas adicionamos o exame à linha atual
            linha_atual += exame_atual

if linha_atual:
    texto_para_copiar += linha_atual

pyperclip.copy(texto_para_copiar)
