{
Задан текст, состоящий из слов, записанных через пробелы или запятые.
Длина текста не больше 255 символов. В тексте могут быть использованы любые символы.
Словом считать последовательность символов, не содержащую пробел.
Необходимо введенный текст вывести на экран до и после его преобразования.
В тексте удалить каждое четное слово, продублировать каждое нечетное слово,
заменив все вхождения букв 'д' на букву 'т'. Найти первое цифровое слово
и умножить его значение на 5.
}
program task_5_1;
uses crt;
var
   text, text1, text2, number_string: string;
   number: real;
   i, code: integer;
   flag: boolean;
begin
write('Введите текст:');
readln(text);
//text := 'onдe 5 threeд four five 5';
if (text[length(text)] <> ' ') then insert(' ', text, length(text)+1);
writeln('Текст до преобразования: ', text);
flag := true;
i := 1;
repeat
   if flag then
   begin
       text2 := copy(text, 1, pos(' ', text))
       delete(text, pos(' ', text), 1);
       val(text2, number, code);
       if code = 0 then
       begin
           str(number*5, number_string);
           delete(text, 1, pos(' ', text)-1);
           insert(number_string, text, 1);
           flag := false;
       end;
   end;
   if i mod 2 = 0 then
   begin
      text1 := text1 + copy(text, 1, pos(' ', text)) + copy(text, 1, pos(' ', text));
      delete(text, 1, pos(' ', text));
   end
   else delete(text, 1, pos(' ', text));
   inc(i);
until length(text) = 0;
while pos('т', text1) > 0 do text1[pos('д', text1)] := 'т';
writeln('Текст после преобразования: ', text1);
end.