#SingleInstance, force
#Persistent
#NoEnv

SetWorkingDir %A_ScriptDir%
SetBatchLines -1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Suspend, On

^+m::
	Suspend, Toggle


::pedparacet:: Paracetamol 200mg/ml __________ 2 frascos {enter} Tomar  gotas de 6/6 horas, se dor ou febre {enter} (Dose: 1 gota/kg/dose) {enter}
Return

::peddip:: Dipirona 500mg/ml __________ 2 frascos {enter} Tomar  gotas de 6/6 horas, se dor ou febre {enter} (Dose: 1 gota/kg/dose) {enter}
Return

::pedibup:: Ibuprofeno 100mg/ml __________ 2 frascos {enter} Tomar  gotas de 6/6 horas, se dor ou febre {enter} (Dose: 1 gota/kg/dose) {enter}
Return

::pedceto:: Cetoprofeno 20mg/ml __________ 2 frascos {enter} Tomar  gotas de 8/8 horas, por 5 dias {enter} (Dose: 1 gota/kg/dose) {enter}
Return

::pedazi:: Azitromicina 200 mg/5ml suspensão oral __________ 2 frascos {enter} Tomar  ml ao dia por 5 dias {enter} (Dose: 10 mg/kg/dia = 0,25 ml/kg/dia) {enter}
Return

::pedcefa:: Cefalexina 250 mg/5ml suspensão oral __________ 2 frascos {enter} Dar X mL de 6 em 6 horas por 7 dias (6h, 12h, 18h e 24h) {enter} (Dose: 1 ml/kg/dia divididos em 4 doses iguais) {enter}
Return

::pedcefacl:: Cefaclor 250 mg/5ml suspensão oral __________ 2 frascos {enter} Dar X mL de 12/12 horas por 10 dias {enter} (Dose: 0,5 a 1 ml/kg/dia) {enter}
Return

::amox250:: Amoxicilina 250mg/5ml __________ 2 frascos {enter} Tomar  ml de 8/8 horas por 7 dias {enter}
Return

::clav250:: Amoxicilina + clavulanato (250+62,5)mg/5ml __________ 2 frascos {enter} Tomar ml de 8/8 horas por 7 dias {enter}
Return

::amox400:: Amoxicilina 400mg __________ 2 frascos {enter} Tomar  ml de 12/12 horas por 7 dias {enter}
Return

::clav400:: Amoxicilina + clavulanato (400+57)mg __________ 2 frascos {enter} Tomar  ml de 12/12 horas por 7 dias {enter}
Return

::bactrim:: Sulfametoxazol + Trimetroprima (800+160)mg __________ 1cx {enter} Tomar 1 cp de 12/12 horas por 5 dias {enter}
Return

::pedclari:: Claritromicina 250 mg/5ml suspensão oral __________ 2 frascos {enter} Dar X mL de 12/12 horas por 10 dias {enter} (Dose: 15 mg/kg/dia) {enter}
Return

::pedsulfa:: Sulfametoxazol + Trimetroprim 200 mg + 40 mg/5ml suspensão oral __________ 2 frascos {enter} Dar X mL de 12/12 horas por 10 dias {enter} (Dose: 1 ml/kg/dia) {enter}
Return

::pedmebe:: Mebendazol 100 mg/5ml suspensão oral __________ 2 frascos {enter} Dar 5 mL após almoço e jantar por 3 dias. Repetir após 15 dias. {enter} (Dose: Repetir após 15 dias. Dose dobrada: Teníase) {enter}
Return

::pedalbe:: Albendazol 400 mg/10ml suspensão oral __________ X frasco {enter} Dar 10 ml após o almoço, repetir após 15 dias. Acima de 2 anos. {enter}
Return

::pedanni:: Annita 20 mg/10ml suspensão oral __________ X frasco {enter} Dar  ml de 12/12 horas por 3 dias. Acima de 1 ano. {enter} Dose: 375 mL (7,5 mg) por kg, 12/12 horas 3 dias {enter}
Return

