program control_task_24g;
var
   i, number, N: integer;
begin
cls;
number := 100;
repeat
   write('Введите N > 0:');
   readln(N);
until N > 0;
for i := 1 to N do
begin
   write(number, ' ');
   number := round(number - exp(ln(3)*i));
end
end.