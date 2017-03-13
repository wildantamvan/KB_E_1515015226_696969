/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

nowarnings	% Special compiler directive; ignore for the moment

predicates
  run - nondeterm () /* disini dideklarasikan bahwa relasi run sudah nondeterm diawal sehingga tidak perlu definikan input output
  diakhir satu persatu */

clauses
  run:-
	write("*************** Hello World Program **********************"),nl, /*disini ada clause run pertama yang akan 
	ngeprint hello world first kemudian endline untuk menerima inputan karakter apa saja, yang bisa dilihat dari parameter
	anonimus */
	write("Hello World (first)"),nl,
	readchar(_).

  run:-
	write("Hello World (second)"),nl, /*disini adalah clause run kedua yang akan 
	ngeprint hello world second kemudian endline untuk menerima inputan karakter apa saja, yang bisa dilihat dari parameter
	anonimus */
	readchar(_). 
	
goal	
  run.	/* This is an internal goal. */
/* goalnya sendiri adalah membuktikan apakah program bisa dirun, program akan melakukan trace back dari bawah ke atas,
makin keatas maka fungsi dianggap terbaru dan dijalankan */