::pedmetro:: Metronidazol 200 mg/5ml suspensão oral __________ 1 frasco {enter} Dar X mL de 12/12 horas por X dias. {enter} Giardíase: 0,25 mL/kg/dose 7 dias. Amebíase: 0,4 mL/kg/dose 10 dias {enter}
Return

::pedosel:: Oseltamivir 75 mg cápsula __________ X comprimidos {enter} Diluir a cápsula em 5ml de água. Dar X ml de 12/12 horas por 5 dias. {enter} (Dose: < 15 Kg: 2mL; 15 a 23: 3 mL; 23 a 40: 4 mL; Acima de 40 Kg: 1 cp) {enter}
Return

::pedpred:: Prednisolona 3 mg/ml xarope __________ 1 frasco {enter} Dar  ml de manhã, por 5 dias. {enter}
Return

::peddexa:: Dexametasona 0,5 mg/5ml xarope __________ 1 frasco {enter} Dar X ml de 12/12 horas, por 5 dias. {enter} (Dose: 1 a 2 mL/kg/dia) {enter}
Return

::peddex:: Dexclorfeniramina 2 mg/5ml xarope __________ 1 frasco {enter} Dar X ml de 8/8 horas, por X dias. {enter} (>6 meses = 0,4 mL/kg/dia) {enter}
Return

::pedlora:: Loratadina 1 mg/ml xarope __________ 1 frasco {enter} Dar X ml uma vez ao dia por X dias. {enter} (> 2 anos. Dose: 2 a 5a = 5 mL; a partir de 6a = 10 mL) {enter}
Return

::peddeslo:: Desloratadina 0,5mg/ml __________ 1 frasco {enter} Tomar  ml ao dia por 10 dias {enter}
Return

::pedallegr:: Allegra pediátrico solução oral __________ 1 frasco {enter} Dar X ml de 12/12 horas por 7 dias. {enter}
Return

::pedmonte:: Montelucaste 4/5/10 mg __________ 1 caixa {enter} 2 a 5 anos de idade: Dar 1 cp mastigável de 4 mg diariamente {enter} 6 a 14 anos: Dar 1 cp mastigável de 5 mg diariamente {enter} Acima de 14 anos: Dar 1 cp de 10 mg sem mastigar diariamente {enter}
Return

::pedacebro:: Acebrofilina 25 mg/5ml __________ 2 Frascos {enter} Tomar  ml de 12/12 horas por 7 dias {enter}
Return

::pedvonau:: Ondasentrona 4mg  __________ 1cx {enter} Dar  cp de 8/8 horas, se náusea ou vômito {enter} Dose: 0,15 mg/kg/dose {enter}
Return

::peddomp:: Domperidona 1 mg/ml suspensão oral __________ 1 frasco {enter} Dar X ml de 8/8 horas {enter} (Dose: 0,25 mL/kg/dose) {enter}
Return

::domp:: Domperidona 10mg __________ 1cx {enter} Tomar 1 cp até de 8/8 horas, ou 15min. antes das principais refeições {enter}
Return

::pedbromo:: Bromoprida 4mg/ml __________ 2 Frascos {enter} Tomar  gotas de 8/8 horas, se náusea ou vômito {enter}
Return

::pedfeno:: Fenobarbital 40 mg/ml gotas: 1 frasco {enter} Dar X gotas à noite.  {enter} (Dose: 3 a 5 mg/kg/dia ? 1 gota = 1 mg) {enter}
Return

::peddifen:: Difenilhidantoína 100 mg/5ml: 1 frasco {enter} Dar X ml de 12/12 horas. {enter} (Dose: 10 mg/kg/dia = 0,5 mL/kg/dia) {enter}
Return

::pedcarba:: Carbamazepina 100 mg/5ml xarope: 1 frasco {enter} Dar X ml de 12/12 horas. {enter} (Dose: 10 a 30 mg/kg/dia = 0,5 a 1,5 mL/kg/dia) {enter}
Return

::peddepak:: Ácido Valpróico 250 mg/5ml xarope: 1 frasco {enter} Dar X ml de 12/12 horas. {enter} (Dose: 15 a 60 mg/kg/dia = 0,3 a 1,2 mL/kg/dia) {enter}
Return

