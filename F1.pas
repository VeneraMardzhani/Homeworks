var
 f: file of char;
 l: integer;
 s: string;
function word(f: file of char; w: string): string;
var
 a, b: string;
 c: char;
 n1, n2: integer;
   begin
 assign(f,'w.txt');
 reset(f);
 a := '';
 b := '';
 n1 := 0;
 n2 := 0;
 while not eof(f) do
 begin
  read(f, c);
  if a <> ' ' then
  begin
   b := b + c;
   n2 := n2 + 1;
  end
  else
  begin
   if n2 > n1 then
   begin
    a := b;
    n1 := n2;
    b := '';
    n2 := 0;
   end
   else
   begin
    b := '';
    n2 := 0;
   end;
  end;
 end;
 word := a;
   end;

begin
 s := word(f, 'text.txt');
 l := length(s);
 writeln('Самое длинное слово -  ', s ,'. Длина -  ',l);
end.