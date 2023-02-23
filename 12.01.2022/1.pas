uses ComplexCalculator;
var z, s, t: Complex;
var eps: real;
var k: integer;
begin
	write('z='); z := inputComplex(); // Ввод
	write('eps='); read(eps); // Ввод
	s.r := 0; s.c := 0; t.r := 1;
	k := 0;
	while moduleComplex(t) >= eps do
	begin
		if k > 0 then
		begin
			t := multiplierComplex(t, ComplexConstructor(2, 0));
			t := divisionComplex(t, ComplexConstructor(k, 0));
			t := multiplierComplex(t, z);
		end;
		s := sumComplex(s, t);
		k := k + 1;
	end;
	outputComplex('s=', s); // Вывод
end.