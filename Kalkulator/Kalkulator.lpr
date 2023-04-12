program Kalkulator;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  metode,jwb:string;
  n1,n2,hasil:real;

label
  1,2;

begin
  1:
  writeln('---------------- Kalkulator ----------------');
  writeln('Pertambahan : +');
  writeln();
  writeln('Pengurangan : -');
  writeln();
  writeln('Perkalian   : *');
  writeln();
  writeln('Pembagian   : /');
  writeln();
  write('Pilih Metode Perhitungan : ');
  readln(metode);
  writeln('--------------------------------------------');
  write('Inputkan No Pertama : ');
  readln(n1);
  writeln();
  write('Inputkan No Kedua : ');
  readln(n2);
  writeln('--------------------------------------------');
  if metode = '/' then
  begin
    hasil := (n1 / n2);
  end
  else if metode = '*' then
  begin
    hasil := (n1 * n2);
  end
  else if metode = '+' then
  begin
    hasil := (n1 + n2);
  end
  else if metode = '-' then
  begin
    hasil := (n1 - n2);
  end
  else
  begin
    writeln('Pastikan Simbol Perhitungan Benar!');
    goto 1;
  end;
  writeln('Hasil : ',hasil:0:1);
  2:
  writeln('--------------------------------------------');
  write('Perhitungan Baru? (Y / N) ');
  readln(jwb);
  if jwb = 'Y' then
  begin
    goto 1;
  end
  else if jwb = 'N' then
  begin
    exit;
  end
  else
  begin
    goto 2;
  end;
  readln;
end.

