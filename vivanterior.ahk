#SingleInstance Force
#Persistent
SendMode Input

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Suspend, On
+F1::
Suspend, Toggle
ToolTip % (A_IsSuspended ? "Desativado" : "Ativado")
SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
ToolTip
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

!a::
SendInput, ꝏ
return

!t::
SendInput, ΔΘ
return

!'::
SendInput, ↓
return

!1::
SendInput, ↑
return

!2::
SendInput, ↓
return

!3::
SendInput, →
return

!4::
SendInput, ←
return

!5::
SendInput, ↗
return

!6::
SendInput, ↘
return

!7::
SendInput, ↔
return

!8::
SendInput, ∵
return

!9::
SendInput, ≅
return

!0::
SendInput, ≠
return

!-::
SendInput, ∄
return

!=::
SendInput, ∅
return

![::
SendInput, Application.ScreenUpdating = False{enter}Application.Calculation = xlCalculationManual{enter}Application.EnableEvents = False
return

!]::
SendInput, Application.EnableEvents = True{enter}Application.Calculation = xlCalculationAutomatic{enter}Application.ScreenUpdating = True
return

!;::
SendInput, """   """
return

^[::
SendInput, Application.ScreenUpdating = False
return

^]::
SendInput, Application.ScreenUpdating = True
return

