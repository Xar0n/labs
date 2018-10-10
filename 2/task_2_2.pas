program task_2_2;
uses crt;
var 
  s, n, d, i: integer;
begin
repeat
  write('Введите услилие необходимое для вытаскивания репки:');
  readln(n);
  write('Введите усилие с которым дед тянет репку:');
  readln(d);
  i := 0;
  s := d;
  if d >= n then writeln('Дед вывез сам')
  else
  begin
    while s <= n do
    begin
      inc(i);
      s := round(s + s/(i/(i+1)));
    end;
  writeln('Помощников было:', s mod 10 );
  end
until (n > 0)
end.