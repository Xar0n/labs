{Дана непустая последовательность различных натуральных чисел, за которой следует 0.
Определить порядковый номер наименьшего из них.}
program сontrol_task_18;
uses crt;
var
   n, i, min, number_min: integer;
begin
cls;
i := 1;
min := 0;
number_min := 0;
repeat
   write('Введите число:');
   readln(n);
   if n < min then
   begin
       min := n;
       number_min := i;
   end;
   inc(i);
until n = 0;
write(number_min);
end.