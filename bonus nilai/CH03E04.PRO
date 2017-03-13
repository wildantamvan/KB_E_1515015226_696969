/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  phone_number(symbol,symbol) - nondeterm (i,o) /*disini ada predikat yang mendeclare relasi phone number yang akan menggunakan
  2 parameter dengan tipe data keduanya adalah symbol */

clauses
  phone_number("Albert","EZY-3665"). /* kemudian di klausa relasi phone number ada 4 relasi dengan nomor berbeda dari 4 orang
  berbeda */
  phone_number("Betty","555-5233").
  phone_number("Carol","909-1010").
  phone_number("Dorothy","438-8400").

goal
  phone_number("Carol",Number). /*goalnya adalah mencetak nilai parameter ke dua bervariable number dari relasi 
  phone number yang memiliki parameter pertama bernilai carol */
	