::lactente:: – Sulfato Ferroso 125mg/ml __________ Contínuo {enter} Dar  gotas até 2 anos de idade. {enter}  {enter} – Vitamina D 200 ui __________ Contínuo {enter} Dar  gotas até 2 anos de idade  {enter}
Return

::protovit:: ProtoVit plus gotas __________ 1 frasco {enter} Dar 12 gotas 1 vez ao dia. {enter} (Contém 500 UI de vitamina D, 1.500 UI de vitamina A)
Return

::pednist:: Nistatina + Óxido de Zinco pomada __________ 1 tubo {enter} Aplicar após cada troca de fralda {enter}
Return

::pedureia:: Creme de Uréia 5% + óleo de amêndoas pomada __________ 150g {enter} Aplicar em todo o corpo imediatamente após o banho. {enter}
Return

::pedperme5:: Permetrina 5% loção __________ 1 frasco (para Escabiose) {enter} Aplicar em todo o corpo, à noite, por 3 noites seguidas. De manha, banho para retirar o produto. Após 1 semana, repetir {enter}
Return

::pedperme1:: Permetrina 1% xampu __________ 1 frasco (para Pediculose) {enter} Aplicar e deixar em contato por dez minutos, depois enxaguar bem. Repetir após 1 dia, depois 1 semana {enter}
Return

::pednacl:: Solução nasal de NaCl 0,9% __________ 1 frasco {enter} Aplicar de 4 em 4 horas em ambas narinas por o dia {enter}
Return

::pednacl3:: Solução nasal de Cloreto de Sódio 3% spray nasal __________ 1 frasco {enter} Aplicar de 8 em 8 horas em ambas narinas {enter}
Return

::beclo:: Beclometasona 50mcg/jato spray nasal __________ 1 frasco {enter} Aplicar 1 jato em cada narina de 12/12 horas por 15 dias {enter}
Return

::glicel:: Supositório de Glicerina Infantil __________ 1 caixa {enter} Aplicar, via retal {enter}
Return

::los:: Losartana 50 mg __________ Contínuo {enter} Tomar 1 cp de 12 em 12 horas {enter}
Return

::ateno:: Atenolol 25mg  __________ Contínuo {enter} Tomar 1 cp de 12 em 12 horas {enter}
Return

::anlo:: Anlodipino 5mg  __________ Contínuo {enter} Tomar 1 cp de 12 em 12 horas {enter}
Return

::nif:: Nifedipino mg  __________ Contínuo {enter} Tomar 1 cp de 12 em 12 horas {enter}
Return

::hidro:: Hidroclorotiazida 25mg __________ Contínuo {enter} Tomar 1 cp de manhã {enter}
Return

::sinv:: Sinvastatina 20 mg  __________ Contínuo {enter} Tomar 1 cp à noite {enter}
Return

::met:: Metformina 500 mg xr __________ Contínuo {enter} Tomar 1 cp no café da manhã, 2 cps no almoço e 2 cps no jantar {enter}
Return

::calcio:: Cálcio 600mg + Vitamina D 400 ui __________ Contínuo {enter} Tomar 1 cp ao dia {enter}
Return

::d1000:: Colicalciferol D 1.000 ui __________ Contínuo {enter} Tomar 1 cp ao dia {enter}
Return

::d50000:: Colicalciferol D 50.000 ui __________ 8cps {enter} Tomar 1 cp por semana por 8 semanas {enter}
Return

::b12im:: Citoneurim 5.000 __________ 3 ampolas {enter} Aplicar 1 ampola im uma vez por semana por 3 semanas {enter}
Return

::medrox:: Medroxiprogesterona 150mg __________ 2 ampolas {enter} Aplicar 1 ampola im uma vez a cada 3 meses {enter}
Return

::levo:: Levotiroxina 25mcg __________ Contínuo {enter} Tomar 01 cp em jejum {enter}
Return

::omep:: Omeprazol 20mg __________ Contínuo {enter} Tomar 01 cp em jejum {enter}
Return

::panto:: Pantoprazol 40g __________ Contínuo {enter} Tomar 01 cp em jejum {enter}
Return

::glifa:: Glifage xr 500mg  __________ Contínuo {enter} Tomar 1 cp no café da manhã, 2 cps no almoço e 2 cps no jantar {enter}
Return

