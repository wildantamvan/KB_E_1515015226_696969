domains
amplop = integer /*disini kita deklarasikan tipe data yang akan dipakai variabel sehingga dibagian predicates kita
langsung panggil si variabel bukan tipe data nya didalam parameter relasi, gunanya menghindari posisi tertukar */
umur = byte
pelaku,hidangan = symbol

predicates 
sumbangan(amplop,amplop,amplop) - procedure (i,i,o) /*disini kita deklarasikan relasi yang akan dipakai di clausa
bisa kita spesifikan di bagian procedure atau kita langsung beri non determ dibawah */
nomorantrian(char) - nondeterm (i)
bisasunat(umur)- nondeterm(o)
nondeterm makanan(hidangan)
tempatacara(symbol,symbol) - nondeterm (o,i)
menyunat(pelaku,pelaku) - nondeterm (o,i)
compile - nondeterm ()

clauses 
sumbangan(Darisuami,Dariistri,Amplop):- /*disini kita deklarasikan bahwa sumbangan akan menerima nilai dari variabel
'dari suami', dan 'dari istri' yang akan disatukan dan dijumlahkan ke dalam variabel amplop */
Amplop=Darisuami+Dariistri.
bisasunat(14). /*fakta bahwa umur rata2 minimal bisa sunat adalah 14 tahun */
tempatacara("kantor mantri","dilapangan"). /*tempat acara kita sediakan 3 nilai berbeda seperti saya deklarasikan
dibawah */
tempatacara("dirumah","dikamar").
tempatacara("dirumahsakit","dipembaringan").
nomorantrian(No):- /*nomor kita bagi antara 1 sampai 5 dengan 6 sampai 9 */
'1'<=No, No <='5'.
nomorantrian(No):-
'6' <= No, No <= '9'.

menyunat(mantri,radit). /*penyunat profesional yang tersedia ada pak mantri dan pak dokter dengan pasien yang berbeda */
menyunat(dokter,dodit).
makanan(soto). /*hidangan untuk tamu ada soto dan nasi kuning */
makanan(nasikuning).
compile:-
write("============== Selamat sunat =============="),nl, /*write seperti printf dan readchar seperti scanf, karena readchar
pakai variabel anonimus maka inputan readchar tidak dianggap */
write("Enaakk???"),nl,
readchar(_).

goal
sumbangan(5000,7000,Amplops), bisasunat(Umurstandar),nomorantrian('3'),menyunat(Siapa,dodit), /*disini goalnya kita mencari
sumbangan dari bapak dan ibu serta umur minimal bisa sunat, kebenaran nomor antrian, ahli jagal sunat dan lokasi sunat serta 
makanan yang tersedia untuk tamu */
tempatacara(Lokasi,"dipembaringan"),nomorantrian('3'),makanan(Hidangan),
compile.