uses crt;
type
    TMahasiswa = record
    NIM: string[15];
    Nama: string[50];
    NilaiTugas, NilaiUAS, NilaiAkhir: real;
    s: string;
end;
var
    dataMHS: array[1..30] of TMahasiswa;
    n, i: integer;
begin
    clrscr;
    write('Masukkan jumlah mahasiswa(1-30): ');
    readln(n);
    for i := 1 to n do
    begin
        with TMahasiswa do
        begin
            writeln('Data ke-', i);
            write('Nama: ');
            readln(Nama[i]);
            write('NIM: ');
            readln(NIM[i]);
            write('Nilai Tugas: ');
            readln(NilaiTugas[i]);
            write('Nilai UAS: ');
            readln(NilaiUAS[i]);
        end;
    end;
    for i := 1 to n do
    begin
        with TMahasiswa do
        begin
            NilaiAKhir[i] := (0.4 * NilaiTugas[i]) + (0.6 * NilaiUAS[i]);
        end;
    end;
    for i := 1 to n do
    begin
        with TMahasiswa do
        begin
            writeln('Nama: ', Nama[i]);
            writeln('NIM: ', NIM[i]);
            writeln('Nilai Tugas: ', NilaiTugas[i]:0:2);
            writeln('Nilai UAS: ', NilaiUAS[i]:0:2);
            writeln('Nilai Akhir: ', NilaiAKhir[i]:0:2);
        end;
    end;
end.