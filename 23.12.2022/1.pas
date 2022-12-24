uses ComplexCalculator;
var z, s, t: Complex;
var eps: real;
var k: integer;
function fact(n: integer): integer;
var i: integer;
begin
	fact := 1;
	for i := 1 to n do
		fact := fact * i;
end;
begin
	z := inputComplex(); // Ввод
	read(eps); // Ввод
	s := ComplexConstructor(0, 0);
	t := ComplexConstructor(1, 1);
	k := 1;
	while moduleComplex(t) > eps do
	begin
		t := powComplex(z, k);
		t := divisionComplex(t, ComplexConstructor(fact(2*k) * k, 0));
		s := sumComplex(s, t);
		k := k + 1;
	end;
	outputComplex('s=', s); // Вывод
end.