{Перевести целое N в P-ичную систему счисления, 2<= P<9.}
program сontrol_task_10;
uses crt;
var
   N, P, remainder: longint;
   x: byte;
   sign: char;
begin
cls;
x := 30;
write('Введите N:');
readln(N);

repeat
   write('Введите P:');
   readln(P);
until (2 <= P) and (9 > P);

if n < 0 then
begin
   sign := '-';
   N := abs(N);
end;

repeat
   gotoxy(x, wherey);
   write(N mod P);
   N := N div P;
   x := x - 1;
   if N = 0 then
   begin
       gotoxy(x, wherey);
       write(sign);
   end
until N = 0
end.