var
  a: integer;

begin
  read(a);
  var tmp := a;
  var tmp1 := a;
  tmp := tmp mod 10;
  tmp1 := tmp1 div 10 mod 10;
  if (tmp = 1) and (tmp1 <> 1) then
    write(a, ' korova')
  else if (tmp > 1) and (tmp < 5) and (tmp1 <> 1) then
    write(a, ' korovy')
  else
    write(a, ' korov');
end.