::glib:: Glibenclamida 5 mg __________ Contínuo {enter} Tomar 1 cp de 12 em 12 horas {enter}
Return

::ara:: Aradois 50mg  __________ Contínuo {enter} Tomar 1 cp de 12 em 12 horas {enter}
Return

::aas:: AAS 100mg  __________ Contínuo {enter} Tomar 1 cp após almoço {enter}
Return

::ciprofi:: Ciprofibrato 100mg  __________ Contínuo {enter} Tomar 1 cp à noite {enter}
Return

::alopu:: Alopurinol 300mg  __________ Contínuo {enter} Tomar 1 cp ao dia {enter}
Return

::ablok:: Ablok 25mg  __________ Contínuo {enter} Tomar 1 cp de 12 em 12 horas {enter}
Return

::furo:: Furosemida 40mg  __________ Contínuo {enter} Tomar 1 cp de manhã {enter}
Return

::xarel:: Xarelto mg  __________ Contínuo {enter} Tomar 1 cp ao dia {enter}
Return

::carvedi:: Carvedilol mg  __________ Contínuo {enter} Tomar 1 cp de 12 em 12 horas {enter}
Return

::espiro:: Espironolactona 25mg  ________________________________________ Contínuo {enter} Tomar 1 cp de manhã {enter}
Return

::nph:: USO SUBCUTÂNEO {enter} Insulina NPH  __________ Contínuo {enter} Administrar  ui no café da manhã, e  ui no jantar {enter}
Return

::regular:: Insulina Regular __________ Contínuo {enter} Administrar  ui no café da manhã,  ui no almoço e  ui no jantar {enter}
Return

::forxi:: Dapagliflozina 10mg  __________ Contínuo {enter} Tomar 1 cp ao dia {enter}
Return

::rosu:: Rosuvastatina 20mg  __________ Contínuo {enter} Tomar 1 cp à noite {enter}
Return

::ator:: Atorvastatina 20mg  __________ Contínuo {enter} Tomar 1 cp à noite {enter}
Return

::enala:: Enalapril mg  __________ Contínuo {enter} Tomar 1 cp de 12/12 horas {enter}
Return

::asmajato:: USO INALATÓRIO {enter}  {enter}  {enter} Beclometasona 250mg  __________ Contínuo {enter} 02 jatos de 12/12 horas {enter}  {enter} Salbutamol Spray 100mcg  __________ Contínuo {enter} 04 jatos de 4/4 horas, se crise {enter}
Return

::avam:: Avamys spray nasal __________ 3 frascos {enter} Aplicar 1 jato em cada narina de 12/12 horas por 3 meses. {enter}
Return

::budesonida:: Budesonida 32/50/64 mcg/jato spray nasal: 1 frasco {enter} Aplicar 1 jato em cada narina de 12/12 horas por 15 dias {enter}
Return

::fluoxe:: Fluoxetina 20mg  __________ 60 Cps {enter} Tomar 1 cp de manhã {enter}
Return

::daforin:: Daforin 20mg/ml  __________ 2 Frascos {enter} Tomar 1 cp de manhã {enter}
Return

::dulo:: Duloxetina 30mg __________ 60 Cps {enter} Tomar 1 cp de manhã {enter}
Return

::sertra:: Sertralina 50mg __________ 60 Cps {enter} Tomar 1 cp de manhã {enter}
Return

::trazo:: Trazodona 50mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::escit:: Escitalopram 10mg __________ 60 Cps {enter} Tomar 1 cp de manhã {enter}
Return

::venla:: Venlafaxina 75mg __________ 60 Cps {enter} Tomar 1 cp de manhã {enter}
Return

::bup:: Bupropiona 150mg __________ 60 Cps {enter} Tomar 1 cp de manhã {enter}
Return

::cita:: Citalopram 20 __________ 60 Cps {enter} Tomar 1 cp de manhã {enter}
Return

::mirta:: Mirtazapina 15mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::fluvox:: Fluvoxamina 100mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::zolpi:: Zolpidem 10mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::topira:: Topiramato 50mg __________ 120 Cps {enter} Tomar 1 cp de 12/12 horas {enter}
Return

