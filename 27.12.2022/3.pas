const n = 100;
var x: array[1 .. n] of real;
var k: integer;
var p: real;
begin
	for k := 1 to n do // Ввод
		read(x[k]); // Ввод
	p := 1;
	for k := 1 to 100 do
		p := p * (x[k] * x[2*k + 1] / (k * (2*k + 1)));
	write('p=', p); // Вывод
end.