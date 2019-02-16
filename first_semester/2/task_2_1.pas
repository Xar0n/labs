program l2_1;
uses crt;
var 
	x, eps, a, y, addendum, f, f1, f2: real;
	n, k: integer;
begin
repeat
	write('Введите аргумент x:');
	readln(x)
until abs(x) < 1;

repeat
	write('Введите точность EPS:');
	readln(eps)
until eps > 0;

repeat
	write('Введите число слагаемых k:');
	readln(k)
until k > 0;

write('Введите  аргумент a:');
readln(a);

addendum := sin(a);
y := sin(a);
f := sin(x+a);
f1 := y;
f2 := y;
n := 1;

while (abs(addendum) >= eps) do
begin
  addendum := addendum*x*sin(a+n*pi/2) / (n*sin(a+(n-1)*pi/2));
  y := y + addendum;
  inc(n);
end;
f1 := y;
y := sin(a);
addendum := sin(a);

for n := 1 to k do
begin
  addendum := addendum*x*sin(a+n*pi/2) / (n*sin(a+(n-1)*pi/2));
  y := y + addendum;
end;
f2 := y;

writeln('eps = ', eps);
writeln('x = ', x);
writeln('k = ', k);
writeln('f1 = ', f1);
writeln('f2 = ', y);
writeln('f = ', f);


end.