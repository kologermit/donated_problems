const n = 100;
var x: array[1 .. n] of real;
var i: integer;
var s: real;
begin
  write('x=');
   for i := 1 to n do
     read(x[i]);
   s := 0;
   for i := 3 to n do
     s := s + (x[i - 2] + x[i - 1]) * x[i];
   write(s);
end.