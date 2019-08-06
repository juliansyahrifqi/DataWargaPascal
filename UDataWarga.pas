program data_warga;
uses crt,sysutils;

const
     maks=100;

type
    warga=record
          nik      :string;
          nama     :string;
          jkelamin :string;
          tpl      :string;
          agama    :string;
          pend     :string;
          stnikah  :string;
          usia     :integer;
    end; //End record

var
   datawarga  : array[1..maks] of warga;
   banyakdata : integer;

procedure tambahData;
begin
     clrscr;
     if banyakdata < maks then
     begin
          banyakdata := banyakdata+1;
          writeln('Tambah data ke- ',banyakdata);
          writeln('-------------------------------------------------------------');
          writeln();
          write('NIK                            : '); readln(datawarga[banyakdata].nik);
          write('Nama Lengkap                   : '); readln(datawarga[banyakdata].nama);
          write('Jenis Kelamin  [ L / P ]       : '); readln(datawarga[banyakdata].jkelamin);
          write('Tempat Tanggal Lahir           : '); readln(datawarga[banyakdata].tpl);
          write('Agama                          : '); readln(datawarga[banyakdata].agama);
          write('Pendidikan Terakhir            : '); readln(datawarga[banyakdata].pend);
          write('Status Nikah [ Sudah / Belum ] : '); readln(datawarga[banyakdata].stnikah);
          write('Usia                           : '); readln(datawarga[banyakdata].usia);
     end
     else
     begin
          writeln('Data Sudah Maksimum. Silahkan Tekan Enter Untuk Lanjut ! ');
     end;
end;

procedure edit_nik;
var
   f : file of warga;
   r : warga;
   i,jmlh : integer;
   cari : string;
   ketemu : boolean;
   lagi : char;

   begin
        assign(f,'datawarga.dat');
        reset(f);

        jmlh := filesize(f);
        lagi := 'Y';
        while upcase(lagi) = 'Y' do
        begin
             ketemu:=false;
             clrscr;
                    write('NIK yang dicari       : '); readln(cari);
                    writeln;
                    for i:=1 to jmlh do
                        begin
                             seek(f,i-1);
                             read(f,r);
                                 if r.nik=cari then
                                    begin
                                         with r do
                                         begin
                                              ketemu:=true;
                                              writeln('NIK                   : ',r.nik);
                                              writeln('Nama                  : ',r.nama);
                                              write('Edit NIK Menjadi      : '); readln(r.nik);
                                              writeln();
                                              textcolor(lightred);
                                              writeln('Data berhasil di edit. Silahkan keluar terlebih dahulu dan masuk kembali. Terima Kasih ');

                                         end;
                                    end;
                                   seek(f,i-1);
                                   write(f,r);

                        end;
                        if not ketemu then
                           textcolor(lightred);
                           writeln('NIK tidak ditemukan !. Silahkan cek kembali ');
                           writeln();
                           textcolor(white);
                           write('Edit Lagi [ Y / T ] ? '); readln(lagi);

        end;
            close(f);
   end;

procedure edit_nama;
var
   f:file of warga;
   r:warga;
   i,jmlh:integer;
   cari:string;
   ketemu:boolean;
   lagi:char;

   begin
        assign(f,'datawarga.dat');
        reset(f);

        jmlh:=filesize(f);
        lagi:='Y';
        while upcase(lagi)='Y' do
        begin
             ketemu:=false;
             clrscr;
                    write('NIK yang dicari        : '); readln(cari);
                    writeln;
                    for i:=1 to jmlh do
                        begin
                             seek(f,i-1);
                             read(f,r);
                                 if r.nik=cari then
                                    begin
                                         with r do
                                         begin
                                              ketemu:=true;
                                              writeln('NIK                    : ',r.nik);
                                              writeln('Nama                   : ',r.nama);
                                              write('Edit Nama Menjadi      : '); readln(r.nama);
                                              writeln();
                                              textcolor(lightred);
                                              writeln('Data berhasil di edit. Silahkan keluar terlebih dahulu dan masuk kembali. Terima Kasih ');

                                         end;
                                    end;
                                   seek(f,i-1);
                                   write(f,r);

                        end;
                        if not ketemu then
                           textcolor(lightred);
                           writeln('NIK tidak ditemukan !. Silahkan cek kembali ');
                           writeln();
                           textcolor(white);
                           write('Edit Lagi [ Y / T ] ? '); readln(lagi);

        end;
            close(f);
        end;

