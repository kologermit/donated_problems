const n = 100;
var x: array[1 .. n] of real;
var i: integer;
var s, t: real;
begin
	for i := 1 to n do // Ввод
		read(x[i]); // Ввод
	t := 1 / x[1];
	s := 0;
	for i := 1 to n - 1 do
	begin
		t := t * x[i] * x[i];
		t := t / x[i + 1] * i;
		s := s + t; 
	end;
	write('s=', s); // Вывод
end.