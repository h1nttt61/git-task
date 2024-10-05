begin
  var (year, flag) := (ReadInteger(), False);
  Assert(year > 0);
  if (year.Divs(4)) and (year mod 100 <> 0) or (year.Divs(400)) then
    flag := True;
  Println(flag);
  if flag = True then
    Print($'В {year} 366 дней')
  else
    Print($'В {year} 365 дней');
  Println('---------------------------------------------------------');
  var (year1, year2) := ReadInteger2('Введите 2 года, чтобы получить сумму их дней:');
  Assert(year1 < year2);
  var (cnt, flag2) := (0, False);
  for var i := year1+1 to year2 do
  begin
    if (i.Divs(4)) and (i mod 100 <> 0) or (i.Divs(400)) then
      flag2 := True;
    if flag2 = True then
      cnt += 366
    else
      cnt += 365;
    flag2 := False;
  end;
  Println(cnt);
  Println('---------------------------------------------------------');
  var (number1, month1) := ReadInteger2('Введите "первый" день(1<x<31) и месяц(1<x<12)');
  var (number2, month2) := ReadInteger2('Введите "второй" день(1<x<31) и месяц(1<x<12)');
  if (12 - month1) < (12 - month2) then
    Print(1)
  else if (month1 = month2) then
    begin
     if number1 > number2 then
       Print(1)
     else
       Print(2);
    end
  else
    Print(2);  
  Println('---------------------------------------------------------');
  var hours := ReadInteger();
  Print(hours*3600);
end.
