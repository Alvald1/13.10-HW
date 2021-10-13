var
  a, count,tmp: integer;

begin
  writeln('Введите а');
  read(a);  
  tmp := a;
  count := 0;
  if a <> 0 then begin
    if a > 0 then
      writeln('Число положитетельное')
    else begin
      writeln('Число отрицательное');
      tmp := tmp * -1;
    end;
  end 
  else begin
    writeln('Это ноль');
    count:=1;
    end;
  while tmp >= 1 do
  begin
    tmp := tmp div 10;
    count := count + 1;
  end;
  write('В нем ', count, ' цифр');
end.