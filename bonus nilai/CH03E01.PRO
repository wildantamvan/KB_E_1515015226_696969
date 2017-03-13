/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  product,sum = integer /*disini adalah domains tempat mendeklarasikan variable khusus yang nanti disimpan predicates
  keuntungan kita menyimpan di domains yaitu jika tipe data sama namun sudah dideklarasikan di domain dengan variabel berbeda
  maka program akan menotice jika terjadi penukaran posisi parameter */

predicates
  add_em_up(sum,sum,sum) - procedure (i,i,o) /* disini dideklarasikan predikatnya untuk dipakai di clause nanti bahwa variable
  sum dan product hanya memakai tipe data integer */
  multiply_em(product,product,product) - procedure (i,i,o)

clauses
  add_em_up(X,Y,Sum):- /*disini berisi rumus bahwa relasi add_em_up menggunakan tiga variable dimana parameter ke tiga
  akan melakukan penjumlahan dari parameter x dan y */
	Sum=X+Y.
  multiply_em(X,Y,Product):- /*sedangkan untuk relasi multiply_em sama saja dengan diatas hanya saja untuk parameter product
  berfungsi untuk mengalikan variable x dgn y */
	Product=X*Y.

goal
  add_em_up(32,54,Sum). /* goalnya yaitu hanya menggunakan relasi add_em_up dan mencari nilai sum dimana nilai sum didapat dari
  penjumlahan nilai parameter ke 1 dan parameter 2 */