::carba:: Carbamazapina 200mg __________ 360 Cps {enter} Tomar 2 cp de 8/8 horas {enter}
Return

::lamo:: Lamotrigina  mg __________ 120 Cps {enter} Tomar 1 cp de 12/12 horas {enter}
Return

::fenob:: Fenobarbital 100mg __________ 120 Cps {enter} Tomar 1 cp de 12/12 horas {enter}
Return

::fenito:: Fenitoína 100mg __________ 120 Cps {enter} Tomar 1 cp de 12/12 horas {enter}
Return

::depak:: Ácido Valpróico 250mg __________ 180 Cps {enter} Tomar 1 cp de 8/8 horas {enter}
Return

::levomep:: Levomepromazina 100mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::amitri:: Amitriptilina 25mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::imipra:: Imipramina 25mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::nortri:: Nortiptilina 50mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::neulep:: Neuleptil  __________ 60 Cps {enter} Tomar 1 cp à noite {enter} 4%: 40 mg/ml 1mL: 40gts, 1gt=1mg {enter}
Return

::risp:: Risperidona mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::clorpro:: Clorpromazina 25mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::queti:: Quetiapina 25mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::olanza:: Olanzapina 5mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::amox500:: Amoxicilina 500mg __________ 14 Cps {enter} Tomar 1 cp de 8/8 horas por 7 dias {enter}
Return

::clav500:: Amoxicilina + clavulanato (500+125)mg __________ 14 Cps {enter} Tomar 1 cp de 8/8 horas por 7 dias {enter}
Return

::amox825:: Amoxicilina 825mg __________ 14 Cps {enter} Tomar 1 cp de 12/12 horas por 7 dias {enter}
Return

::clav825:: Amoxicilina + clavulanato (825+125)mg __________ 14 Cps {enter} Tomar 1 cp de 12/12 horas por 7 dias {enter}
Return

::albend:: Albendazol 400mg __________ X cps {enter} Tomar 1 cp após o almoço, repetir em 15 dias. {enter}
Return

::anni:: Annita 500mg __________ 1 cx {enter} Tomar 1 cp de 12/12 horas por 3 dias. Acima de 12 anos. {enter}
Return

::ivermec:: Ivermectina 6 mg __________ X cps {enter} Dar X comprimidos dose única pela manhã. {enter} (Dose: ½ comprimido a cada 15 Kg de peso) {enter}
Return

::cipro:: Ciprofloxacino 500mg __________ 14 Cps {enter} Tomar 1 cp de 12/12 horas por 7 dias {enter}
Return

::cefa:: Cefalexina 500mg __________ 28 Cps {enter} Tomar 1 cp de 6/6 horas por 7 dias {enter}
Return

::nitrofu:: Nitrufurantoína 100mg __________ 28Cps {enter} Tomar 1cp de 6/6 horas por 7 dias {enter}
Return

::metroni:: Metronidazol 250mg __________ 40 Cps {enter} Tomar 2 cps de 12/12 horas por 10 dias {enter}
Return

::azi:: Azitromicina 500mg  __________ 5 Cps {enter} Tomar 1 cp ao dia por 5 dias {enter}
Return

::Mefex:: Mefex 500mg __________ 14 Cps {enter} Tomar 1 cp de 12/12 horas por 7 dias {enter}
Return

::litio:: Carbonato de Lítio 300mg __________ 60 Cps {enter} Tomar 1 cp à noite {enter}
Return

::pregab:: Pregabalina mg  __________  Cps {enter} Tomar 1 cp à noite {enter}
Return

::dip:: Dipirona 500mg __________ 20 Cps {enter} Tomar 1 cp de 6/6 horas, se dor ou febre {enter}
Return

::paracet:: Paracetamol 500mg __________ 20 Cps {enter} Tomar 1 cp de 6/6 horas, se dor ou febre {enter}
Return

::pred:: Prednisona 20mg __________ 10 Cps {enter} Tomar 2 cps de manhã por 5 dias {enter}
Return

