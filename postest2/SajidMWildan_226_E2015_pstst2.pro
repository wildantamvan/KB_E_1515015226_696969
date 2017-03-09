PREDICATES
nondeterm anak(symbol, symbol)
nondeterm istri(symbol, symbol)
nondeterm pria(symbol)
nondeterm wanita(symbol)
nondeterm usia(symbol, integer)
nondeterm ibu(symbol,symbol)
nondeterm cucu(symbol,symbol)
nondeterm kakek(symbol,symbol)
nondeterm adik(symbol,symbol)             /* kita deklarasikan tipedata dan relasi diatas sini */



CLAUSES
anak (jhon, james).
anak (james, peter).
anak (sue, ann).		/* ini untuk relasi anak dimana paramater sebelah kiri adalah anak dan parameter sebelah
						kanan adalah ortu */

istri (mary, peter).
istri (ann, james)./* ini untuk relasi istri dimana paramater sebelah kiri adalah istri dan parameter sebelah
						kanan adalah suami */

 
pria (jhon).	
pria (james).
pria (peter).		/* ini untuk fakta pria dimana paramater merupakan subjek yang bergender pria */


wanita (mary).
wanita(sue).
wanita(nn).		/* ini untuk fakta wanita dimana paramater merupakan subjek yang bergender wanita */


usia(jhon, 10).
usia(sue, 13).		/* ini untuk relasi usia dimana paramater sebelah kanan adalah individunya
				dan parameter sebelah kiri merupakan angka yang menunjukkan umur dari individu diparameter
				sebelah kiri */


 ibu(Ibu,Anak):- istri(Ibu,_), anak(Anak,Ibu); istri(Ibu,Ayah), anak(Anak,Ayah).
 
  /* ini adalah pembuktian dimana ibu pasti memiliki anak dengan syarat anaknya merupakan anak dari seorang ibu
  dan ibu merupakan seorang istri dari suami yang dilambangkan dengan variabel onanimous atau ibu adalah istri dari seorang
  ayah dan anak merupakan anak dari seorang ayah */

 
 cucu(Cucu,Kakek):- anak(Cucu,Ayah), anak(Ayah,Kakek); anak(Cucu,Ibu), istri(Ibu,Ayah), anak(Ayah,Kakek).
 /* ini adalah pembuktian dimana untuk menjadi seorang cucu dia pasti memiliki kakek, syaratnya yaitu cucu itu pernah menjadi
 seorang anak dari ayah dan ayah tersebut pernah memiliki ayah juga yang divariabelkan menjadi kakek atau cucu itu pernah
 menjadi anak dari seorang ibu dan si ibu pernah menjadi istri seorang ayah dan si ayah pernah menjadi anak dari seorang kakek */

 kakek(Kakek,Cucu):- anak(Cucu,Ayah), anak(Ayah,Kakek); anak(Cucu,Ibu), istri(Ibu,Ayah), anak(Ayah,Kakek).
 /* iniadalah pembuktian dimana untuk menjadi seorang kakek pernah punya cucu dengan syarat si cucu merupakan anak dari seorang
  ayah dan ayah pernah menjadi anak seorang ayah yang divariabelkan menjadi kakek, atau cucu pernah menjadi anak seorang ibu
  dan ibu merupakan istri dari seorang ayah dan ayah pernah menjadi anak seorang kakek */
 
 adik(Adik,Kakak):- istri(Istri,Suami), anak(Adik,Suami), anak(Kakak,Istri), usia(Kakak,Usiakakak), usia(Adik,Usiaadik), Usiaadik<Usiakakak.
/* ini adalah pembuktian dimana untuk menjadi seorang adik harus pernah punya kakak, pembuktiannya adalah bahwa ada istri yang 
memiliki suami dan si adik maupun kakak pernah menjadi anak dari kedua ortu, lalu usia mereka dibandingkan yang lebih rendah
nilai umurnya maka dia adalah seorang adik*/
 




goal
adik(Adik,Kakak); /* disini value adik dan kakak akan dimuncul kan kelayar sebagai goal dari pertanyaan */
ibu(Ibu,Anak);	/* disini value ibu dan anak akan dimuncul kan kelayar sebagai goal dari pertanyaan */
cucu(Cucu,Kakek); /* disini value cucu dan kakek akan dimuncul kan kelayar sebagai goal dari pertanyaan */
 kakek(Kakek,Cucu). /* disini value kakek dan cucu akan dimuncul kan kelayar sebagai goal dari pertanyaan */
