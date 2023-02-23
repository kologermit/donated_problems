const n = 100;
var x: array[1 .. 100] of real;
var i: integer;
var s: real;
begin
	for i := 1 to n do // Ввод
		read(x[i]); // Ввод
	s := 0;
	for i := 1 to 98 do
		s := s + x[i] * x[i + 2];
	write(s); // Вывод
end.