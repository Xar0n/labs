{
47. Заданы действительные положительные числа X, Y, Z.
а) Выяснить существует ли треугольник с длинами сторон Х, Y, Z.
б) Если треугольник существует, то ответить - является ли он остроугольным.
}
program task_47;
var X, Y, Z: real;
begin
write('Введите значения сторон треугольника X, Y, Z > 0 через пробел или через ENTER: ');
readln(X, Y, Z);
if (X > 0) and (Y > 0) and (Z > 0) and (X+Y > Z) and (X+Z > Y) and (Y+Z > X) then
begin
    write('Треугольник построить можно');
    if ((X*X + Y*Y) > Z*Z) and ((Y*Y + Z*Z) > X*X) and ((X*X + Z*Z) > Y*Y) then
    begin
         write(' и он остроугольный');
    end
    else write(', но он не остроугольный');
end
else write('Тругольник построить нельзя');
end.