procedure edit_jkelamin;
var
   f:file of warga;
   r:warga;
   i,jmlh:integer;
   cari:string;
   ketemu:boolean;
   lagi:char;

   begin
        assign(f,'datawarga.dat');
        reset(f);

        jmlh:=filesize(f);
        lagi:='Y';
        while upcase(lagi)='Y' do
        begin
             ketemu:=false;
             clrscr;
                    write('NIK yang dicari            : '); readln(cari);
                    writeln;
                    for i:=1 to jmlh do
                        begin
                             seek(f,i-1);
                             read(f,r);
                                 if r.nik=cari then
                                    begin
                                         with r do
                                         begin
                                              ketemu:=true;
                                              writeln('NIK                        : ',r.nik);
                                              writeln('Nama                       : ',r.nama);
                                              writeln('Jenis Kelamin              : ',r.jkelamin);
                                              write('Edit Jenis Kelamin Menjadi : '); readln(r.jkelamin);
                                              writeln();
                                              textcolor(lightred);
                                              writeln('Data berhasil di edit. Silahkan keluar terlebih dahulu dan masuk kembali. Terima Kasih ');

                                         end;
                                    end;
                                   seek(f,i-1);
                                   write(f,r);

                        end;
                        if not ketemu then
                           textcolor(lightred);
                           writeln('NIK tidak ditemukan !. Silahkan cek kembali ');
                           writeln();
                           textcolor(white);
                           write('Edit Lagi [ Y / T ] ? '); readln(lagi);

        end;
            close(f);
        end;

procedure edit_tpl;
var
   f:file of warga;
   r:warga;
   i,jmlh:integer;
   cari:string;
   ketemu:boolean;
   lagi:char;

   begin
        assign(f,'datawarga.dat');
        reset(f);

        jmlh:=filesize(f);
        lagi:='Y';
        while upcase(lagi)='Y' do
        begin
             ketemu:=false;
             clrscr;
                    write('Nik yang dicari                    : '); readln(cari);
                    writeln;
                    for i:=1 to jmlh do
                        begin
                             seek(f,i-1);
                             read(f,r);
                                 if r.nik=cari then
                                    begin
                                         with r do
                                         begin
                                              ketemu:=true;
                                              writeln('NIK                                : ',r.nik);
                                              writeln('Nama                               : ',r.nama);
                                              writeln('Temat Tanggal Lahir                : ',r.tpl);
                                              write('Edit Tempat Tanggal Lahir Menjadi  : '); readln(r.tpl);
                                              writeln();
                                              textcolor(lightred);
                                              writeln('Data berhasil di edit. Silahkan keluar terlebih dahulu dan masuk kembali. Terima Kasih ');
                                         end;
                                    end;
                                   seek(f,i-1);
                                   write(f,r);
                        end;
                        if not ketemu then
                           textcolor(lightred);
                           writeln('NIK tidak ditemukan !. Silahkan cek kembali ');
                           writeln();
                           textcolor(white);
                           write('Edit Lagi [ Y / T ] ? '); readln(lagi);

        end;
            close(f);
        end;