^w::
SendInput,   `````  {enter}{enter}{enter} ````
return

;;;;;;;;;;;;;;;;;;;;;;;
;;;Antihipertensivos;;;
;;;;;;;;;;;;;;;;;;;;;;;

::lsr:: | Losartana 50mg  1 - 0 - 1
return

::espr:: | Espironolactona 25mg  0 - 0 - 1
return

::atn:: | Atenolol 25mg   1 - 0 - 1
return

::anl:: | Anlodipino 5mg   1 - 0 - 1
return

::nfd:: | Nifedipino mg   1 - 0 - 1
return

::hdr:: | Hidroclorotiazida 25mg  1 - 0 - 0
return

::ard:: | Aradois 50mg   1 - 0 - 1
return

::abl:: | Ablok 25mg   1 - 0 - 1
return

::frs:: | Furosemida 40mg   1 - 0 - 0
return

::enl:: | Enalapril mg   1 - 0 - 1
return

::olms:: | Olmesartana 40mg   1 - 0 - 0
return

::crv:: | Carvedilol mg   1 - 0 - 1
return

::indp:: | Indapamida 1,5mg   1 - 0 - 0
return

::mtldp:: | Metildopa 250mg   1 - 1 - 1
return

::cptp:: | Captopril 25mg   1 - 1 - 1
return

::amlrd:: | Amilorida 5mg   1 - 0 - 0
return

::prpr:: | Propranolol 40mg   1 - 0 - 1
return

::vrpm:: | Verapamil 80mg   1 - 0 - 0
return

::dltz:: | Diltiazem 60mg   1 - 0 - 0
return

;;;;;;;;;;;;;;;;;;;;;;;
;;;Anti-agregante-pql;;
;;;;;;;;;;;;;;;;;;;;;;;

::acd:: | AAS 100mg   0 - 1 – 0
return

::clpdg:: | Clopidogrel 75mg 1 - 0 - 0
return

::prsg:: | Prasugrel 10mg 1 - 0 - 0
return

::tcgrl:: | Ticagrelor 90mg 1 - 0 - 0
return


;;;;;;;;;;;;;;;;;;;;;;;
;;;Anti-coagulantes;;
;;;;;;;;;;;;;;;;;;;;;;;

::xrl:: | Xarelto 10mg  (Rivaroxabana) 1 - 0 - 0
return

::pdrx:: | Pradaxa 150mg (Dabigatrana) 1 - 0 - 0
return

::apxbn:: | Apixabana 5mg 1 - 0 - 0
return

::mrvn:: | Marevan (varfarina) 5mg 1 - 0 - 0

;;;;;;;;;;;;;;;;;;;;;;;
;;;Anti-diabeticos;;;;;
;;;;;;;;;;;;;;;;;;;;;;;

::insn:: | Insulina NPH   ui ui ui
return

::insr:: | Insulina Regular  ui ui ui
return

::mtf:: | Metformina 500mg xr  2 - 1 – 2
return

::frx:: | Dapagliflozina 10mg   1 - 0 - 0
return

::glbn:: | Glibenclamida 5mg   1 - 0 - 1
return

::glmpr:: | Glimepirida 2mg   1 - 0 - 1
return

::glcz:: | Glicazida 30mg 1-0-1
return

::jrdn:: | Jardiance (Empagliflozina) 10mg 1 - 0 - 0
return

::ozmp:: | Ozempic (Semaglutida) 1mg x ciques/semana
return

::sxnd:: | Saxenda (Liraglutida) 6mg/ml
return

::rblss:: | Rybelsus (Semaglutida) 3mg 1 - 0 - 0
return

::onglz:: | Onglyza (Saxagliptina) 5mg 1 - 0 - 0
return

::asprt:: | Asparte 100ui/ml ui - ui - ui
return

::glrgn:: | Glargina 100ui/ml ui - ui - ui
return

::glf:: | Glifage xr 500mg  2 - 1 - 2
return


;;;;;;;;;;;;;;;;;;;;;;;
;;;Anti-diabeticos;;;;;
;;;;;;;;;;;;;;;;;;;;;;;


::cpr:: | Ciprofibrato 100mg   0 - 0 - 1
return

::alp:: | Alopurinol 300mg   1 - 0 - 0
return

::rsv:: | Rosuvastatina 20mg   0 - 0 - 1
return

::snv:: | Sinvastatina 20mg   0 - 0 - 1
return

::atrv:: | Atorvastatina 20mg   0 - 0 - 1
return

::cld:: | Cálcio 600mg + Vitamina D 400 ui  1 - 0 – 0
return

::lvt:: | Levotiroxina 25mcg  1 - 0 - 0
return

::omp:: | Omeprazol 20mg  1 - 0 - 0
return




;;;;;;;;;;;;;;;;;;;;
;;;Saúde mental;;;;
;;;;;;;;;;;;;;;;;;;

::vxt:: | Voextor 5mg   1 - 0 - 0
return

::lvmpr:: | Levomepromazina 100mg   1 - 0 - 1
return

::flx:: | Fluoxetina 20mg   1 - 0 - 0
return

::dlx:: | Duloxetina 30mg  1 - 0 - 0
return

::srt:: | Sertralina 50mg  1 - 0 - 0
return

::trz:: | Trazodona 50mg  0 - 0 - 1
return

::esc:: | Escitalopram 10mg  1 - 0 - 0
return

::vnl:: | Venlafaxina 75mg  1 - 0 - 0
return

::dvnl:: | Desvenlafaxina 50 mg   1 - 0 - 0
return

::bpr:: | Bupropiona 150mg  1 - 0 - 0
return

::ctl:: | Citalopram 20mg  1 - 0 - 0
return

::mrt:: | Mirtazapina 15mg  0 - 0 - 1
return

::flvx:: | Fluvoxamina 100mg  0 - 0 - 1
return

::zlp:: | Zolpidem 10mg  0 - 0 - 1
return

::amtr:: | Amitriptilina 25mg  0 - 0 - 1
return

::nrtr:: | Nortriptilina 25mg  0 - 0 - 1
return

::tpr:: | Topiramato 50mg  1 - 0 - 1
return

::crb:: | Carbamazapina 200mg  1 - 0 - 0
return

::lmt:: | Lamotrigina  mg  1 - 0 - 0
return

::fnbr:: | Fenobarbital 100mg  1 - 0 - 0
return

::fnt:: | Fenitoína 100mg  1 - 0 - 0
return

::dpk:: | Ácido Valpróico 250mg  1 - 0 - 0
return

::cnz:: | Clonazepam 2mg  0 - 0 - 1
return

::dzp:: | Diazepam 10mg  0 - 0 - 1
return

::alprz:: | Alprazolam 1mg  0 - 0 - 1
return

::cnzgt:: | Clonazepam 2,5mg/ml  gts ao dia
return



::rspr:: | Risperidona mg  1 - 0 - 0
return

::clrpr:: | Clorpromazina 25mg  1 - 0 - 0
return

::qtpn:: | Quetiapina 25mg  0 - 0 - 1
return

::olnz:: | Olanzapina 5mg  0 - 0 - 1
return

::ltio:: | Carbonato de Lítio 300mg  1 - 0 - 1
return

::prgb:: | Pregabalina 75mg    0 - 0 - 1
return

;geral

::amx:: | Amoxicilina
return

::clv:: | Amoxicilina + clavulanato 875+125 12/12h 7d
return

::cpr:: | Ciprofloxacino 500mg 12/12h 5d
return

::cfl:: | Cefalexina 500mg  6/6h 7d
return

::Ntrf:: | Nitrufurantoína 100mg
return

::mtrn:: | Metronidazol 250mg
return

::aztr:: | Azitromicina 500mg
return

::Mfx:: | Mefex 500mg
return

::dprn:: | Dipirona ou paracetamol 500mg
return

::prdn:: | Prednisona 20mg  1 - 0 - 0
return

::acbr:: | Acebrofilina 50 mg/5ml
return

::lrtd:: | Loratadina 10mg
return

::dslor:: | Desloratadina 5mg
return

::stro:: | Soro de reidratação oral
return

::entr:: | Enterogermina 12/12h 5d
return

::brmp:: | Bromoprida 10mg 8/8h se náuses
return

::ctpr:: | Cetoprofeno 100mg 1 cp de 12/12h 5d
return

::ibpr:: | Ibuprofeno 600mg 1 cp de 8/8h 5d
return

::mlx:: | Meloxicam 15mg 1 cp ao dia 5 dias
return

::clcx:: | Celecoxibe 200mg 1 cp ao dia 5 dias
return

::pco:: | Paco (500{+}30)mg se dor
return

::trml:: | Tramadol 50mg se dor
return

::hdrx::  | HIDROXICLOROQUINA 400 MG   1 - 0 - 0
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;ENCAMINHAMENTOS;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;


::;psic:: ENCAMINHADO PARA PSICOLOGIA
return

::;fono:: ENCAMINHADO FONOAUDIOLOGIA
return

::;nutri:: ENCAMINHADO PARA NUTRIÇÃO
return

::;fisio:: ENCAMINHADO PARA FISIOTERAPIA
return

::;orto:: ENCAMINHADO PARA ORTOPEDISTA
return

::;procto:: ENCAMINHADO PARA PROCTOLOGISTA
return

::;oftal:: ENCAMINHADO PARA OFTALMOLOGISTA
return

::;geri:: ENCAMINHADO PARA GERIATRIA
return

::;farma:: ENCAMINHADO PARA FARMACEUTICO(A)
return

::;to:: ENCAMINHADO PARA TERAPIA OCUPACIONAL
return

::;social:: ENCAMINHADO PARA ASSITENTE SOCIAL
return

::;derma:: ENCAMINHADO PARA DERMATOLOGISTA
return

::;cardio:: ENCAMINHADO PARA CARDIOLOGISTA
return

::;inss:: ENCAMINHADO PARA INSS
return

::;cmi:: ENCAMINHADO PARA CMI
return

::;pnar:: ENCAMINHADO PARA PNAR
return

::;nefro:: ENCAMINHADO PARA NEFROLOGISTA
return

::;uro:: ENCAMINHADO PARA UROLOGISTA
return

::;oto:: ENCAMINHADO PARA OTORRINOLARINGOLOGISTA
return

::;endoc:: ENCAMINHADO PARA ENDOCRINOLOGISTA
return

!d::
    FormatTime, DataFormatada, %A_Now%, dd-MM-yyyy
    SendInput, %DataFormatada%
return

::;,i::{U+1F4CC}      ; 📌
::;ok::{U+1F44D}     ; 👍
::;!::{U+26A0}       ; ⚠
::;ck::{U+2705}      ; ✅
return

:*:;e:: Exame Físico {enter} Aspecto: BEG, orientado, hidratado, afebril, sem edema. {enter} SNC: Ausência de sinais meníngeos {enter} AR: MVUA s/ RA{enter} AC: RCR 2t bnf {enter} Abdome: Sem massas palpáveis, indolor a palpação.
return

:*:;dng:: - CASO SUSPEITO DE DENGUE NOTIFICADO, GRUPO A | B | C | D - SOLICTADO RT-PCR, {enter} - PRESCRITO HIDRATAÇÃO E SINTOMÁTICOS {enter} - ORIENTO SOBRE SINAIS DE ALARME E GRAVIDADE {enter} - REAVALIAÇÃO EM 24H a 48H
return

:*:;cvd+:: TESTE RÁPIDO COVID [ + ] , NOTIFICADO. PRESCRITO HIDRATAÇÃO E SINTOMÁTICOS {enter} ORIENTO SOBRE SINAIS DE PIORA. RETORNO PARA REAVALIAÇÃO SE AGRAVO.
return

:*:;cvd-:: TESTE RÁPIDO COVID [ - ]. PRESCRITO HIDRATAÇÃO E SINTOMÁTICOS {enter} ORIENTO SOBRE SINAIS DE PIORA. RETORNO PARA REAVALIAÇÃO SE AGRAVO.
return

:*:;ivas:: Paciente relata quadro tosse e coriza com 2 a 3 dias de evolução, febre não aferida | febre até 38 , uma ou duas vezes ao dia, sem outras queixas.
return

:*:;gea:: Paciente com quadro de náusea, vômito e diarréia aquosa com 3 dias de evolução, nega muco ou sangue nas fezes, afebril. Sem outras queixas.
return

:*:;febre:: Paciente com quadro de febre até 38 com 2 dias de evolução. Sem outras queixas.
return

:*:;csatsd:: Paciente previamente hígido, sem comorbidades, solicita atestado de saúde para iniciar atividade física. Sem outras demandas.
return


^o:: SendInput ORIENTAÇÕES GERAIS
return

^r:: SendInput RENOVO RECEITA
return

^e:: SendInput RESULTADO DE EXAMES
return

^a:: SendInput ATESTADO DE   DIAS
return

^d:: SendInput DISCUTO COM CLINICO
return

^k:: SendInput SOLICITO EXAMES
return

^p:: SendInput PRESCREVO SINTOMÁTICOS

::;pueric::
(
- Puericultura - Data de nasc:        -Idade:
            ********************************************
            ****Informações o pré natal e nascimento****
            ********************************************

Pré natal: habitual / alterado, | Parto: Normal/cesáreo, Pré termo/A termo/Pós termo,
PIG/AIG/GIG, APGAR: 10/10  |  Peso nasc.→      |  TORCHS? S/N | Intercorrências no parto? S/N

            ********************************************

Peso na consulta:  kg, | Alt/Comp:  cm, | PC:  cm,  Alimentação:

Vacinação: Completa/Incompleta Especificar:

Sono: Adequado/Inadequado  |  Eliminações: Fisiológicas/Alterado
Desenv.:

)
return

:*:;1m:: M Levanta a cabeça quando deitado de barriga para baixo {enter} A Segue objetos em movimento com os olhos {enter} L Faz sons de choro e de satisfação {enter} P Observa o rosto dos pais {enter}
return

:*:;3m:: M Levanta cabeça e peito quando deitado de bruço.{enter} A Acompanha obj. em movimento com os olhos por 180 graus.{enter} L Começa a balbuciar e imitar alguns sons.{enter} P Sorri em resposta a rostos familiares ou sorrisos.{enter}
return

:*:;6m:: M Senta-se com apoio, rola de barriga para as costas.{enter} A Leva objetos à boca.{enter} L Balbucia, riso vocal.{enter} P Reconhece pessoas, estranha desconhecidos.{enter}
return

:*:;9m:: M Começa a engatinhar, senta-se sem apoio.{enter} A Procura objetos que caem.{enter} L Balbucia com inflexão, responde a comandos simples.{enter}  P Tem ansiedade de separação, entende não não.{enter}
return

:*:;12m:: M Fica de pé com apoio, começa a andar segurando nos móveis.{enter} A Come usando dedos, sacode, bate e joga obj.{enter} L Uma ou duas palavras, além de mamãe e papai.{enter} P Imita comportamentos, pode ter ansiedade de separação.{enter}
return

:*:;15m:: M Anda sem ajuda, pode subir escadas com ajuda.{enter} A Começa a comer com colher, bebe de um copo.{enter} L Pode dizer várias palavras simples, entre 3 a 10 palavras.{enter} P Imita os outros, mostra afeição.{enter}
return

:*:;18m:: M Pode correr, subir móveis sem ajuda.{enter} A Ajuda a vestir-se, empilha blocos.{enter} L Pode dizer 10 a 20 palavras, aponta para itens quando nomeados.{enter} P Conhece o uso cotidiano de objetos comuns, pode ter birras.{enter}
return

:*:;24m:: M Anda correndo, começa a pular com os dois pés.{enter} A Começa a desenhar linhas, constrói torres de blocos.{enter} L Combina duas palavras, repete palavras, vocab. de 50 a 200 palavras.{enter} P Começa a jogar de faz-de-conta, mostra independência.{enter}
return


::;prenatal::
(
Pré-Natal, DUM:       | IG:  S   D   consulta nº:     | Data:

Hx obst.: G  P  A   |    HPP gest.: NDN / Eclâmpsia / Hipertensão da gestação / DMG
PNAR? S/N , OBS:

AU:     , BCF:     ,MF: +/-; Apresentação:
PA:      ,Peso:     , Altura:     , IMC:
Edema MMII: ++++/+4     |     Queixas:

Medicamentos em uso:
Teste rápido realizado?
1º S/N, Data:  /  /  .,2º S/N, Data:  /  /  .,3º S/N, Data:  /  /  .

Exames 1º | 2º | 3º tri.→ Solicitados/Revisados:
Swab para Cultura StreptoB? S/N - Data:  /  /  ., IG:

Acompanhamento odontológico: S/N    |    Vacinação em dia? S/N

OBS:
)
return

::;preve::
(
AVALIAÇÃO DA AMOSTRA: Satisfatória
EPITÉLIOS REPRESENTADOS NA AMOSTRA: Escamoso | Glandular | Metaplásico
REPRESENTATIVIDADE DA ZONA DE TRANSFORMAÇÃO: Sim | Não
ALTERAÇÕES CELULARES BENIGNAS REATIVAS OU REPARATIVAS: Inflamação | Atrofia com inflamação | Outros: Hipotrófico.
MICROBIOLOGIA: Bacilos supracitoplasmáticos |sugestivos de Gardnerella/Mobiluncus| Flora escassa não classificável | Cocos e Outros Bacilos | Lactobacillus sp.
CONCLUSÃO: NEGATIVO PARA MALIGNIDADE
OBSERVAÇÕES: Presença de Hemácias
DENTRO DOS LIMITES DA NORMALIDADE NO MATERIAL EXAMINADO
)
return


:*:;cs::
(
CASO SUPEITO DE DENGUE, CONSULTA COMPARTILHADA COM ENFERMAGEM NEGA SINAIS DE ALARME OU GRAVIDADE.
ORIENTO SOBRE SINAIS DE ALARME GRAVIDADE, E EM CASO DE SURGIMENTO, COMPARECER NA URGENCIA IMEDIATAMENTE.
)
return

:*:;has::
(
HIPERDIA DATA:   /    /     | SEXO: F/M  | IDADE:

PA:     | Altura:   cm  | Peso:    kg  | IMC:     | Circ. abd.:  cm
Medicamentos em Uso:

HF DCV? S/N  | DM2?   S/N  | Tabagismo: S/N | Álcool: S/N  |At. Fís. Regular: S/N

- Últimos Exames: Data:   /   /    | Solicitado nesta data? S/N

)
return

:*:;dm::
(
DM2 em uso de:
- Glifage XR 500mg 1-0-1  |  Glibenclamida 5 mg 1-0-1
- Insulina NPH     ui   ui  |  Insulina Regular ui   ui   ui

PA:      | Peso:    kg
Controle Glicêmico: Adequado/Inadequado
Último Exame - Data:
)
return

::expsq::
(
Exame Psíquico:

Aspecto Geral: [Bem cuidado/Descuidado, Compostura, Higiene]
Atitude: [Cooperativo/Hostil, Motivação para o tratamento]
Consciência: [Clara/Alterada]
Orientação: [Tempo, Espaço, Pessoa]
Discurso: [Fluente/Arrastado, Coerente/Incoerente, Volume e velocidade]
Humor: [Eutímico/Depressivo/Eufórico/Lábil]
Afeto: [Congruente/Incongruente, Amplitude]
Pensamento: [Forma (organizado/desorganizado), Conteúdo (obsessões, delírios)]
Percepções: [Alucinações auditivas/visuais, Ilusões]
Cognição: [Memória, Atenção, Concentração, Inteligência geral]
Insight: [Consciência da doença e necessidade de tratamento]
Julgamento: [Capacidade de tomar decisões coerentes]

Observações adicionais:
)
return

!LButton::
    Send, ^c
return


!RButton::
    Send, ^v
return


:*:r.detran::
(RELATÓRIO MÉDICO
Departamento de Trânsito de Minas Gerais (DETRAN-MG)
Declaro para os devidos fins que o paciente [Nome], inscrito no CPF: [CPF], encontra-se em acompanhamento para o tratamento da Hipertensão Arterial Sistêmica (HAS).

Diagnóstico: CID-10: I10. Data de Início do Acompanhamento: [Inserir data].

Propedêutica: O paciente está em uso de: [inserir medicamentos]. O tratamento tem se mostrado eficaz na manutenção de níveis pressóricos adequados para a sua condição. Última Consulta nesta data, com aferição da pressão arterial, de (valor de pressão arterial). Com base nos acompanhamentos regulares e no controle efetivo da hipertensão arterial, considero que o paciente apresenta condições clínicas para realizar atividades do cotidiano, incluindo a condução de veículos, desde que mantenha o tratamento conforme prescrito.Orientado sobre a importância da continuidade do acompanhamento médico regular e da adesão ao tratamento.
)
return

:*:r.inss::
(Ao INSS

{tab} Trata-se da paciente  supracitada, diagnosticada com [XXXXX], apresenta agravo, com agudização do quadro de base, que a está impedindo-a de realizar atividades rotineiras, além de atividades laborais.  Ao exame, notam-se alterações significativas que comprometem a [XXXXXXXXXX]. Exames de imagem corroboram com os achados clínicos  [ XXXXXX] .  No contexto de tratamentos realizados e em andamento, cito [xxxxxxxxxx]. No entanto, os resultados até o momento são insatisfatórios.
{tab} Atualmente, o quadro denota uma incapacitada para realizar qualquer atividade profissional de forma adequada devido às limitações físicas impostas por suas condições clínicas. Isso tem afetado substancialmente seu sustento e qualidade de vida. Dada a gravidade do quadro clínico e as consequências diretas na capacidade laboral, solicito avaliação cuidadosa para concessão de benefício previdenciário.

CID-10:       .   Medicação em uso:

)
return

:*:r.cmi::
(Maternidade
Idade:                     Comorbidades:
Medicações em uso:
Exames prévios:
Descritivo:

Paciente supracitada, pré-natal {habitual | de risco}, IG: 40s, AU:   cm,   BCF:   bpm | inaudível,
MF: Presente |Ausente, Apresentação: {Cefálico, Pélvico, Córmico). Diagnóstico Prévio: {HAS, Hipertensão
gravídica, DMG ... não}.  Queixa: Sinais e sintomas típicos de termo gestacional. Solicito aliação
ginecológica/obstétrica para propedêutica gestacional adequada, segundo procolo vigente em Contagem MG.

)
return

:*:r.dengue::
(
UPA | HOSPITAL | CTI

PA:   mmHg; FC:   bpm; FR:   irpm; SatO2:   aa; Glicemia capilar:     .

Detalhes relevantes da condição do paciente O que não pode faltar:

{ início dos sintomas, evolução e tratamentos prévios. Grupo de risco? Risco Social? Descrever comorbidades associadas, medicamentos em uso e como está, se houver doença de base, a estabilidade, informações relevantes, alergias conhecidas.}

Exames realizados: Listar exames, se realizados e resultados significativos

Exame físico {Completar conforme o caso}
Aspecto geral: SNC: AR: ACV: Abdome:
Suspeita de Dengue Grupo C | D com [Sintomas específicos? Sinal de alarme/Gravidade? Descreva o que for relevante que corrobora com sua hipótese.]

- Justificativa para Encaminhamento ao CTI | Enfermaria:
Estado clínico, Sinais vitais, estado de consciência, etc. Riscos associados à condição do paciente, como choque, sangramento severo, insuficiência orgânica...
Listar medicamentos administrados e doses, hidratação intravenosa, suporte respiratório ...

Comunicação Prévia:
SAMU: Contato realizado em [data e hora], com a solicitação de transporte para o CTI |Enfermaria. Hospital | UPA: Contato prévio realizado em [data e hora] para solicitação de vaga. Confirmação de vaga recebida pelo profissional [nome ].

Solicito a transferência urgente do paciente para CTI | leito de enfermaria, considerando o quadro clínico atual e a necessidade de [monitoramento intensivo e intervenções específicas para Dengue Grupo D.] |
[observação contínua e cuidados específicos para Dengue Grupo C.]
)
return

:*:r.encgeral::
(
Modelo de Encaminhamento para Especialidade Médica

Data: [Inserir Data]

Especialidade Solicitada: [Inserir Especialidade]

Motivo do Encaminhamento:
Descrever o motivo do encaminhamento, incluindo sintomas, duração e quaisquer tratamentos prévios realizados.

Histórico Médico:

Comorbidades: [Listar comorbidades conhecidas]
Cirurgias prévias: [Listar cirurgias e datas aproximadas]
Internações hospitalares: [Mencionar internações e motivos]
Medicamentos em Uso:
Listar todos os medicamentos em uso atualmente, incluindo dosagem e frequência.

Alergias:
Informar sobre quaisquer alergias conhecidas, incluindo medicamentos, alimentos ou substâncias.

Exames Relevantes:
Descrever ou listar os exames já realizados que são relevantes para o encaminhamento, com datas aproximadas.

Observações:
Incluir quaisquer outras informações consideradas relevantes para o atendimento pela especialidade solicitada.
)
return
