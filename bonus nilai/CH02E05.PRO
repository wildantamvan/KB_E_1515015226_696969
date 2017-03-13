/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  car(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i) /* disini relasi car dideklarasi bahwa parameternya akan berisi
  5 parameter berupa symbol,long,integer,symbol,long */
  truck(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i) /* disini relasi truck dideklarasi bahwa parameternya akan berisi
  5 parameter berupa symbol,long,integer,symbol,long */
  vehicle(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
/* disini relasi vehicle dideklarasi bahwa parameternya akan berisi
  5 parameter berupa symbol,long,integer,symbol,long */
  
  
  
clauses
  car(chrysler,130000,3,red,12000).
  car(ford,90000,4,gray,25000).
  car(datsun,8000,1,red,30000). /* disini relasi car parameternya diisikan fakta bahwa mobil ada berupa chrysler ford
   dan datsun dengan spesifikasi masing, karena tidak di deklarasikan di domain maka variabel parameter sedikit sulit
   dipahami */

  truck(ford,80000,6,blue,8000).
  truck(datsun,50000,5,orange,20000).
  truck(toyota,25000,2,black,25000).
  /* disini relasi truck parameternya diisikan fakta bahwa truk ada berupa ford toyota
   dan datsun dengan spesifikasi masing, karena tidak di deklarasikan di domain maka variabel parameter sedikit sulit
   dipahami */

  vehicle(Make,Odometer,Age,Color,Price):- /* disini tipe data sudah diganti dengan variabel sehingga mudah dipahami
  bagian sini berupa pembuktian yang nanti akan melakukan pengecekan data pada clauses diatas */
	car(Make,Odometer,Age,Color,Price);
	truck(Make,Odometer,Age,Color,Price). /* syarat menjadi vehicle, car atau truck yaitu punya parameter dengan jumlah
	yang sama dan tipe data yang cocok */

goal
  car(Make,Odometer,Years_on_road,Body,25000). /*goal nya adalah mencari mobil yang memiliki parameter price bernilai 25000 */
