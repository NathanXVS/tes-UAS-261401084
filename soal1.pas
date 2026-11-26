uses crt;
var
    n, k: integer;
begin
    clrscr;
    repeat
        write('Masukkan angka batas akhir (1-100): ');
        readln(n);
    until(n > 0) and (n <= 100);
    writeln('Pilih kategori');
    writeln('[1] Ganjil');
    writeln('[2] Genap');
    writeln;
    write('Yang mana: ');
    readln(k);
    if (k = 1) then
    begin
        while true do
        begin
            write(n, ' ');
            if (n mod 2 = 0) then
                continue
            else if (n mod 5 = 0) then
                continue;
        end;
    end;
end.