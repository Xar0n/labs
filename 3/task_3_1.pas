{Дан вектор Y(n), n< 12. Сформировать вектор С из ненулевых элементов вектора Y, 
предшествующих первому отрицательному элементу вектора.}
program task_3_1;
uses crt;
type vector = array [1..11] of integer;
var
   i, j, index_min, n, temp, c_index, choice: integer;
   Y, C: vector;
   flag: boolean;
begin
flag := true;
repeat
    writeln('Как вы хотите задать вектор?');
    writeln('1.Вручную');
    writeln('2.Автоматически');
    readln(choice);
until (choice < 3) and (choice > 0);

repeat
    write('Введите 0 < n < 12(количество элементов):');
    readln(n);
until (n > 0) and (n < 12);

case choice of
1:
begin
    for i := 1 to n do
    begin
        writeln('Введите ', i, '-ый элемент вектора:');
        readln(Y[i]);
        if (flag) and (Y[i] < 0) then
        begin
           index_min := i - 1;
           flag := false;
        end;
    end;
end;
2:
    begin
        if (n > 0) and (n < 12) then
        begin
            for i := 1 to n do
            begin
            Y[i] := random(10) - random(10);
            write(Y[i]:3);
            if (flag) and (Y[i] < 0) then
            begin
                index_min := i - 1;
                flag := false;
            end;
         end;
        writeln();
        end;
     end;
end;
writeln('Вектор Y:');
for i := 1 to n do
begin
   write(Y[i]:3);
end;
writeln;
if index_min <> 0 then
begin
writeln('Вектор C:');
c_index := 0;
for j := index_min downto n do
begin
   if Y[j] <> 0 then
   begin
       inc(c_index);
       C[c_index] := Y[j];
       write(C[c_index]:3);
   end
end;
for i := 1 to c_index do
begin
   for j := 1 to c_index - i do
   begin
       if C[j] < C[j+1] then
       begin
           temp := C[j];
           C[j] := C[j+1];
           C[j+1] := temp;
       end
   end
end;
writeln;
writeln('Отсортированный массив:');
for i := 1 to c_index do
begin
   write(C[i]:3);
end
end
else write('Вектор C нельзя сформировать');
read();
end.