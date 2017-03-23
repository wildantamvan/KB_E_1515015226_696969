DOMAINS 
name ,nama = symbol /*disini domain kita deklarasikan name, nama dan usia
dengan tipedata berbeda serta usia dan tinggi berbeda tipe data */
usia = byte
tinggi = integer
PREDICATES
nondeterm mencari_jodoh(nama) /*kita deklarasikan relasi mencari jodoh, wanita dan profesi */
nondeterm wanita(nama, usia, tinggi)
nondeterm profesi(name,name)
pekerjaan /*disini kita tidak beri nondeterm karena tidak ada
data masuk maupun dikeluarkan */
janda(nama)
CLAUSES 
mencari_jodoh(Nama):-
wanita(Nama, Usia, Tinggi),
Usia<25,
Tinggi>165,
not(janda(Nama)).
wanita("udin",27,162).
wanita("dani",30,175).
wanita("ucok",21,169).
janda("dani").
profesi(eduard,petinju).
pekerjaan:-profesi(A,B),
write(A ," bekerja sebagai seorang ",B ,"\n"),
fail. /*fail memaksa pemeriksaan keatas sekali lagi karena dianggap gagal di
lacak */
pekerjaan.

GOAL
mencari_jodoh(Wanita_terpilih), /*disini kita cari siapa wanita terpilih
dan hasil dari penyataan pekerjaan apakah benar atau tidak */
pekerjaan.
