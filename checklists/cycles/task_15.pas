program сontrol_task_15;
var N, i: integer;
    s, addendum, a: real;
begin
cls;
repeat
   write('Введите N > 0:');
   readln(N);
until N > 0;
write('Введите a:');
readln(a);
addendum := 1;
s := 0;
for i := 1 to N do
begin
  addendum := addendum * 1/a;
  writeln(addendum);
  s := s + addendum;
end;
write(s);
end.