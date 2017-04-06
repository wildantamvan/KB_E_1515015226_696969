domains
  orang                          = orang(nama,alamat)   
  nama                           = nama(pertama,kedua)  .
   alamat                         = alamat(jalan,kota_kab,propinsi)   
   jalan                          = jalan(nama_jalan,nomor)   
   kota_kab,propinsi,nama_jalan  = string   /*objek tunggal */
   pertama,kedua                 = symbol   
   nomor                          = integer
   
    
  GOAL  
  
   P1 = orang(nama(diena,fatihah),
  alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY"));
  
 
  	 P2 = orang(nama(nur,fatihah),
  alamat(jalan("rudi sarbudi", 22), "rubah", "Do it Yours")).
    
 /* P1 = orang(nama(diena,fatihah),Alamat),   
  P2 = orang(nama(nur,fatihah),Alamat).   
 */   
  %write(P1,"\n",P2),nl.
   /* write("P1=",P1),nl,   
    write("P2=",P2),nl.*/ 