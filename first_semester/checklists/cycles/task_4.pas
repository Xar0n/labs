{Дано действительное число a и натуральное число n.
Вычислить: 1/a +1/(a*(a+1)) + ...+ 1/(a*(a+1)*...*(a+n));}
program control_task_4;
var
   n, i: integer;
   a, s, addendum: real;
begin
repeat
   write('Введите n > 0:');
   readln(n);
until n > 0;
write('Введите a:');
readln(a);
addendum := 1/a;
s := 1/a;
for i := 1 to n do
begin
   addendum := addendum*(a+i);
   s := s + addendum;
end;
write('s:', s);
end.