{
В заданный непустой текст входят только цифры и буквы.
Длина текста не более 12 символов.
Определить, удовлетворяется ли следующее свойство:
Текст является восьмеричной записью числа, кратного 4;
}
program task_4_1;
uses crt;
var
   sign, last_sign:char;
   symbols: set of char;
   i: integer;
   flag: boolean;
begin
i := 12;
flag := false;
symbols := ['0' .. '7'];
write('Введите строку:');
repeat
   sign := readkey;
   if sign = #13 then
   begin
       flag := true;
       break;
   end;
   write(sign);
   last_sign := sign;
   dec(i);
until (i = 0) or (sign in symbols = false);
writeln;
if flag and ((last_sign = '4') or (last_sign = '0')) then write('Текст является восьмеричной записью числа, кратного 4')
else if (sign = '4') or (sign = '0') then write('Текст является восьмеричной записью числа, кратного 4')
else write('Текст не является восьмеричной записью числа, кратного 4');
end.
