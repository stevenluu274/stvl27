uses crt;
var a : array[1..100] of integer;
    i, j, k, n : integer;
begin
    write('Read n: '); readln(n);
    fillchar(a, sizeof(a), 0);
    a[1]:= 1; writeln(a[1]);
    for i:= 2 to n do
        begin
            for j:= i downto 1 do
                begin
                    if (j = 1) or (j = i) then a[j]:= 1
                        else a[j] := a[j - 1] + a[j];
                end;
            for k:= 1 to i do write(a[k], ' ');
            writeln;
        end;
end.
1
1 1
1 2 1
1 3 3 1
