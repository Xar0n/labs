{��� ������ Y(n), n< 12. ������������ ������ � �� ��������� ��������� ������� Y, 
�������������� ������� �������������� �������� �������.}
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
    writeln('��� �� ������ ������ ������?');
    writeln('1.�������');
    writeln('2.�������������');
    readln(choice); 
until (choice < 3) and (choice > 0);
case choice of
1:
    repeat
        inc(n);
        writeln('������� ', n, '-�� ������� �������:');
        readln(temp);
        if temp = 0 then break;
        Y[n] := temp;
        if (flag) and (Y[n] < 0) then
        begin
           index_min := n;
           flag := false;
        end
    until (n = 11);
2:
    repeat
        write('������� 0 < n < 12:');
        readln(n);
        if (n > 0) and (n < 12) then
        begin
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
        writeln();
        end
    until (n > 0) and (n < 12);
end;
writeln('������ Y:');
for i := 1 to n do
begin
   write(Y[i]:3);
end;
writeln;
if index_min <> 0 then
begin
writeln('������ C:');
c_index := 0;
for j := index_min to n do
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
writeln('��������������� ������:');
for i := 1 to c_index do
begin
   write(C[i]:3);
end
end
else write('������ C ������ ������������');
end.