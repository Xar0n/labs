{
1)Все звонкие согласные буквы, которые входят хотя бы в одно слово;
2)Все согласные буквы, которые НЕ входят ни в одно слово.
}
program task_additional_1;
uses crt;
var
   voiced_consonants, consonants, c, a, d: set of char;
   symbol, i: char;
begin
voiced_consonants := ['б', 'в', 'г', 'д', 'ж', 'з', 'л', 'м', 'н', 'р'];
consonants := ['а'..'я'] - ['й', 'ь', 'ъ'];
write('Введите текст:');
repeat
   symbol := readkey();
   write(symbol);
   if symbol = ',' then continue
   else if symbol <> '.' then
   begin
       c := voiced_consonants * [symbol];
       a := a + c;
       d := consonants * [symbol];
       consonants := consonants - d;
   end;
until symbol = '.';
writeln;
writeln('Все звонкие согласные буквы, которые входят хотя бы в одно слово:');
for i := 'а' to 'я' do
begin
   if i in a then write(i:2);
end;
writeln;
writeln('Все согласные буквы, которые НЕ входят ни в одно слово:');
for i := 'а' to 'я' do
begin
   if i in consonants then write(i:2);
end;
end.