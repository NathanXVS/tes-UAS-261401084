uses crt;
var
    n, i, ni_max, ni_min: integer;
    ni: array[1..50] of integer;
begin
    clrscr;
    write('Masukkan jumlah peserta(1-50): ');
    readln(n);
    ni_max := 0;
    for i := 1 to n do
    begin
        write('Masukkan nilai ', i, ': ');
        readln(ni[i]);
        if ni[i] > ni[i] then
            ni[i] := ni[i];
        ni_max := ni[i];
    end;
    writeln('Nilai tertinggi: ', ni_max);
end.