PREDICATES   
faktorial(unsigned,real) /*disini kita daftarkan di predikat tipe data yang akan dipakai parameter
faktorial, yaitu unsigned dan real */  
faktorial(unsigned,real,unsigned,real) /* sedangkan disini kita deklarasikan tipe data dari
masingmasing parameter yaitu kita gunakan unsigned, real, unsigned, dan real, 

untuk tipe data unsigned dan real mereka tidak akan menerima bilangan dibawah 0*/  
CLAUSES   
faktorial(N,FaktoN):-  
faktorial(N,FaktoN,1,1).   
  faktorial(N,FaktoN,N,FaktoN):-!. /*disini kita pakai predikat cut untuk mencegah terjadinya lacak balik
ke atas tanda ! ini jadi perulangan hanya terjadi disini dan kebawah
kecuali statement menemui kondisi looping ke depan dan nilai hanya bersisa 1 maka akan menuju goal
 */   
  faktorial(N,FaktoN,I,P):-  IBaru = I+1, /* dia akan memasukkan nilai n yaitu 3, dimana p bisa ditemukan nilainya
  jika Ibaru adalah i+1 dan PBaru=P*Ibaru yg kita tambahkan tadi lakukan terus penjumlahannya sampai menyentuh angka di parameter
  faktorial yaitu 1 */
  PBaru = P*IBaru, /* kita kalikan terus menerus */  
  faktorial(N, FaktoN, IBaru, PBaru). /*jika nilai faktorial disini sudah sesuai faktorial baris kedua dibawah clauses maka
  program selesai */ 
GOAL   
faktorial(4,X).  /*		4*3*2*1 			*/