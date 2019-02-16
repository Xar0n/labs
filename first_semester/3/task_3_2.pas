{Для матрицы С(m, n), 1<(m, n)<10, найти сумму элементов, больших 3.2.
Переставить столбцы по возрастанию количества отрицательных элементов в столбцах.}
program task_3_2;
uses crt;
type
   matrix = array[1..9, 1..9] of real;
var
   a: matrix;
   line: array[1..9] of real;
   k, sum: real;
   i, j, g, m, n, choice: integer;
begin
sum := 0;
repeat
    writeln('Как вы хотите задать матрицу?');
    writeln('1.Вручную');
    writeln('2.Автоматически');
    readln(choice);
    
repeat
   write('Введите 1 < m < 10(количество строк):');
   readln(m);
until (m < 10) and (m > 1);
repeat
   write('Введите 1 < n < 10:(количество столбцов)');
   readln(n);
until (n < 10) and (n > 1);

until (choice < 3) and (choice > 0);
case choice of
1:
  begin
  for i := 1 to m do
  begin
       for j := 1 to n do
       begin
           write('Введите ', i, ' строку, ', j, ' столбец:');
           readln(a[i, j]);
           if a[i, j] > 3.2 then sum := sum + a[i, j];
           if a[i, j] < 0 then line[i] := line[i] + 1;
       end;
  end;
  end;
2:
 begin  
   for i := 1 to m do
   begin
       for j := 1 to n do
       begin
           a[i, j] := (random*10 - 3);
           if a[i, j] > 3.2 then sum := sum + a[i, j];
           if a[i, j] < 0 then line[i] := line[i] + 1;
       end;
   end; 
  end;
end;
writeln('Исходный массив:');
for i := 1 to m do
begin
    for j := 1 to n do
    begin
        write(a[i,j]:6:1);
    end;
    writeln;
end;

writeln('Сумма элементов больших 3.2:', sum:4:1);
for i := 1 to m do
begin
   for j := 1 to m - i do
   begin
       if line[j] > line[j+1] then
       begin
          for g := 1 to n do
          begin
             k := a[j, g];
             a[j, g] := a[j+1, g];
             a[j+1, g] := k;
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
   for j := 1 to n do write(a[i, j]:6:1);
   writeln;
end;
end.