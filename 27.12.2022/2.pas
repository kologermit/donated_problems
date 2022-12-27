var z, t, s: real;
var k: integer;
begin
	read(z); // Ввод
	s := 0;
	t := 1;
	for k := 0 to 10 do
	begin
		t := t * z / (k + 1);
		s := s + t * k;
	end;
	write('s=', s); // Вывод
end.