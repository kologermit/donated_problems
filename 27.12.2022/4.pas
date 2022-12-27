uses ComplexCalculator, VectorComplexCalculator;
var a, b: VectorComplex;
begin
	write('a=');
	a := inputVectorComplex();
	write('b=');
	b := inputVectorComplex();
	writeln('|a*b|=', moduleComplex(scalarMultiplierVectorComplex(a, b)):1:10);
	if moduleComplex(scalarMultiplierVectorComplex(a, b)) > 5 then
		write('|a|=', moduleVectorComplex(a):1:10)
	else
		write('|b|=', moduleVectorComplex(b):1:10);
end.