::acebro:: Acebrofilina 50 mg/5ml __________ 2 Frascos {enter} Tomar 10 ml de 12 em 12 horas por 7 dias {enter}
Return

::lorat:: Loratadina 10mg  __________ 10 Cps {enter} Tomar 1 cp ao dia por 10 dias {enter}
Return

::deslo:: Desloratadina 5mg  __________ 10 Cps {enter} Tomar 1 cp ao dia por 10 dias {enter}
Return

::soror:: Soro de reidratação oral  __________ 5 envelopes {enter} Tomar 1 litro de soro por dia, durante 5 dias {enter}
Return

::entero:: Enterogermina __________ 1 cx {enter} Tomar 1 flaconete de 12 em 12 horas por 5 dias {enter}
Return

::bromo:: Bromoprida 10mg  __________ 1 cx {enter} Tomar 1 cp de 8/8 horas, se náusea ou vômito {enter}
Return

::plasil:: Metoclopramida 10mg  __________ 1 cx {enter} Tomar 1 cp de 8/8 horas, se náusea ou vômito {enter}
Return

::vonau:: Ondasentrona 8mg  __________ 1cx {enter} Tomar 1 cp de 8/8 horas, se náusea ou vômito {enter}
Return

::tobra:: Tobramicina colírio __________ 1 frasco {enter} Aplicar 1 gota em cada olho de 4 em 4 horas, por 5 dias {enter}
Return

::ciprocolirio:: Ciprofloxacino colírio __________ 1 frasco {enter} Aplicar 1 gota em cada olho de 4 em 4 horas, por 5 dias {enter}
Return

::ciprooto:: Ciprofloxacina otológica __________ 1 frasco {enter} Aplicar 5 gotas em cada ouvido de 6 em 6 horas por 7 dias {enter}
Return

::betnovate::  Oto Betnovate __________ 1 frasco {enter} Aplicar 5 gotas no ouvido afetado de 12/12 horas por 7 dias {enter}
Return

::cerumin:: Cerumin __________ 1 frasco {enter} Aplicar 5 gotas em cada ouvido de 6 em 6 horas por 7 dias {enter}
Return

::hexomedine:: Hexomedine spray __________ 1 frasco {enter} Aplicar na boca 4 vezes ao dia, antes dos alimentos {enter}
Return

::malvatricin:: Malvatricin spray __________ 1 frasco {enter} Aplicar na boca 4 vezes ao dia, antes dos alimentos {enter}
Return

::minilax:: Minilax __________ 1 tubo {enter} Aplicar, via retal, todo o conteúDo da embalagem {enter}
Return

::ceto:: Cetoprofeno 100mg __________ 10 cps {enter} Tomar  1cp de 12/12 horas, por 5 dias {enter}
Return

::ibup:: Ibuprofeno 600mg __________ 15 cps {enter} Tomar  1cp de 8/8 horas, por 5 dias {enter}
Return

::melox:: Meloxicam 15mg __________ 10 cps {enter} Tomar  1cp ao dia, por 10 dias {enter}
Return

::celecox:: Celecoxibe 200mg __________ 10 cps {enter} Tomar  1cp de 12/12 horas, por 5 dias {enter}
Return

::paco:: Paco (500+30)mg __________ 2 Cxs {enter} Tomar  1cp de 8/8 horas, se dor forte {enter}
Return

::tramal:: Tramadol 50mg __________ 2Cxs {enter} Tomar  1cp de 12/12 horas, se dor forte {enter}
Return

::dipro:: Diprospan __________ 1 ampola {enter} Aplicar im dose única {enter}
Return

::inda:: Indapamida 1,5mg __________ Contínuo {enter} Tomar  1cp de manhã {enter}
Return

::olme:: Olmesartana 40mg __________ Contínuo {enter} Tomar  1cp de manhã {enter}
Return

::olmeh:: Olmesartana + Hidroclorotiazida (40+25)mg __________ Contínuo {enter} Tomar  1cp de manhã {enter}
Return

::clomi:: Clomipramina 25mg __________ 60cps {enter} Tomar  1cp a noite {enter}
Return

::eso:: Esomeprazol 40mg __________ 60cps {enter} Tomar  1cp em jejum {enter}
Return

