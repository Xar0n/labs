{
  Вычислить значение функции F(x), разложенной в ряд и сходящейся в указанной области.
  C заданной погрешностью EPS (F1(x))
}
program task_2_1_1;
uses crt;
var
   x, y, u, a, sinus, cosinus, eps: real;
   k: integer;
begin
write('Введите x:');
readln(x);
write('Введите а:');
readln(a);
write('Введите точность EPS:');
readln(eps);
if (eps > 0) and (eps < 0) and abs(x) < 1 then
begin
	sinus := sin(a);
	cosinus := cos(a);
	u := sinus + x*cosinus - (x*x*cosinus/1*2) - (x*x*cosinus/1*2*3);
	k := 6;
    y := 0;
	while abs(u) > eps do
	begin
		y := y + u;
        inc(k);
        k := k * k;
        if k mod 2 = 0 then u := u*x*cosinus/k //ПИЗДЕЦ
        else u := u*x*sinus/k;
	end
	write('X = ', x, 'Y = ', y, 'A = ', a, 'EPS = ', eps);
end
else write('Параметр x или eps не принадлежат заданной области видимости функции');
end.