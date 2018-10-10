{
  Вычислить значение функции F(x), разложенной в ряд и сходящейся в указанной области.
  C заданным числом K первых членов ряда (F2(x))
}
program task_2_1_1;
uses crt;
var
   x, y, u, a, sinus, cosinus: real;
   n, i, k: integer;
begin
write('Введите x:');
readln(x);
write('Введите a:');
readln(a);
write('Введите n:');
readln(n);
if abs(x) < 1 then
begin
     sinus := sin(a);
     cosinus := cos(a);
     if n > 3 then
     begin
         u := sinus + x*cosinus - (x*x*cosinus/1*2) - (x*x*cosinus/1*2*3);
         for i := 4 to n do
         begin
              y := y + u;
              inc(k);
              if k mod 2 = 0 then u := u*x*cosinus
              else u := u*x*sinus;
         end
     end
     else y := sinus + x*cosinus - (x*x*cosinus/1*2) - (x*x*cosinus/1*2*3);
     write('y = ', y);
end
else write('Параметр x не принадлежит заданной области видимости функции');
end.