var i: integer;
var s: real;
begin
   s := 0;
   for i := 2 to 1000 do
     s := s + (i - 1) / i;
   write('s=', s);
end.