procedure edit_pend;
var
   f:file of warga;
   r:warga;
   i,jmlh:integer;
   cari:string;
   ketemu:boolean;
   lagi:char;

   begin
        assign(f,'datawarga.dat');
        reset(f);

        jmlh:=filesize(f);
        lagi:='Y';
        while upcase(lagi)='Y' do
        begin
             ketemu:=false;
             clrscr;
                    write('NIK yang dicari                   : '); readln(cari);
                    writeln;
                    for i:=1 to jmlh do
                        begin
                             seek(f,i-1);
                             read(f,r);
                                 if r.nik=cari then
                                    begin
                                         with r do
                                         begin
                                              ketemu:=true;
                                              writeln('NIK                               : ',r.nik);
                                              writeln('Nama                              : ',r.nama);
                                              writeln('Pendidikan Terakhir               : ',r.pend);
                                              write('Edit Pendidikan Terakhir Menjadi  : '); readln(r.pend);
                                              writeln();
                                              textcolor(lightred);
                                              writeln('Data berhasil di edit. Silahkan keluar terlebih dahulu dan masuk kembali. Terima Kasih ');
                                         end;
                                    end;
                                   seek(f,i-1);
                                   write(f,r);
                        end;
                        if not ketemu then
                           textcolor(lightred);
                           writeln('NIK tidak ditemukan !. Silahkan cek kembali ');
                           writeln();
                           textcolor(white);
                           write('Edit Lagi [ Y / T ] ? '); readln(lagi);

        end;
            close(f);
        end;

procedure edit_stnikah;
var
   f:file of warga;
   r:warga;
   i,jmlh:integer;
   cari:string;
   ketemu:boolean;
   lagi:char;

   begin
        assign(f,'datawarga.dat');
        reset(f);

        jmlh:=filesize(f);
        lagi:='Y';
        while upcase(lagi)='Y' do
        begin
             ketemu:=false;
             clrscr;
                    write('NIK yang dicari                 : '); readln(cari);
                    writeln;
                    for i:=1 to jmlh do
                        begin
                             seek(f,i-1);
                             read(f,r);
                                 if r.nik=cari then
                                    begin
                                         with r do
                                         begin
                                              ketemu:=true;
                                              writeln('NIK                             : ',r.nik);
                                              writeln('Nama                            : ',r.nama);
                                              writeln('Status Perkawinan               : ',r.stnikah);
                                              write('Edit Status Perkawinan Menjadi  : '); readln(r.stnikah);
                                              textcolor(lightred);
                                              writeln('Data berhasil di edit. Silahkan keluar terlebih dahulu dan masuk kembali. Terima Kasih ');
                                         end;
                                    end;
                                   seek(f,i-1);
                                   write(f,r);
                        end;
                        if not ketemu then
                           textcolor(lightred);
                           writeln('NIK tidak ditemukan !. Silahkan cek kembali ');
                           writeln();
                           textcolor(white);
                           write('Edit Lagi [ Y / T ] ? '); readln(lagi);

        end;
            close(f);
        end;

procedure edit_usia;
var
   f:file of warga;
   r:warga;
   i,jmlh:integer;
   cari:string;
   ketemu:boolean;
   lagi:char;

   begin
        assign(f,'datawarga.dat');
        reset(f);

        jmlh:=filesize(f);
        lagi:='Y';
        while upcase(lagi)='Y' do
        begin
             ketemu:=false;
             clrscr;
                    write('NIK yang dicari                  : '); readln(cari);
                    writeln;
                    for i:=1 to jmlh do
                        begin
                             seek(f,i-1);
                             read(f,r);
                                 if r.nik=cari then
                                    begin
                                         with r do
                                         begin
                                              ketemu:=true;
                                              writeln('NIK                     : ',r.nik);
                                              writeln('Nama                    : ',r.nama);
                                              writeln('Usia                    : ',r.usia,' Tahun ');
                                              write('Edit usia menjadi       : '); readln(r.usia);
                                              textcolor(lightred);
                                              writeln('Data berhasil di edit. Silahkan keluar terlebih dahulu dan masuk kembali. Terima Kasih ');
                                         end;
                                    end;
                                   seek(f,i-1);
                                   write(f,r);
                        end;
                        if not ketemu then
                           textcolor(lightred);
                           writeln('NIK tidak ditemukan !. Silahkan cek kembali ');
                           writeln();
                           textcolor(white);
                           write('Edit Lagi [ Y / T ] ? '); readln(lagi);

        end;
            close(f);
        end;

