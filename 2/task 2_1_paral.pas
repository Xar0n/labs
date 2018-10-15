program l2_1;
uses crt;
var 
	x, eps, a, y, addendum, numerator, f, f1, f2: real;
	n, k: integer;
begin
repeat
	write('Введите аргумент x:');
	readln(x)
until abs(x) < 1;

repeat
  write('Введите  аргумент a:');
  readln(a)
until a > 0;

repeat
	write('Введите точность EPS:');
	readln(eps)
until eps > 0;

repeat
	write('Введите число слагаемых k:');
	readln(k)
until k > 0;

numerator := x;
addendum := numerator;
y := sin(a);
f := sin(x+a);
f1 := y;
f2 := y;
n := 1;

while (n <= k) or (abs(addendum) >= eps) do
begin
     numerator := numerator*x*sin(a+n*pi/2);
     addendum := addendum*numerator / n*sin(a+(n-1)*pi/2);
     y := y + addendum;
     inc(n);
     if abs(addendum) >= eps then f1 := y;
     if n = k then f2 := y
end;
    writeln('f = ', f);
    writeln('f1 = ', f1);
    writeln('f2 = ', f2);
end.