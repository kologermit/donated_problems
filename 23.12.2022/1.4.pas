const n = 10;
var a: array[1 .. n, 1 .. n] of real;
var i, j, count: integer;
var sum, avg: real;
begin
	for i := 1 to n do // Ввод
		for j := 1 to n do // Ввод
			read(a[i][j]); // Ввод
	count := 2*n - 1;
	sum := 0;
	for i := 1 to n do
		sum := sum + a[i][n];
	for j := 1 to n - 1 do
		sum := sum + a[1][j];
	avg := sum / count;
	write('avg=', avg); // Вывод
end.