var i: integer;
var s: real;
begin
   for i := 1 to n do
     x[i] := i;
   s := 0;
   for i := 3 to n do
     s := s + (x[i - 2] + x[i - 1]) * x[i];
   write('s=', s);
end.