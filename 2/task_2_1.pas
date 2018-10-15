program task_2_1;
var
   x, y, u, a, eps: real;
   k, n: integer;
begin
write('Введите x:');
readln(x);
write('Введите а:');
readln(a);
write('Введите точность EPS:');
readln(eps);
if (eps > 0) and (eps < 0) and (abs(x) < 1) then
begin
	u := sin(a);
	for i := 1 to n do
	begin
       	y := y + u;
       	inc(k);
        u := u*x*sin(a+k*pi/2)/k*sin(a + (k-1)pi/2);
    end
    write('u = ', u);
end
end.