::voex:: Vortioxetina (Voextor, Brintellix, Vurtuoso) 5mg __________ 60cps {enter} Tomar  1cp ao dia {enter}
Return

::buscop:: Escopolamina 10mg __________ 1Cxs {enter} Tomar  1cp de 8/8 horas, se cólica {enter}
Return

::meclin:: Meclin 25mg __________ 1Cxs {enter} Tomar  1cp de 12/12 horas, se crise de labirintite {enter}
Return

::luftal:: Simeticona 125mg __________ 1Cxs {enter} Tomar  1cp de 8/8 horas, se cólica {enter}
Return

::metil:: Metildopa 250mg __________ Contínuo {enter} Tomar  1cp de 8/8 horas {enter}
Return

::hidrala:: Hidralazina 25mg __________ Contínuo {enter} Tomar  1cp de manhã {enter}
Return

::neba:: Neomicina + Bacitracina pomada: 1 tubo {enter} Aplicar na região afetada de 12/12 horas por 7 dias {enter}
Return

::trok:: Cetoconazol + Betametasona creme: 1 tubo {enter} Aplicar na região afetada de 12/12 horas por 7 dias {enter}
Return

::dexam:: Dexametasona creme: 1 tubo {enter} Aplicar na região afetada de 12/12 horas por 7 dias {enter}
Return

::deso:: Desonida creme: 1 tubo {enter} Aplicar na região afetada uma vez ao dia por 7 dias {enter}
Return

::sulprata:: Sulfadiazina de Prata 1% pomada: 1 tubo {enter} Aplicar na região afetada de 12/12 horas por 7 dias {enter}
Return

::gestafol:: – ÁCIDO FÓLICO 0,2mg/ml – SOLUÇÃO ORAL __________ Contínuo {enter} Tomar 40 (quarenta) gotas 1x ao dia, 30 minutos antes Do almoço. {enter}  {enter} – BROMOPRIDA 10MG __________ 1CX {enter} Tomar 01 comprimido de 8/8hs 30 minutos antes das refeições. {enter}  {enter} – PARACETAMOL 500 MG __________ 2 CXS {enter} Tomar 01 comprimido de 8/8hs se dor de cabeça. {enter}  {enter} USO TÓPICO {enter}  {enter} – Repelente __________ 02 frascos {enter}  {enter} Aplicar nas áreas expostas Do corpo, entre o amanhecer e a hora de dormir; {enter} Reaplicar de acordo com os intervalos recomendados nas instruções de uso; {enter} Caso use protetor solar, aplique o protetor antes e o repelente depois; {enter} Não aplicar na região dos olhos, narinas e boca; {enter} Não dormir com repelente, {enter} Não utilizar se a pele estiver irritada ou lesionada; {enter} Não aplicar por baixo de roupas; {enter} Em caso de intoxicação e/ou reação adversa, procurar a UBS mais próxima. {enter}  {enter} OBSERVAÇÃO: Não tomar o Ácido Fólico com leite. {enter} De preferência ingerir com suco rico em Vitamina C (Laranja, Limão, Acerola) {enter}
Return

::ferro::  – Sulfato Ferroso 40mg __________ Contínuo {enter} 1 cp, 30 min. antes Do almoço, da 20ª semana de gestação a 3 meses Do pós parto. {enter}
Return

::ivas1:: – Dipirona 500mg __________ 20 cps {enter} Tomar 1 cp de 6/6 horas se dor ou febre. {enter}  {enter} – Prednisona 20mg __________ 10 cps {enter} Tomar 2 cps de manhã por 5 dias. {enter}  {enter} – Acebrofilina 50 mg/5ml __________ 1 frasco {enter} Tomar 10 ml de 12/12 horas por 5 dias. {enter}  {enter} – Soro fisiológico 0,9% __________ 1 frasco {enter} Lavar As narinas de 4/4 horas. {enter}
Return

::ivas2:: – Dipirona 500mg __________ 20 cps {enter} Tomar 1 cp de 6/6 horas se dor ou febre. {enter}  {enter} – Loratadina 10mg __________ 10 cps {enter} Tomar 1 cp de 12/12 horas por 5 dias. {enter}  {enter} – Soro fisiológico 0,9% __________ 1 frasco {enter} Lavar As narinas de 4/4 horas. {enter}
Return

