var
  a, b, c: integer;

begin
  writeln('Введите a, b, c ');
  read(a, b, c);
  if ((a + b) > c) and ((a + c) > b) and ((b + c) > a) then begin
    if (a = b) or (a = c) or (b = c) then begin
      if (a = b) and (a = c) and (b = c) then
        write('Можно построить равносторонний треугольник')
      else
        write('Можно построить равнобедренный треугольник');
    end
    else
      write('Можно построить треугольник');
  end
  else
    write('Треугольник построить нельзя');
end.
