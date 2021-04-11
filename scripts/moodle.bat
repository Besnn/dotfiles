 @echo off
 
 set analisi_mat=https://e-l.unifi.it/course/view.php?id=13330
 set algebra=https://e-l.unifi.it/course/view.php?id=10420
 set analisi_num=https://e-l.unifi.it/course/view.php?id=12171
 set fond_info=https://e-l.unifi.it/course/view.php?id=11232
 set prog=https://e-l.unifi.it/course/view.php?id=10575
 set fisica1=https://e-l.unifi.it/course/view.php?id=11502
 set teoria_circ=https://e-l.unifi.it/course/view.php?id=20398
 set lab_prog=https://e-l.unifi.it/course/view.php?id=14899
 set fond_ric_op=https://e-l.unifi.it/course/view.php?id=14647
 set analisi_prob=https://e-l.unifi.it/course/view.php?id=14587
 set calcolatori=https://e-l.unifi.it/course/view.php?id=18420
 set fond_sign_trans=https://e-l.unifi.it/course/view.php?id=15015
 set prog_concorr=https://e-l.unifi.it/course/view.php?id=17752
 set fond_ret=https://e-l.unifi.it/course/view.php?id=19844
 set fond_aut=https://e-l.unifi.it/course/view.php?id=20446
 set sys_op=https://e-l.unifi.it/course/view.php?id=20899
 set algoritmi=https://e-l.unifi.it/course/view.php?id=20730
 
 if "%1"=="" echo course abbrv. not given
 if "%1"=="am1" start %analisi_mat%
 if "%1"=="alg" start %algebra%
 if "%1"=="cnm" start %analisi_num%
 if "%1"=="fin" start %fond_info%
 if "%1"=="prg" start %prog%
 if "%1"=="f1" start %fisica1%
 if "%1"=="tdc" start %teoria_circ%
 if "%1"=="lprg" start %lab_prog%
 if "%1"=="fro" start %fond_ric_op%
 if "%1"=="am2" start %analisi_prob%
 if "%1"=="calc" start %calcolatori%
 if "%1"=="fst" start %fond_sign_trans%
 if "%1"=="prgc" start %prog_concorr%
 if "%1"=="frt" start %fond_ret%
 if "%1"=="faut" start %fond_aut%
 if "%1"=="so" start %sys_op%
 if "%1"=="ast" start %algoritmi%
 if "%1"=="help" (
 echo Course                                 Abbrv.
 echo Analisi Matematica                     am1
 echo Algebra Lineare E Geometria            alg
 echo Fisica 1                               f1
 echo Fondamenti di Informatica              fin
 echo Calcolo Numerico                       cnm
 echo Programmazione                         prg
 echo Laboratorio di Programmazione          lpg or lprg
 echo Teoria dei Circuiti                    tdc
 echo Fondamenti di Segnale e Trasmissione   fst
 echo Calcolatori                            calc
 echo Analisi Matematica 2 E Probabilità     am2 or prob
 echo Fondamenti di Ricerca Operativa        fro
 echo Programmazione Concorrente             prgc
 echo Fondamenti di Reti di Telecomuncazioni frt
 echo Fondamenti di Automatica               faut
 echo Sistemi Operativi                      so
 echo Algoritmi e Strutture Dati             alg
 )