::gea:: – Soro de reidratação oral __________ 10 envelopes {enter} Tomar 1 litro de soro ao dia, durante 5 dias. {enter}  {enter} – Enterogermina __________ 1 cx {enter} Tomar 1 flaconete de 12/12 horas por 5 dias. {enter}  {enter} – Bromoprida 10mg __________ 1 cx {enter} Tomar 1 CP de 8/8 horas, se náusea ou vômitos. {enter}  {enter} – Dipirona 500mg __________ 20 cps {enter} Tomar 1 CP de 6/6 horas se dor ou febre. {enter}
Return

::deng:: Dipirona 500mg __________ 20cps {enter} Tomar 1cp de 6/6 horas se dor ou febre {enter}  {enter} Bromoprida 10MG __________ 1cx {enter} Tomar 1cp de 8/8hs se náusea ou vômito. {enter}  {enter} Soro de reidratação oral __________ 10 envelopes {enter} Tomar 1 litro de soro ao dia, durante 5 dias. {enter}  {enter} Hidratação abundante {enter}  {enter} Sinais de alarme - ATENÇÃO {enter}  {enter} Caso apresente algum dos seguintes sintomas, procure imediatamente assistência médica: {enter} Dor abdominal forte e constante. {enter} Vômitos frequentes. {enter} Sinais de líquidos se acumulando no corpo. {enter} Sensação de desmaio ou tontura ao levantar. {enter} Sonolência ou irritabilidade contínuos. {enter} Sangramentos em gengivas, nariz ou outras mucosas. {enter} Redução na quantidade de urina. {enter} Diminuição da temperatura corpórea. {enter} Dificuldade para respirar. {enter}
Return

::tadala:: FENTOLAMINA 1,25 MG/ML {enter} TADALAFILA 40 MG/ML {enter} ARGININA 0,1 MG/ML {enter} IOMBINA 0,1 MG/ML  {enter} BROMOPRIDA 2 MG/ML    {enter} BROMOPRIDA 2 MG/ML  __________ 14ML  {enter} 1 JATO SUBLINGUAL UMA VEZ AO DIA {enter}
Return

::pedgea:: – Soro de reidratação oral __________ 10 envelopes {enter} Tomar 1 litro de soro ao dia, durante 5 dias. {enter}  {enter} – Enterogermina __________ 1 cx {enter} Tomar 1 flaconete de 12/12 horas por 5 dias. {enter}  {enter} – Bromoprida 4mg/ml __________ 1 frasco {enter} Tomar     gotas de 8/8 horas, se náusea ou vômitos. {enter}  {enter} – Dipirona 500mg/ml __________ 1 frasco {enter} Tomar    gotas de 6/6 horas se dor ou febre. {enter}
Return

::peg:: PEG 4.000 sem eletrólitos __________ Contínuo {enter} Diluir 40gramas (2 colheres de sopa) em um copo de água, e tomar uma vez ao dia  {enter}
Return

::cov19:: PaxlovidTM (Nirmatrelvir + Ritonavir) __________ 10cps {enter} Tomar 2 cps de Nirmatrelvir mais 1 cp de Ritonavir, *juntos*, de 12/12 horas por 5 dias. {enter} {Iniciar somente se até 5 dias do início dos sintomas.} {enter}  {enter} Dipirona 500mg __________ 20 cps {enter} Tomar 1 CP de 6/6 horas se dor ou febre. {enter}  {enter} Bromoprida 10MG __________ 1cx {enter} Tomar 1cp de 8/8hs se náusea ou vômito. {enter}  {enter} Sinais de alarme - ATENÇÃO {enter}  {enter} Caso apresente algum dos seguintes sintomas, procure imediatamente assistência médica: {enter} Falta de ar; {enter} Respiração rápida/ ofegante; {enter} Febre persistente; {enter} Dor forte/ dor súbita. {enter} Caso esses sintomas ocorram, retornar para reavaliação, {enter} ou procurar o pronto atendimento. {enter}
Return