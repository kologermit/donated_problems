const n = 200;
var x: array[1 .. n] of real;
var i: integer;
var max: real;
begin
	for i := 1 to n do // Ввод
		read(x[i]); // Ввод
	max := x[2];
	i := 5;
	while i <= 200 do
	begin
		if x[i] > max then
			max := x[i];
		i := i + 3;
	end;
	write('max=', max:1:4); // Вывод
end.