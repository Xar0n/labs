{
В заданный непустой текст входят только цифры и буквы.
Длина текста не более 12 символов.Определить, удовлетворяется ли следующее свойство:
Текст является восьмеричной записью числа, кратного 4;
}
program task_4_1;
uses crt;
var
   text: string;
   symbols: set of char;
   i, j, s: integer;
   flag: boolean;
begin
cls;
symbols := ['1' .. '8'];
s := 0;
repeat
   write('Введите текст <= 12 символам:');
   readln(text);
until length(text) <= 12;
for i := 1 to length(text) do
begin
   if (text[i] in symbols) = true then s := s + (ord(text[i])-48)
   else
   begin
       write('Найден символ не принадлежащий заданному множеству 8-ичных чисел');
       exit;
   end
end;
if s mod 4 = 0 then write('Текст является восьмеричной записью числа, кратного 4')
else write('Текст не является восьмеричной записью числа, кратного 4');
end.