procedure editData;
var
pil:integer;
begin
     clrscr;
     writeln('1. Edit Berdasarkan NIK');
     writeln('2. Edit Berdasarkan Nama ');
     writeln('3. Edit Berdasarkan Jenis Kelamin');
     writeln('4. Edit Berdasarkan Tempat Tanggal Lahir');
     writeln('5. Edit Berdasarkan Pendidikan Terakhir ');
     writeln('6. Edit Berdasarkan Status Perkawinan');
     writeln('7. Edit berdasarkan Usia');
     writeln('--------------------------------------');
     write('Pilihan : '); readln(pil);
     case pil of
          1:edit_nik;
          2:edit_nama;
          3:edit_jkelamin;
          4:edit_tpl;
          5:edit_pend;
          6:edit_stnikah;
          7:edit_usia;
     end;
end;

procedure tampilData;
var
  i:integer;
begin
     clrscr;
     writeln('====================================================================================================================================================================');
     writeln('                                                                               DATA WARGA                                                                                    ');
     writeln('====================================================================================================================================================================');
     writeln('        NIK       |       Nama       |    Jenis Kelamin    |      Tempat, Tanggal Lahir      |     Agama     |     Pendidikan     |     Status     |     Usia     | ');
     writeln('--------------------------------------------------------------------------------------------------------------------------------------------------------------------');
     for i:=1 to banyakdata do
     begin
         writeln(datawarga[i].nik:17,'   ',datawarga[i].nama:15,'   ',datawarga[i].jkelamin:11,'   ','   ',datawarga[i].tpl:34,'   ',
                 datawarga[i].agama:13,'   ',datawarga[i].pend:14,'   ',datawarga[i].stnikah:17,'   ',datawarga[i].usia:11);
     end;
     writeln('--------------------------------------------------------------------------------------------------------------------------------------------------------------------');
     writeln();
     writeln();
     writeln();
     textcolor(lightred);
     writeln('Disarankan agar menggunakan layout CMD dengan Screen Buffer Size ukuran 300 x 300 agar terlihat lebih rapi dan maksimal ');
     writeln('Dan menggunakan Window Size dengan width 165 dan dengan height 40 ');
     writeln('Terima Kasih');
     readln;
end;

procedure hapusData;
var
   i,y,d : integer;
begin
     tampilData;
     if (length(datawarga[1].nik) <> 0) then
     begin
          write('Hapus NIK ke = '); readln(d);
          y := wherey;
          while (d <= 0) or ( d> banyakdata) do
          begin
               gotoxy (wherex,wherey-1); clreol;
               gotoxy (1,y-1); clreol;
               writeln('Hapus NIK ke = ',d);
               write ('Pilih Nomer Data '); readln;
               gotoxy(wherex,wherey-1); clreol;
               gotoxy(21,y-1); clreol; readln(d);
          end;
          for i:=d to banyakdata do
          begin
               datawarga[d] := datawarga[d+1];
          end;
          banyakdata := banyakdata-1;
     end
     else
     begin
          write('Tidak Ada Data Untuk Dihapus');
          readln;
     end;
end;

procedure simpanData;
var
   i : integer;
   f : file of warga;
begin
     clrscr;
     assign(f,'datawarga.dat');
     rewrite(f);
     for i:=1 to banyakdata do
        write(f,datawarga[i]);
     writeln (banyakdata,' data warga disimpan ke file. Tekan Enter untuk kembali ');
     close(f);
     readln;
end;

procedure bacadarifile;
var
   f : file of warga;
begin
   if fileexists ('datawarga.dat') then
   begin
     assign(f,'datawarga.dat');
     reset(f);

     while not eof(f) do
     begin
          banyakdata:=banyakdata+1;
          read(f,datawarga[banyakdata]);
     end;
     close(f);
     writeln('Baca data warga dari file. Terbaca ',banyakdata,' record');
     readln;
   end
   else
   begin
        writeln('File belum ada. Silahkan membuat file terlebih dahulu. ');readln;
   end;
