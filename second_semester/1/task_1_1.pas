{
4.Даны векторы X[10], Y[20] и величина T.
Если хотя бы одна компонента вектора X больше значения T,
то все его отрицательные компоненты заменить на значение T.
Если у вектора Y есть хотя бы одна положительная компонента,
то все его отрицательные компоненты заменить максимальной
компонентой этого вектора
}
program task_1_1;
uses crt;
type
   vector = array[1..20] of real;
var
   X, Y: vector;
   T, number: real;
   i: integer;

procedure input(var arr: vector; quantity: byte);
begin
   writeln;
   for i := 1 to quantity do
   begin
       write('Введите ', i ,' элемент вектора:');
       readln(arr[i]);
   end;
   writeln;
end;

procedure echo(var arr:vector; quantity: byte);
begin
   writeln;
   for i := 1 to quantity do
   begin
       write(arr[i]:8:4);
   end;
   writeln;
end;

procedure replace(var arr: vector; sub: real; quantity: byte);
begin
   for i := 1 to quantity do
   begin
       if arr[i] < 0 then arr[i] := sub;
   end
end;

function max(arr: vector; quantity: byte): real;
var max_element: real;
begin
   max_element := arr[1];
   for i := 2 to quantity do
   begin
       if arr[i] > max_element then max_element := arr[i];
   end;
   max := max_element;
end;

procedure compare(var arr: vector; quantity: byte; value: real; sub: real);
var flag: boolean;
begin
   flag := false;
   for i := 1 to quantity do
   begin
       if arr[i] > value then
       begin
           flag := true;
           break;
       end;
   end;
   if flag then replace(arr, sub, quantity);
end;
begin
write('Введите величину T:');
readln(T);
write('Ввод вектора X');
input(X, 5);
echo(X, 5);
write('Ввод вектора Y');
input(Y, 5);
compare(X, 5, T, T);
compare(Y, 5, 0, max(Y, 5));
write('Вывод вектора X');
echo(X, 5);
write('Вывод вектора Y');
echo(Y, 5);
end.