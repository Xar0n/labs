{Для матрицы С(m, n), 1<(m, n)<10, найти сумму элементов, больших 3.2.
Переставить столбцы по возрастанию количества отрицательных элементов в столбцах.}
program task_3_2;
uses crt;
type
   matrix = array[1..9, 1..9] of integer;
var
   a: matrix;
   line, temp: array[1..9] of integer;
   i, j, g, m, n, sum, k: integer;
begin
cls;
sum := 0;
repeat
   write('Введите 1 < m < 10 :');
   readln(m);
until (m < 10) and (m > 1);
repeat
   write('Введите 1 < n < 10:');
   readln(n);
until (n < 10) and (n > 1);
writeln('Исходный массив:');
for i := 1 to m do
begin
   for j := 1 to n do
   begin
       a[i, j] := random(10) - random(10);
       write(a[i,j]:4);
       if a[i, j] > 3 then sum := sum + a[i, j];
       if a[i, j] < 0 then line[i] := line[i] + 1;
   end;
   writeln;
end;
writeln('Сумма элементов больших 3:', sum);
for i := 1 to m do
begin
   for j := 1 to m - i do
   begin
       if line[j] > line[j+1] then
       begin
          for g := 1 to n do
          begin
             temp[g] := a[j, g];
             a[j, g] := a[j+1, g];
             a[j+1, g] := temp[g];
          end;
          k := line[j];
          line[j] := line[j+1];
          line[j+1] := k;
       end
   end
end;
writeln('Массив с переставленными строками:');
for i := 1 to m do
begin
   for j := 1 to n do write(a[i, j]:4);
   writeln;
end;
end.