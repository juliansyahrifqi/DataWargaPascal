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


var pilihan:integer;
begin
     banyakdata:=0;

repeat
     clrscr;
     textcolor(white);
     writeln(' -------------MENU-----------');
     writeln();
     writeln('1. Tambah Data Warga');
     writeln('-----------------------------');
     writeln();
     write('PILIHAN ANDA ? '); readln(pilihan);
        if pilihan=1 then
           tambahData
        else
     until pilihan=0;
end.
