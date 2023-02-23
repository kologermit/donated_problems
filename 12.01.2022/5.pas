uses ComplexCalculator;
var z, w, t: Complex;
var k: integer;
begin
	write('z='); z := inputComplex(); // Ввод
	w.r := 0; w.c := 0; t.r := 1;
	k := 0;
	for  k:= 0 to 30 do
	begin
		t := multiplierComplex(t, z);
		w := sumComplex(t, w);
	end;
	outputComplex('w=', w); // Вывод
end.