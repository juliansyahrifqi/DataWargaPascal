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

procedure edit;
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


var pilihan:integer;
begin
     banyakdata:=0;

repeat
     clrscr;
     textcolor(white);
     writeln(' -------------MENU-----------');
     writeln();
     writeln('1. Tambah Data Warga');
     writeln('2. Edit Data Warga');
     writeln('-----------------------------');
     writeln();
     write('PILIHAN ANDA ? '); readln(pilihan);
        if pilihan=1 then
           tambahData
        else
        if pilihan=2 then
           edit
        else
     until pilihan=0;
end.
