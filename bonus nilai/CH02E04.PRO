/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  male(symbol) - nondeterm (o) /* disini menentukan tipe data untuk paramater dari tiap2 relasi baris ini untuk fakta male */
  female(symbol) - nondeterm (o) /*yang ini untuk fakta female */
  parent(symbol,symbol) - nondeterm (o,o) /*yang ini untuk relasi parent */

clauses
  male(bill). /*disini deklarasi fakta bahwa bill adalah male dan joe juga male */
  male(joe).

  female(sue). /*sedangkan yang ini untuk fakta female ada dua orang yaitu sue dan tammy */
  female(tammy).

  parent(bill,joe). /*untuk yang ini relasi parent bahwa bill ortunya joe, sue ortunya joe, dan joe ortunya tammy */
  parent(sue,joe).
  parent(joe,tammy).

goal
  parent(Parents,_). /* karena variabel yang digoalkan hanya parents sedangkan variabel anak sebelah kanan di anonimus kan
  maka hanya parameter parents yang dimunculkan nilainya */
