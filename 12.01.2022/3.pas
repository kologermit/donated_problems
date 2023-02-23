const n = 100;
var x: array[1 .. 100] of real;
var i: integer;
var s: real;
begin
	for i := 1 to n do // Ввод
		read(x[i]); // Ввод
	s := 0;
	for i := 1 to 100 do
		if i mod 2 = 0 then
			s := s + 2 * x[i]
		else
			s := s + x[i];
	write(s); // Вывод
end.