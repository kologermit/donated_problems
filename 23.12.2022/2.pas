const n = 100;
var x: array[1 .. 100] of real;
var i: integer;
var p: real;
begin
	for i := 1 to n do // Ввод
		read(x[i]); // Ввод
	p := 1;
	for i := 3 to 100 do
	begin
		p := p * (x[i - 2] + x[i]);
		i := i + 1;
	end;
	write(p); // Вывод
end.