/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  brand,color = symbol /* disini domain mendeklarasikan bahwa tipe data symbol digunakan oleh variable brand dan color */
  age = byte /* disini domain mendeklarasikan bahwa tipe data byte digunakan oleh variable age */
  price, mileage = ulong /* disini domain mendeklarasikan bahwa price dan mileage menggunakan tipe data ulong yaitu unsigned long
  yang mampu menyimpan kapasitas cukup besar */

predicates
  car(brand,mileage,age,color,price) - nondeterm (i,i,i,i,i) /* disini mendeklarasikan car bahwa parameter yang digunakan
  brand,mileage,age,color,price*/

clauses
  car(chrysler,130000,3,red,12000). /*kemudian clauses disini hanya memberitahukan bahwa tersedia 3 jenis mobil dengan spesifikasi
  berbeda */ 
  car(ford,90000,4,gray,25000).
  car(datsun,8000,1,black,30000).

goal
 car(renault,13,40000,red,12000). /*goalnya yaitu mencari mobil dengan brand renault yang namun karena tidak tersedia dan
  ada beberapa parameter yang berbeda dengan yang tersedia di clauses maka tidak ada jawaban */
	  