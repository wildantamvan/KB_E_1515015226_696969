domains
nama=symbol /*deklarasikan dulu domainnya kita pakai variabel bernama nama, matkul, dan nilmk*/
matkul=symbol
nilmk=symbol

predicates
nondeterm mk(nama,matkul,nilmk) /*lalu kita deklarasikan relasi mk berisi sepaket nama, matkul dan nilainya*/
nondeterm tidaklulus(nama,matkul,nilmk) /*kita deklarasikan juga relasi tertentu untuk orang2 yg tidak lulus dengan
parameter yang sama seperti diatas*/

clauses
mk("supardi","ai",a). mk("suradi","ai",b). mk("suyatmi","ai",c). mk("suparni","ai",d). mk("sujiman","ai",c).
mk("suharto","pde",b). mk("sudirman","pde",c). mk("supardi","pde",c). mk("suyatmi","pde",b). mk("sutini","pde",d).
mk("suharto","so",b). mk("sutini","so",a). mk("supardi","so",a). mk("suparni","so",b). mk("suripah","so",c).
/*disini kita berikan fakta pada relasi mk tentang data nama mhs, matkul yg diambil serta nilai mereka*/


tidaklulus(Nama,Matkul,nilmk):- /*mahasiswa dinyatakan tidak lulus jika pada relasi mk terdapat nilai d pada parameter ke 3*/
mk(Nama,Matkul,d).
goal
write("jawaban bagian A"),nl, /*untuk goal a kita mencari isian parameter ke dua tanpa perduli dengan parameter ke 3*/
mk(supardi,Matakuliah_yangdiambilsupardi,_);
write("jawaban bagian C"),nl, /*untuk jawaban c kita mencari mahasiswa yang terdapat direlasi tidak lulus di section clause*/
tidaklulus(Nama,Matkul,_);
write("jawaban bagian B"),nl,/*untuk mencaritahu apakah suripah ikut kuliah kita cari relasi yang mengandung kata suripah
pada parameter pertama tanpa memperhatikan isi parameter ke dua dan ketiga*/
write("apakah suripah ikut kuliah semester ini"),

mk(suripah,_,_).

