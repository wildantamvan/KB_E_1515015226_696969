/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  likes(symbol,symbol) - nondeterm (i,o) /*disini ada relasi like yang dideklarasikan memiliki 2 isian parameter bertipe data symbol symbol
  sedangkan relasi tastes memiliki karakteristik serupa dengan likes sedangkan food hanya memiliki satu parameter yang bertipe data
  symbol */
  tastes(symbol,symbol) - nondeterm (i,i)
  food(symbol) - nondeterm (o)

clauses
  likes(bill,X):- /*aturannya untuk membuktikan bahwa bill suka sesuatu maka variable X tadi harus merupakan bagian dari paramete
  food dan merupakan bagian dari parameter pertama relasi taste */
	food(X),
	tastes(X,good).

  tastes(pizza,good).
  tastes(brussels_sprouts,bad). /*disini relasi taste memiliki jenis makanan berupa pizza dan brussels dengan string parameter
  kedua bernilai good dan bad */

  food(brussels_sprouts). /*sedangkan parameter food hanya menyediakan makanan dengan jenis brusselssprout dan pizza */
  food(pizza).

goal
  likes(bill,What).
	/* goalnya adalah mencari nilai yang cocok untuk mengisi variable what dari relasi likes dengan parameter pertama berupa
	dengan syarat makanannya harus memiliki parameter kedua berisi good pada relasi tastes dan tersedia di relasi food */