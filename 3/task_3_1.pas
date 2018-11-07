{Дан вектор Y(n), nЈ 12. Сформировать вектор С из ненулевых элементов вектора Y, 
предшествующих первому отрицательному элементу вектора.}
program task_3_1;
uses crt;
type vector = array [1..12] of integer;
var
   i, j, index_min, n, k: integer;
   Y: vector;
   flag: boolean;
begin
repeat
   write('Введите 0 < n < 13:');
   readln(n);
until (n > 0) and (n < 13);
flag := true;
writeln('Вектор Y:');
for i := 1 to n do
begin
   Y[i] := random(10) - random(10);
   write(Y[i]:3);
   if (flag) and (Y[i] < 0) then
   begin
       index_min := i;
       flag := false;
   end
end;
writeln;
writeln('Вектор C:');
for j := index_min to n do
begin
   if Y[j] <> 0 then
   begin
       write(Y[j]:3);
   end
end;
for i := 1 to n do
begin
   for j := 1 to n - i do
   begin
       if Y[j] < Y[j+1] then
       begin
           k := Y[j];
           Y[j] := Y[j+1];
           Y[j+1] := k;
       end
   end
end;
writeln;
writeln('Отсортированный массив:');
for i := 1 to n do
begin
   write(Y[i]:3);
end
end.