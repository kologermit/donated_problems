var l: array[1 .. 100, 1 .. 100] of string;
var i, j, n, m: integer;
var r: string;
begin
  n := 3;
  m := 3;
  l[1][1] := 'Л'; l[1][2] := 'О'; l[1][3] := 'Г';
  l[2][1] := 'Е'; l[2][2] := 'Д'; l[2][3] := 'А';
  l[3][1] := 'С'; l[3][2] := 'А'; l[3][3] := 'Д';
  for j := 1 to m do
  begin
    for i := 1 to n do
      write(l[i][j]);
    writeln();
  end;
end.