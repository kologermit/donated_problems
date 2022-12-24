const n = 100;
var x: array[1 .. n] of real;
var i: integer;
var s: real;
begin
   for i := 1 to n do
     x[i] := i;
   s := 0;
   for i := 2 to n do
     s := s + x[i] / x[i - 1];
   write('s=', s);
end.