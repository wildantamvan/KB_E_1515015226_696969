/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  child = symbol /*disini dideklarasikan bahwa tipe data symbol digunakan child sedangkan variable age menggunakan tipe data integer */
  age   = integer

predicates
  player(child,age) - nondeterm (o,i), nondeterm (i,i) /*predikat player memiliki parameter 2 yaitu child dan age dimana ada dua jenis
  yaitu output input dan input input */

clauses
  player(peter,9). /*relasi player menyediakan String untuk variable player yaitu peter, paul, chris dan susan dimana hanya paul
  yang berparameter age bernilai 9 */
  player(paul,10).
  player(chris,9).
  player(susan,9).

goal
  player(Person1,9), /* goalnya adalah mencari nilai person1 dan person2 yang bisa dipasang2kan dimana person1 dan person2 bukan
  orang yang sama */
  player(Person2,9),
  Person1 <> Person2.
