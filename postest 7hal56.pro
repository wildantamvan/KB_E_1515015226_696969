/* Contoh 4
------------*/
DOMAINS
 integerlist = integer* /*pada domain diberikan tanda asterisk yang menunjukkan bahwa dia bertipe list*/
 PREDICATES
 tambah(integerlist,integerlist,integerlist) /* karena isian parameter menggunakan integerlist semua
 maka parameternya termasuk list */

CLAUSES
 tambah([],List,List). /*di clause tambah pada parameter awal diberi list kosong yang bisa dipakai sewaktu2 */
 tambah([H|L1],List2,[H|L3]):- /*lalu kita pecah menjadi bentuk ekivalen yang lain dimana berdasarkan deklarasi disini
 l3 tidak memiliki vertical bar sehingga dianggap tail sedangkan yang lain masih memiliki vertical bar*/
 tambah(L1,List2,L3).
GOAL
 tambah([1,2,3],[5,6],L). /*karena nilai dari var L di parameter ke 3 sama dengan parameter ke dua yaitu var list dan var list
 lalu pada parameter 2 masih bagian dari head dan tail maka variabel L akan mengeluarkan data head awal yaitu 123 lalu potongan kedua
 yaitu tail bernilai 5 dan 6 lalu nilai mereka semua di record dalam var L */
