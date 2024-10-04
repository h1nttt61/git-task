begin
  var (year, flag) := (ReadInteger(), False);
  if (year.Divs(4)) and (year mod 100 <> 0) or (year.Divs(400) then
    flag := True;
  Print(flag);
end.