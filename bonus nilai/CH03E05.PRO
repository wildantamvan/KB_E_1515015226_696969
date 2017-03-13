/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  isletter(char) - nondeterm (i) /*disini dideklarasikan bahwa relasi isletter akan menggunakan tipedata char yang hanya menggunakan
  1 parameter */

clauses
/* When applied to characters, '<=' means */
/* "alphabetically precedes or is the same as" */
  isletter(Ch):- /*disini adalah deklarasi aturan bahwa a dan A adalah nilai terkecil atau batas awal dari huruf yang dapat dimuat
  variable Ch dan batas akhir adalah z dan Z */
	'a' <= Ch,
	Ch <= 'z'.
  isletter(Ch):-
	'A' <= Ch,
	Ch <= 'Z'.

goal
  isletter('x'). /* kemudian goalnya adalah menanyakan apakah x termasuk bagian dari huruf antara a atau A sampai z atau Z */