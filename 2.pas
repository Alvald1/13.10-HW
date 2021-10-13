var
  a, b, c: integer;

begin
  writeln('Введите a, b, c ');
  read(a, b, c);
  if a = 0 then
    write('Это не квадратное уравнение')
  else begin
    writeln('Это квадратное уравнение');
    var D := b * b - 4 * a * c;
    if D < 0 then
      write('Корней нет')
    else if D = 0 then 
      write('x = ', -b / (2 * a))
    else
      write('x1 = ', (-b + sqrt(D)) / (2 * a), ' x2 = ', (-b - sqrt(D)) / (2 * a));
  end;
end.