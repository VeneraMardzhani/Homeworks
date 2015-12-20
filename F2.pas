var
a:char;
sum,b:integer;
f1,f2: text;
begin
assign (f1,'input.txt');
reset (f1);
sum:=0;
while not eof (f1) do 
      begin
      read(f1,a);
      while a <> ' ' do 
        begin
        if a in ['0'..'9'] then
               begin
               a:='r';
               b:=ord(a);
               end
        else 
            begin
             sum:=sum+a;
             read (f1, a);
            end;
        end;
      end;
      close (f1);
  assign (f2,'result.txt');
  rewrite (f2);
  write ('сумма=');
  write(f2,a);
  close (f2);
  readln
end.