end;

procedure pencarian_nik;
var
   dicari:string;
   i:integer;
begin
     clrscr;
     write('NIK yang dicari : ');readln(dicari);
     i:=1;
     while (datawarga[i].nik<>dicari)and(i<banyakdata) do
           i:=i+1;
     if datawarga[i].nik=dicari then
     begin
          writeln();
          writeln('Data dengan NIK ',dicari,' ditemukan di posisi ke-',i);
          writeln('---------------------------------------------');
          writeln();
          writeln('Nama                  : ',datawarga[i].nama);
          writeln('Jenis Kelamin         : ',datawarga[i].jkelamin);
          writeln('Tempat, Tanggal Lahir : ',datawarga[i].tpl);
          writeln('Agama                 : ',datawarga[i].agama);
          writeln('Pendidikan Terakhir   : ',datawarga[i].pend);
          writeln('Status Perkawinan     : ',datawarga[i].stnikah,' Menikah ');
          writeln('Usia / Umur           : ',datawarga[i].usia,' Tahun ');
          writeln();
          writeln('----------------------------------------------');
     end
     else
         writeln('Data tidak ditemukan');
     readln;
end;

procedure pencarian_nama;
var
   dicari:string;
   i:integer;
begin
     clrscr;
     write('NAMA yang dicari : ');readln(dicari);
     i := 1;
     while (upcase(datawarga[i].nama)<>upcase(dicari))and(i<banyakdata) do
           i:=i+1;
     if upcase(datawarga[i].nama)=upcase(dicari) then
     begin
          writeln();
          writeln('Data dengan NAMA ',dicari,' ditemukan di posisi ke-',i);
          writeln('------------------------------------------------------');
          writeln();
          writeln('Nama                  : ',datawarga[i].nama);
          writeln('NIK                   : ',datawarga[i].nik);
          writeln('Jenis Kelamin         : ',datawarga[i].jkelamin);
          writeln('Tempat, Tanggal Lahir : ',datawarga[i].tpl);
          writeln('Agama                 : ',datawarga[i].agama);
          writeln('Pendidikan Terakhir   : ',datawarga[i].pend);
          writeln('Status Perkawinan     : ',datawarga[i].stnikah,' Menikah ');
          writeln('Usia / Umur           : ',datawarga[i].usia,' Tahun ');
          writeln();
          writeln('------------------------------------------------------');
     end
     else
         writeln('Data tidak ditemukan');
     readln;
end;

procedure pencarianData;
var
   pil : integer;
begin
     clrscr;
     writeln('Menu Pencarian Data');
     writeln('------------------------------------');
     writeln('1. Pencarian berdasarkan NIK');
     writeln('2. Pencarian berdasarkan NAMA');
     writeln('------------------------------------');
     write('Pilihan : ');readln(pil);
     case pil of
          1 : pencarian_nik;
          2 : pencarian_nama;
     end;
end;



var pilihan:integer;
begin
     banyakdata:=0;
     bacadarifile;
repeat
     clrscr;
     textcolor(white);
     writeln(' -------------MENU-----------');
     writeln();
     writeln('1. Tambah Data Warga');
     writeln('2. Edit Data Warga');
     writeln('3. Tampil Data Warga');
     writeln('4. Hapus Data Warga ');
     writeln('5. Simpan Data Warga ');
     writeln('6. Pencarian Data Warga');
     writeln();
     writeln('-----------------------------');
     writeln();
     write('PILIHAN ANDA ? '); readln(pilihan);
        if pilihan = 1 then
           tambahData
        else
        if pilihan = 2 then
           editData
        else
        if pilihan = 3 then
           tampilData
        else
        if pilihan = 4 then
           hapusData
        else
        if pilihan = 5 then
           simpanData
        else
        if pilihan = 6 then
           pencarianData
     until pilihan=0;
end.
