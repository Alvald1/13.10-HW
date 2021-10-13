const
  n = 10000;

var
  a, tmp, i, count: integer;
  arr: array[0..n] of integer;

begin
  read(a);
  tmp := abs(a);
  i := 0;
  count := 0;
  while tmp >= 1 do
  begin
    arr[i] := tmp mod 10;
    tmp := tmp div 10;    
    i := i + 1;
    count := count + 1;
  end;
  var flag: boolean;
  flag := true;
  tmp := count;
  while flag do
  begin
    flag := false;
    var j: integer;
    for j := 0 to tmp do
    begin
      if arr[j] < arr[j + 1] then begin
        swap(arr[j], arr[j + 1]);
        flag := true;
      end;
    end;      
    tmp := tmp - 1;
  end;
  var ans: integer;
  if a < 0 then begin
    for i := 0 to count do
      ans := ans + (arr[i] * trunc(10 ** i));
    ans := ans * -1;
  end
  else begin
    i := 0;
    while count > 0 do
    begin
      ans := ans + (arr[i] * trunc(10 ** (count - 1)));
      count := count - 1;
      i := i + 1;
    end;
  end;
  write(ans);
end.