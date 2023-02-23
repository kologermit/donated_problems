var l, r, t: string;
var i: integer;
begin
	write('l='); readln(l);
	for i := 1 to length(l) do
    if l[i] <> ' ' then
      t := concat(t, l[i])
    else
    begin
      if (length(t) <= 2) and (length(t) > 0) then
        r := concat(r, t, ' ');
      t := '';
    end;
    if (length(t) <= 2) and (length(t) > 0) then
      r := concat(r, t, ' ');
    if length(r) > 0 then
      r := copy(r, 1, length(r) - 1);
  write('r=|', r, '|'); 
end.