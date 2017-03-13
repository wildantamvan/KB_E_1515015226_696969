/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  title,author = symbol /*dibagian domain dideklarasikan bahwa variable title dan author menggunakan tipe data symbol sedangkan
  tipe data unsigned akan dipakai oleh variable pages */
  pages        = unsigned

predicates
  book(title,pages) - nondeterm (i,o) /*kemudia dipredicate difilter bahwa book hanya berisi 2 parameter dengan  input dan output */
  written_by(author,title) - nondeterm (o,o) /*kemudian di relasi written_by ada variable author dan title yang berupa output output */
  long_novel(title) - nondeterm (o) /*disini ada relasi long novel dengan 1 parameter bervariable title jenis output */

clauses
  written_by(fleming,"DR NO"). /*disini disampaikan bahwa relasi writtenby berisi nama penulis dan karyanya, untuk fleming menulis
   dr no dan melville menulis moby dick */
  written_by(melville,"MOBY DICK").

  book("MOBY DICK",250). /* kemudian direlasi book karya tulis moby dick memiliki parameter pages bernilai 250 sedangkan parameter
   pages milik dr no bernilai 310 */
  book("DR NO",310).

  long_novel(Title):- /*aturannya adalah relasi longnovel harus memiliki nilai variable title yang terdaftar di relasi written_by
  dan terdaftar di relasi book parameter 1 lalu variable length rujukan relasi book tadi syaratnya harus bernilai lebih dari 300 */
	written_by(_,Title),
	book(Title,Length),
	Length > 300.

goal
  long_novel(X).
/* maka goalnya adalah mencari variable parameter relasi long novel yang pantas dimana syaratnya harus terdaftar di relasi diatas
dan memiliki nilai variable length lebih dari 300 */