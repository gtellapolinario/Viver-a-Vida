#SingleInstance Ignore
#Persistent
#NoEnv

SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Suspend, On
^RButton::
    Suspend, Toggle

Gui in:Default
Gui in:New, -LastFound +MinimizeBox -ToolWindow
Gui in:Font
Gui in:Font, s10 cNavy Bold, Segoe UI
Gui in:Add, % "Tab3", x6 y7 w710 h520, Principal|Aplicações|Rascunho|Info Gerais
Gui in:Font
Gui in:Font, s12 cBlack, Segoe UI
Gui in:Add, Text, x25 y70 w580 h140, Aqui você irá encontrar informações básicas sobre este aplicativo. `nSeu funcionamento é basicamente com teclas de atalho e reduções. Simples mas muito efetivo, este é um divisor de águas em seu fluxo de trabalho. `n`n - Para acessar essa janela, pressione Control+Shift+i
Gui in:Font
Gui in:Font, s9 cBlack Bold, Segoe UI
Gui in:Add, ListView, x35 y210 w600 h190, Sigla|Medicamento| ꝏ |Sigla| Comando
    LV_Add("Select", "lsr", "Losartana 50mg","ꝏ", ";psic", "ENCAMINHADO PARA PSICOLOGIA")
    LV_Add("Select", "espr", "Espironolactona 25mg","ꝏ", ";fono", "ENCAMINHADO FONOAUDIOLOGIA")
    LV_Add("Select", "atn", "Atenolol 25mg","ꝏ", ";nutri", "ENCAMINHADO PARA NUTRIÇÃO")
    LV_Add("Select", "anl", "Anlodipino 5mg","ꝏ", ";fisio", "ENCAMINHADO PARA FISIOTERAPIA")
    LV_Add("Select", "nfd", "Nifedipino mg","ꝏ", ";orto", "ENCAMINHADO PARA ORTOPEDISTA")
    LV_Add("Select", "hdr", "Hidroclorotiazida 25mg","ꝏ", ";procto", "ENCAMINHADO PARA PROCTOLOGISTA")
    LV_Add("Select", "ard", "Aradois 50mg","ꝏ", ";oftal", "ENCAMINHADO PARA OFTALMOLOGISTA")
    LV_Add("Select", "abl", "Ablok 25mg","ꝏ", ";geri", "ENCAMINHADO PARA GERIATRIA")
    LV_Add("Select", "frs", "Furosemida 40mg","ꝏ", ";farma", "ENCAMINHADO PARA FARMACEUTICO(A)")
    LV_Add("Select", "enl", "Enalapril mg","ꝏ", ";to", "ENCAMINHADO PARA TERAPIA OCUPACIONAL")
    LV_Add("Select", "olms", "Olmesartana 40mg","ꝏ", ";social", "ENCAMINHADO PARA ASSITENTE SOCIAL")
    LV_Add("Select", "crv", "Carvedilol mg","ꝏ", ";derma", "ENCAMINHADO PARA DERMATOLOGISTA")
    LV_Add("Select", "indp", "Indapamida 1,5mg","ꝏ", ";cardio", "ENCAMINHADO PARA CARDIOLOGISTA")
    LV_Add("Select", "mtldp", "Metildopa 250mg","ꝏ", ";inss", "ENCAMINHADO PARA INSS")
    LV_Add("Select", "cptp", "Captopril 25mg","ꝏ", ";cmi", "ENCAMINHADO PARA CMI")
    LV_Add("Select", "amlrd", "Amilorida 5mg","ꝏ", ";pnar", "ENCAMINHADO PARA PNAR")
    LV_Add("Select", "prpr", "Propranolol 40mg","ꝏ", ";nefro", "ENCAMINHADO PARA NEFROLOGISTA")
    LV_Add("Select", "vrpm", "Verapamil 80mg","ꝏ", ";uro", "ENCAMINHADO PARA UROLOGISTA")
    LV_Add("Select", "dltz", "Diltiazem 60mg","ꝏ", ";oto", "ENCAMINHADO PARA OTORRINOLARINGOLOGISTA")
    LV_Add("Select", "acd", "AAS 100mg","ꝏ", ";endoc", "ENCAMINHADO PARA ENDOCRINOLOGISTA")
    LV_Add("Select", "clpdg", "Clopidogrel 75mg","ꝏ", ";e", "Exame Físico")
    LV_Add("Select", "prsg", "Prasugrel 10mg","ꝏ", ";dng", "Final DENGUE")
    LV_Add("Select", "tcgrl", "Ticagrelor 90mg","ꝏ", ";cvd+", "COVID POSITIVO")
    LV_Add("Select", "xrl", "Xarelto 10mg  (Rivaroxabana)","ꝏ", ";cvd-", "COVID NEGATIVO")
    LV_Add("Select", "pdrx", "Pradaxa 150mg (Dabigatrana)","ꝏ", ";ivas", "Ivas")
    LV_Add("Select", "apxbn", "Apixabana 5mg","ꝏ", ";ent", "GEA")
    LV_Add("Select", "mrvn", "Marevan (varfarina) 5mg","ꝏ", ";febre", "Febre NE")
    LV_Add("Select", "insn", "Insulina NPH","ꝏ", "^o", "ORIENTAÇÕES GERAIS")
    LV_Add("Select", "insr", "Insulina Regular","ꝏ", "^r", "RENOVO RECEITA")
    LV_Add("Select", "mtf", "Metformina 500mg xr","ꝏ", "^e", "RESULTADO DE EXAMES")
    LV_Add("Select", "frx", "Dapagliflozina 10mg","ꝏ", "^a", "ATESTADO DE   DIAS")
    LV_Add("Select", "glbn", "Glibenclamida 5mg","ꝏ", "^d", "DISCUTO COM CLINICO")
    LV_Add("Select", "glmpr", "Glimepirida 2mg","ꝏ", "^k", "SOLICITO EXAMES")
    LV_Add("Select", "glcz", "Glicazida 30mg 1-0-1","ꝏ", "^p", "PRESCREVO SINTOMÁTICOS")
    LV_Add("Select", "jrdn", "Jardiance (Empagliflozina) 10mg","ꝏ", " pueri", "Puericultura ")
    LV_Add("Select", "ozmp", "Ozempic (Semaglutida)","ꝏ", ";prenatal", "Pré-Natal")
    LV_Add("Select", "sxnd", "Saxenda (Liraglutida) 6mg/ml","ꝏ", ";preve", "Preventivo")
    LV_Add("Select", "rblss", "Rybelsus (Semaglutida) 3mg","ꝏ", ";cs", "Dengue cs comp")
    LV_Add("Select", "onglz", "Onglyza (Saxagliptina) 5mg","ꝏ", ";has", "HIPERDIA")
    LV_Add("Select", "asprt", "Asparte 100ui/ml","ꝏ", ";dm", "Consulta DM2")
    LV_Add("Select", "glrgn", "Glargina 100ui/ml","ꝏ", " expsq", "Exame Psíquico")
    LV_Add("Select", "glf", "Glifage xr 500mg","ꝏ", " r.detran", "DETRAN-MG")
    LV_Add("Select", "cpr", "Ciprofibrato 100mg ","ꝏ", " r.inss", "Ao INSS")
    LV_Add("Select", "alp", "Alopurinol 300mg","ꝏ", " r.cmi", "Maternidade")
    LV_Add("Select", "rsv", "Rosuvastatina 20mg ","ꝏ", "Alt+t", "ΔΘ")
    LV_Add("Select", "snv", "Sinvastatina 20mg ","ꝏ", "Alt+'", "↓")
    LV_Add("Select", "atrv", "Atorvastatina 20mg ","ꝏ", "Alt+1", "↑")
    LV_Add("Select", "cld", "Cálcio 600mg + Vitamina D 400 ui","ꝏ")
    LV_Add("Select", "lvt", "Levotiroxina 25mcg","ꝏ", "Alt+2", "↓")
    LV_Add("Select", "omp", "Omeprazol 20mg","ꝏ", "Alt+3", "→")
    LV_Add("Select", "vxt", "Voextor 5mg","ꝏ", "Alt+4", "←")
    LV_Add("Select", "flx", "Fluoxetina 20mg","ꝏ", "Alt+5", "↗")
    LV_Add("Select", "dlx", "Duloxetina 30mg","ꝏ", "Alt+6", "↘")
    LV_Add("Select", "srt", "Sertralina 50mg","ꝏ", "Alt+7", "↔")
    LV_Add("Select", "trz", "Trazodona 50mg","ꝏ", "Alt+8", "∵")
    LV_Add("Select", "esc", "Escitalopram 10mg","ꝏ", "Alt+9", "≅")
    LV_Add("Select", "vnl", "Venlafaxina 75mg","ꝏ", "Alt+0", "≠")
    LV_Add("Select", "dvnl", "Desvenlafaxina 50 mg","ꝏ", "Alt+-", "∄")
    LV_Add("Select", "bpr", "Bupropiona 150mg","ꝏ","Alt+=", "∅")
    LV_Add("Select", "ctl", "Citalopram 20mg","ꝏ", ";,i",  "📌")
    LV_Add("Select", "mrt", "Mirtazapina 15mg","ꝏ", ";ck", "✅")
    LV_Add("Select", "flvx", "Fluvoxamina 100mg","ꝏ", ";ok", "👍")
    LV_Add("Select", "zlp", "Zolpidem 10mg","ꝏ", ";!", "⚠")
    LV_Add("Select", "amtr", "Amitriptilina 25mg","ꝏ", ";csatsd", "Consulta atestado saúde")
    LV_Add("Select", "nrtr", "Nortriptilina 25mg","ꝏ", "Modelo de encaminhamento geral")
    LV_Add("Select", "tpr", "Topiramato 50mg","ꝏ", "pedparacet", "Paracetamol 200mg/ml")
    LV_Add("Select", "crb", "Carbamazapina 200mg","ꝏ", "peddip", "Dipirona 500mg/ml")
    LV_Add("Select", "lmt", "Lamotrigina  mg","ꝏ", "pedibup", "Ibuprofeno 100mg/ml")
    LV_Add("Select", "fnbr", "Fenobarbital 100mg","ꝏ", "pedceto", "Cetoprofeno 20mg/ml")
    LV_Add("Select", "fnt", "Fenitoína 100mg","ꝏ", "pedazi", "Azitromicina 200 mg/5ml")
    LV_Add("Select", "dpk", "Ácido Valpróico 250mg","ꝏ", "pedcefa", "Cefalexina 250 mg/5ml")
    LV_Add("Select", "cnz", "Clonazepam 2mg","ꝏ", "pedcefacl", "Cefaclor 250 mg/5ml")
    LV_Add("Select", "dzp", "Diazepam 10mg","ꝏ", "amox250", "Amoxicilina 250mg/5ml")
    LV_Add("Select", "alprz", "Alprazolam 1mg","ꝏ", "clav250", "Amoxicilina + clavulanato (250+62,5)mg/5ml")
    LV_Add("Select", "cnzgt", "Clonazepam 2,5mg/ml  gts ao dia","ꝏ", "amox400", "Amoxicilina 400mg")
    LV_Add("Select", "rspr", "Risperidona mg","ꝏ", "clav400", "Amoxicilina + clavulanato (400+57)mg")
    LV_Add("Select", "clrpr", "Clorpromazina 25mg","ꝏ", "bactrim", "Sulfametoxazol + Trimetroprima (800+160)mg")
    LV_Add("Select", "qtpn", "Quetiapina 25mg","ꝏ", "pedclari", "Claritromicina 250 mg/5ml")
    LV_Add("Select", "olnz", "Olanzapina 5mg","ꝏ", "pedsulfa", "Sulfametoxazol + Trimetroprim 200 mg + 40 mg/5ml")
    LV_Add("Select", "ltio", "Carbonato de Lítio 300mg","ꝏ", "pedmebe", "Mebendazol 100 mg/5ml suspensão oral")
    LV_Add("Select", "prgb", "Pregabalina 75mg  ","ꝏ", "pedalbe", "Albendazol 400 mg/10ml suspensão oral")
    LV_Add("Select", "amx", "Amoxicilina","ꝏ", "pedanni", "Annita 20 mg/10ml")
    LV_Add("Select", "clv", "Amoxicilina + clavulanato 875+125 12/12h 7d","ꝏ", "pedmetro", "Metronidazol 200 mg/5ml")
    LV_Add("Select", "cpr", "Ciprofloxacino 500mg 12/12h 5d","ꝏ", "pedosel", "Oseltamivir 75 mg cápsula")
    LV_Add("Select", "cfl", "Cefalexina 500mg  6/6h 7d","ꝏ", "pedpred", "Prednisolona 3 mg/ml xarope")
    LV_Add("Select", "Ntrf", "Nitrufurantoína 100mg","ꝏ", "peddexa", "Dexametasona 0,5 mg/5ml")
    LV_Add("Select", "mtrn", "Metronidazol 250mg","ꝏ", "peddex", "Dexclorfeniramina 2 mg/5ml xarope")
    LV_Add("Select", "aztr", "Azitromicina 500mg","ꝏ", "pedlora", "Loratadina 1 mg/ml")
    LV_Add("Select", "mfx", "Mefex 500mg","ꝏ", "peddeslo", "Desloratadina 0,5mg/ml")
    LV_Add("Select", "dprn", "Dipirona ou paracetamol 500mg","ꝏ", "pedallegr", "Allegra pediátrico solução oral")
    LV_Add("Select", "prdn", "Prednisona 20mg","ꝏ", "pedmonte", "Montelucaste 4/5/10 mg")
    LV_Add("Select", "acbr", "Acebrofilina 50 mg/5ml","ꝏ", "pedacebro", "Acebrofilina 25 mg/5ml")
    LV_Add("Select", "lrtd", "Loratadina 10mg","ꝏ", "pedvonau", "Ondasentrona 4mg ")
    LV_Add("Select", "dslor", "Desloratadina 5mg","ꝏ", "peddomp", "Domperidona 1 mg/ml")
    LV_Add("Select", "stro", "Soro de reidratação oral","ꝏ", "domp", "Domperidona 10mg")
    LV_Add("Select", "entr", "Enterogermina 12/12h 5d","ꝏ", "pedbromo", "Bromoprida 4mg/ml")
    LV_Add("Select", "brmp", "Bromoprida 10mg 8/8h se náuses","ꝏ", "pedfeno", "Fenobarbital 40 mg/ml")
    LV_Add("Select", "ctpr", "Cetoprofeno 100mg 1 cp de 12/12h 5d","ꝏ", "peddifen", "Difenilhidantoína 100 mg/5ml")
    LV_Add("Select", "ibpr", "Ibuprofeno 600mg 1 cp de 8/8h 5d","ꝏ", "pedcarba", "Carbamazepina 100 mg/5ml")
    LV_Add("Select", "mlx", "Meloxicam 15mg 1 cp ao dia 5 dias","ꝏ", "peddepak", "Ácido Valpróico 250 mg/5ml")
    LV_Add("Select", "clcx", "Celecoxibe 200mg 1 cp ao dia 5 dias","ꝏ", "lactente", "– Sulfato Ferroso 125mg/ml")
    LV_Add("Select", "pco", "Paco (500{+}30)mg se dor","ꝏ", "protovit", "ProtoVit plus gotas")
    LV_Add("Select", "trml", "Tramadol 50mg se dor","ꝏ", "pednist", "Nistatina + Óxido de Zinco pomada")
    LV_Add("Select", "hdrx", "HIDROXICLOROQUINA 400 MG","ꝏ", "pedureia", "Creme de Uréia 5% + óleo de amêndoas pomada")
    LV_Add("Select", "", "","ꝏ", "pedperme5", "Permetrina 5% loção")
    LV_Add("Select", "", "","ꝏ", "pedperme1", "Permetrina 1% xampu")
    LV_Add("Select", "", "","ꝏ", "pednacl", "Solução nasal de NaCl 0,9%")
    LV_Add("Select", "", "","ꝏ", "pednacl3", "Solução nasal de Cloreto de Sódio 3% spray nasal")
    LV_Add("Select", "", "","ꝏ", "beclo", "Beclometasona 50mcg/jato spray nasal")
    LV_Add("Select", "", "","ꝏ", "glicel", "Supositório de Glicerina Infantil")
    LV_Add("Select", "", "","ꝏ", "los", "Losartana 50 mg")
    LV_Add("Select", "", "","ꝏ", "ateno", "Atenolol 25mg ")
    LV_Add("Select", "", "","ꝏ", "anlo", "Anlodipino 5mg ")
    LV_Add("Select", "", "","ꝏ", "nif", "Nifedipino mg ")
    LV_Add("Select", "", "","ꝏ", "hidro", "Hidroclorotiazida 25mg")
    LV_Add("Select", "", "","ꝏ", "sinv", "Sinvastatina 20 mg ")
    LV_Add("Select", "", "","ꝏ", "met", "Metformina 500 mg xr")
    LV_Add("Select", "", "","ꝏ", "calcio", "Cálcio 600mg + Vitamina D 400 ui")
    LV_Add("Select", "", "","ꝏ", "d1000", "Colicalciferol D 1.000 ui")
    LV_Add("Select", "", "","ꝏ", "d50000", "Colicalciferol D 50.000 ui")
    LV_Add("Select", "", "","ꝏ", "b12im", "Citoneurim 5.000")
    LV_Add("Select", "", "","ꝏ", "medrox", "Medroxiprogesterona 150mg")
    LV_Add("Select", "", "","ꝏ", "levo", "Levotiroxina 25mcg")
    LV_Add("Select", "", "","ꝏ", "omep", "Omeprazol 20mg")
    LV_Add("Select", "", "","ꝏ", "panto", "Pantoprazol 40g")
    LV_Add("Select", "", "","ꝏ", "glifa", "Glifage xr 500mg ")
    LV_Add("Select", "", "","ꝏ", "glib", "Glibenclamida 5 mg")
    LV_Add("Select", "", "","ꝏ", "ara", "Aradois 50mg ")
    LV_Add("Select", "", "","ꝏ", "aas", "AAS 100mg ")
    LV_Add("Select", "", "","ꝏ", "ciprofi", "Ciprofibrato 100mg ")
    LV_Add("Select", "", "","ꝏ", "alopu", "Alopurinol 300mg ")
    LV_Add("Select", "", "","ꝏ", "ablok", "Ablok 25mg ")
    LV_Add("Select", "", "","ꝏ", "furo", "Furosemida 40mg ")
    LV_Add("Select", "", "","ꝏ", "xarel", "Xarelto mg ")
    LV_Add("Select", "", "","ꝏ", "carvedi", "Carvedilol mg ")
    LV_Add("Select", "", "","ꝏ", "espiro", "Espironolactona 25mg ")
    LV_Add("Select", "", "","ꝏ", "nph", "USO SUBCUTÂNEO {enter} Insulina NPH ")
    LV_Add("Select", "", "","ꝏ", "regular", "Insulina Regular")
    LV_Add("Select", "", "","ꝏ", "forxi", "Dapagliflozina 10mg ")
    LV_Add("Select", "", "","ꝏ", "rosu", "Rosuvastatina 20mg ")
    LV_Add("Select", "", "","ꝏ", "ator", "Atorvastatina 20mg ")
    LV_Add("Select", "", "","ꝏ", "enala", "Enalapril mg ")
    LV_Add("Select", "", "","ꝏ", "asmajato", "Beclometasona 250mg ")
    LV_Add("Select", "", "","ꝏ", "avam", "Avamys spray nasal")
    LV_Add("Select", "", "","ꝏ", "budesonida", "Budesonida 32/50/64 mcg/jato")
    LV_Add("Select", "", "","ꝏ", "fluoxe", "Fluoxetina 20mg ")
    LV_Add("Select", "", "","ꝏ", "daforin", "Daforin 20mg/ml ")
    LV_Add("Select", "", "","ꝏ", "dulo", "Duloxetina 30mg")
    LV_Add("Select", "", "","ꝏ", "sertra", "Sertralina 50mg")
    LV_Add("Select", "", "","ꝏ", "trazo", "Trazodona 50mg")
    LV_Add("Select", "", "","ꝏ", "escit", "Escitalopram 10mg")
    LV_Add("Select", "", "","ꝏ", "venla", "Venlafaxina 75mg")
    LV_Add("Select", "", "","ꝏ", "bup", "Bupropiona 150mg")
    LV_Add("Select", "", "","ꝏ", "cita", "Citalopram 20")
    LV_Add("Select", "", "","ꝏ", "mirta", "Mirtazapina 15mg")
    LV_Add("Select", "", "","ꝏ", "fluvox", "Fluvoxamina 100mg")
    LV_Add("Select", "", "","ꝏ", "zolpi", "Zolpidem 10mg")
    LV_Add("Select", "", "","ꝏ", "topira", "Topiramato 50mg")
    LV_Add("Select", "", "","ꝏ", "carba", "Carbamazapina 200mg")
    LV_Add("Select", "", "","ꝏ", "lamo", "Lamotrigina  mg")
    LV_Add("Select", "", "","ꝏ", "fenob", "Fenobarbital 100mg")
    LV_Add("Select", "", "","ꝏ", "fenito", "Fenitoína 100mg")
    LV_Add("Select", "", "","ꝏ", "depak", "Ácido Valpróico 250mg")
    LV_Add("Select", "", "","ꝏ", "levomep", "Levomepromazina 100mg")
    LV_Add("Select", "", "","ꝏ", "amitri", "Amitriptilina 25mg")
    LV_Add("Select", "", "","ꝏ", "imipra", "Imipramina 25mg")
    LV_Add("Select", "", "","ꝏ", "nortri", "Nortiptilina 50mg")
    LV_Add("Select", "", "","ꝏ", "neulep", "Neuleptil ")
    LV_Add("Select", "", "","ꝏ", "risp", "Risperidona mg")
    LV_Add("Select", "", "","ꝏ", "clorpro", "Clorpromazina 25mg")
    LV_Add("Select", "", "","ꝏ", "queti", "Quetiapina 25mg")
    LV_Add("Select", "", "","ꝏ", "olanza", "Olanzapina 5mg")
    LV_Add("Select", "", "","ꝏ", "amox500", "Amoxicilina 500mg")
    LV_Add("Select", "", "","ꝏ", "clav500", "Amoxicilina + clavulanato (500+125)mg")
    LV_Add("Select", "", "","ꝏ", "amox825", "Amoxicilina 825mg")
    LV_Add("Select", "", "","ꝏ", "clav825", "Amoxicilina + clavulanato (825+125)mg")
    LV_Add("Select", "", "","ꝏ", "albend", "Albendazol 400mg")
    LV_Add("Select", "", "","ꝏ", "anni", "Annita 500mg")
    LV_Add("Select", "", "","ꝏ", "ivermec", "Ivermectina 6 mg")
    LV_Add("Select", "", "","ꝏ", "cipro", "Ciprofloxacino 500mg")
    LV_Add("Select", "", "","ꝏ", "cefa", "Cefalexina 500mg")
    LV_Add("Select", "", "","ꝏ", "nitrofu", "Nitrufurantoína 100mg")
    LV_Add("Select", "", "","ꝏ", "metroni", "Metronidazol 250mg")
    LV_Add("Select", "", "","ꝏ", "azi", "Azitromicina 500mg ")
    LV_Add("Select", "", "","ꝏ", "Mefex", "Mefex 500mg")
    LV_Add("Select", "", "","ꝏ", "litio", "Carbonato de Lítio 300mg")
    LV_Add("Select", "", "","ꝏ", "pregab", "Pregabalina mg ")
    LV_Add("Select", "", "","ꝏ", "dip", "Dipirona 500mg")
    LV_Add("Select", "", "","ꝏ", "paracet", "Paracetamol 500mg")
    LV_Add("Select", "", "","ꝏ", "pred", "Prednisona 20mg")
    LV_Add("Select", "", "","ꝏ", "acebro", "Acebrofilina 50 mg/5ml")
    LV_Add("Select", "", "","ꝏ", "lorat", "Loratadina 10mg ")
    LV_Add("Select", "", "","ꝏ", "deslo", "Desloratadina 5mg ")
    LV_Add("Select", "", "","ꝏ", "soror", "Soro de reidratação oral ")
    LV_Add("Select", "", "","ꝏ", "entero", "Enterogermina")
    LV_Add("Select", "", "","ꝏ", "bromo", "Bromoprida 10mg ")
    LV_Add("Select", "", "","ꝏ", "plasil", "Metoclopramida 10mg ")
    LV_Add("Select", "", "","ꝏ", "vonau", "Ondasentrona 8mg ")
    LV_Add("Select", "", "","ꝏ", "tobra", "Tobramicina colírio")
    LV_Add("Select", "", "","ꝏ", "ciprocolirio", "Ciprofloxacino colírio")
    LV_Add("Select", "", "","ꝏ", "ciprooto", "Ciprofloxacina otológica")
    LV_Add("Select", "", "","ꝏ", "betnovate", " Oto Betnovate")
    LV_Add("Select", "", "","ꝏ", "cerumin", "Cerumin")
    LV_Add("Select", "", "","ꝏ", "hexomedine", "Hexomedine spray")
    LV_Add("Select", "", "","ꝏ", "malvatricin", "Malvatricin spray")
    LV_Add("Select", "", "","ꝏ", "minilax", "Minilax")
    LV_Add("Select", "", "","ꝏ", "ceto", "Cetoprofeno 100mg")
    LV_Add("Select", "", "","ꝏ", "ibup", "Ibuprofeno 600mg")
    LV_Add("Select", "", "","ꝏ", "melox", "Meloxicam 15mg")
    LV_Add("Select", "", "","ꝏ", "celecox", "Celecoxibe 200mg")
    LV_Add("Select", "", "","ꝏ", "paco", "Paco (500+30)mg")
    LV_Add("Select", "", "","ꝏ", "tramal", "Tramadol 50mg")
    LV_Add("Select", "", "","ꝏ", "dipro", "Diprospan")
    LV_Add("Select", "", "","ꝏ", "inda", "Indapamida 1,5mg")
    LV_Add("Select", "", "","ꝏ", "olme", "Olmesartana 40mg")
    LV_Add("Select", "", "","ꝏ", "olmeh", "Olmesartana + Hidroclorotiazida (40+25)mg")
    LV_Add("Select", "", "","ꝏ", "clomi", "Clomipramina 25mg")
    LV_Add("Select", "", "","ꝏ", "eso", "Esomeprazol 40mg")
    LV_Add("Select", "", "","ꝏ", "voex", "Vortioxetina (Voextor, Brintellix, Vurtuoso) 5mg")
    LV_Add("Select", "", "","ꝏ", "buscop", "Escopolamina 10mg")
    LV_Add("Select", "", "","ꝏ", "meclin", "Meclin 25mg")
    LV_Add("Select", "", "","ꝏ", "luftal", "Simeticona 125mg")
    LV_Add("Select", "", "","ꝏ", "metil", "Metildopa 250mg")
    LV_Add("Select", "", "","ꝏ", "hidrala", "Hidralazina 25mg")
    LV_Add("Select", "", "","ꝏ", "neba", "Neomicina + Bacitracina")
    LV_Add("Select", "", "","ꝏ", "trok", "Cetoconazol + Betametasona")
    LV_Add("Select", "", "","ꝏ", "dexam", "Dexametasona creme")
    LV_Add("Select", "", "","ꝏ", "deso", "Desonida creme")
    LV_Add("Select", "", "","ꝏ", "sulprata", "Sulfadiazina de Prata 1% pomada")
    LV_Add("Select", "", "","ꝏ", "gestafol", "– ÁCIDO FÓLICO 0,2mg/ml")
    LV_Add("Select", "", "","ꝏ", "ferro", " – Sulfato Ferroso 40mg")
    LV_Add("Select", "", "","ꝏ", "ivas1", "– Dipirona 500mg")
    LV_Add("Select", "", "","ꝏ", "ivas2", "– Dipirona 500mg")
    LV_Add("Select", "", "","ꝏ", "gea", "– Soro de reidratação oral")
    LV_Add("Select", "", "","ꝏ", "deng", "Dipirona 500mg")
    LV_Add("Select", "", "","ꝏ", "tadala", "FENTOLAMINA+TADALAFILA+ARGININA")
    LV_Add("Select", "", "","ꝏ", "pedgea", "– Soro de reidratação oral")
    LV_Add("Select", "", "","ꝏ", "peg", "PEG 4.000 sem eletrólitos")
    LV_Add("Select", "", "","ꝏ", "cov19", "PaxlovidTM (Nirmatrelvir + Ritonavir")
    LV_ModifyCOl(1, 40)
    LV_ModifyCOl(2, 170)
    LV_ModifyCOl(3, 35)
    LV_ModifyCOl(4, 60)
    LV_ModifyCOl(5, 255)

Gui, Add, Button, x290 y460 w130 h35 gStartButton, Iniciar
StartButton:
    Send, +{F1}

Gui in:Tab, 2
Gui in:Font
Gui in:Font, s11 cNavy, Segoe UI
Gui in:Add, Button, x20 y60 w160 h40 gdt1, Puericultura 👶
Gui in:Add, Button, x20 y120 w160 h40 gdt2, Exames - Preecher 🔬
Gui in:Add, Button, x20 y180 w160 h40 gdt3, Exames extrair do PDF
Gui in:Add, Button, x20 y240 w160 h40 gdt4, Dengue -Resumo
Gui in:Add, Button, x20 y300 w160 h40 gdt5, Hidratação oral Dengue
Gui in:Add, Button, x20 y360 w160 h40 gdt6, Escriba
Gui in:Add, Button, x20 y420 w160 h40 gdt7, Auxílio flutuante 🌐
Gui in:Add, Button, x20 y480 w160 h40 gdt7, Texto para áudio

Gui in:Add, Text, x260 y40 w630 h400, APLICAÇÕES DE AUXÍLIO:`n`nPUERICULTURA: `n     TECLA DE ATALHO: CONTROL+SHIFT+P `n`nRESULTADO  DE EXAMES `n      TECLA DE ATALHO: CONTROL+SHIFT+E `n`nTUDO A MÃO `n      TECLA DE ATALHO: CONTROL+SHIFT+F `n- BOTÃO CENTRAL DO MOUSE PARA ATIVAR `n`nCOPIA E COLA TURBO`n      TECLA DE ATALHO: CONTROL+SHIFT+ C `n`nHidratação dengue`n       TECLA DE ATALHO: CONTROL+SHIFT+D `n`nTexto em áudio `n      TECLA DE ATALHO: CONTROL+SHIFT+﻿F8`n

Gui in:Tab, 3
Gui in:Add, Text, x25 y50 w90 h30, Rascunho:
Gui in:Add, Edit, x25 y70 w660 h410,


Gui in:Tab, 4
Gui in:Add, Text, x21 y40 w579 h39, Informações.
Gui in:Add, Button, x350 y420 w170 h30 gRem, Acionar prescrição
Gui in:Add, Edit, x21 y60 w620 h350

Gui in:Font, s9, Segoe UI
Gui in:Add, Link, x56 y470 w250 h23, <a href="https://dr-guilhermeapolinario.com">Obsidian Publish - Dr. Guilherme Apolinário</a>
Gui in:Add, Link, x56 y490 w250 h23, <a href="https://github.com/gtellapolinario">GitHub - gtellapolinario</a>
Gui in:Show, w720 h544, Viver a vida 4.1 for Dr. Guilherme Aplications

return



dt1:
    Send, ^+{p}
return

dt2:
    Send, ^+{e}
return

dt3:
	FileSelectFile, SelectedFile, 3, , "Selecione um arquivo PDF", *.pdf
	if (SelectedFile != "") {
    	Run, %A_ScriptDir%\ExamCopy.exe "%SelectedFile%"
}
return

dt4:
    Send, ^+{F3}
return

dt5:
    Send, ^+{d}
return

dt6:
    Send, ^+{c}
return

dt7:
    Send, ^+{f}
return

dt8:
    Send, ^+{l}
return

Rem:
    Send, ^+{m}
return

ClassButton:
    Run, msedge.exe https://dr-guilhermeapolinario.com
return

Gui inClose:
    Gui in:Destroy
ExitApp