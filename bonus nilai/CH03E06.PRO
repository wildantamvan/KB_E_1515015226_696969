/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E06.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  person = symbol /*disni adalah deklarasi bahwa variable person akan menggunakan tipe data symbol */

predicates
  father(person) - nondeterm (o)		/* This person is a father */
  father(person,person) - nondeterm (o,o)	/* One person is the father of the other person */

clauses
  father(Man):- /* kemudian pada aturan ada aturan untuk parameter man agar bisa menjadi seorang ayah bahwa parameter man pernah
  ada didalam relasi father dengan isi 2 parameter dan variable man hanya berisi string berupa adam dan abraham */
	father(Man,_).
  father(adam,seth).
  father(abraham,isaac).

goal
  father(X). /*goalnya yaitu mencari string yang layak untuk mengisi relasi father yang berisi satu parameter */
