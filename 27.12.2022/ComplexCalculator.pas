unit ComplexCalculator;
interface

type
  Complex = record
    r, c: real;
end;

function ComplexConstructor(r, c: real): Complex;
function ComplexConstructor(r: real): Complex;
function ComplexConstructor(a: Complex): Complex;
function sumComplex(a, b: Complex): Complex;
function minusComplex(a, b: Complex): Complex;
function multiplierComplex(a, b: Complex): Complex;
function multiplierComplex(a: Complex; b: real): Complex;
function divisionComplex(first, second: Complex): Complex;
function oneDivisionComplex(a: Complex): Complex;
function moduleComplex(a: Complex): real;
function powComplex(a: Complex; b: integer): Complex;
function sinComplex(x: Complex): Complex;
function cosComplex(x: Complex): Complex;
function inputComplex(): Complex;
procedure outputComplex(beg: string; a: Complex);

implementation

function fact(n: integer): integer;
var i: integer;
begin
    fact := 1;
    for i := 1 to n do
        fact := fact * i;
end;

function pow(a: real; p: integer): real;
var i: integer;
begin
    pow := 1;
    for i := 1 to p do
        pow := pow * a;
end;

function ComplexConstructor(r, c: real): Complex;
begin
    ComplexConstructor.r := r;
    ComplexConstructor.c := c;
end;

function ComplexConstructor(r: real): Complex;
begin
    ComplexConstructor.r := r;
    ComplexConstructor.c := 0;
end;

function ComplexConstructor(a: Complex): Complex;
begin
    ComplexConstructor := a;
end;

function sumComplex(a, b: Complex): Complex;
begin
    sumComplex.r := a.r + b.r;
    sumComplex.c := a.c + b.c; 
end;

function minusComplex(a, b: Complex): Complex;
begin
    minusComplex.r := a.r - b.r;
    minusComplex.c := a.c - b.c; 
end;

function multiplierComplex(a, b: Complex): Complex;
begin
    multiplierComplex.r := a.r * b.r - a.c * b.c;
    multiplierComplex.c := a.r * b.c + a.c * b.r;
end;

function multiplierComplex(a: Complex; b: real): Complex;
begin
    multiplierComplex.r := a.r * b;
    multiplierComplex.c := a.c * b;
end;

function divisionComplex(first, second: Complex): Complex;
var a, b, c, d: real;
begin
    a := first.r;
    b := first.c;
    c := second.r;
    d := second.c;
    divisionComplex.r := (a*c + b*d) / (c*c + d*d);
    divisionComplex.c := (b*c - d*a) / (c*c + d*d);
end;

function oneDivisionComplex(a: Complex): Complex;
var one: Complex;
begin
    one.r := 1;
    one.c := 0;
    oneDivisionComplex := divisionComplex(one, a);
end;

function moduleComplex(a: Complex): real;
begin
    moduleComplex := sqrt(a.r*a.r + a.c*a.c);
end;

function powComplex(a: Complex; b: integer): Complex;
var i: integer;
begin
    powComplex := a;
    for i := 2 to b do
        powComplex := multiplierComplex(powComplex, a);
end;

function sinComplex(x: Complex): Complex;
var i: integer; t: Complex;
begin
    sinComplex := ComplexConstructor(0, 0);
    i := 0;
    if moduleComplex(x) <> 0 then
        t := divisionComplex(ComplexConstructor(1, 0), x)
    else
        sinComplex := ComplexConstructor(1, 0);
    while i <= 10 do
    begin
        t := multiplierComplex(t, ComplexConstructor(-1, 0));
        if i <> 0 then
            t := divisionComplex(t, ComplexConstructor(2*i, 0));
        t := multiplierComplex(t, x);
        t := divisionComplex(t, ComplexConstructor(2*i + 1, 0));
        t := multiplierComplex(t, x);
        i := i + 1;
        sinComplex := sumComplex(sinComplex, t);
    end;
end;

function cosComplex(x: Complex): Complex;
var i: integer; t: Complex;
begin
    cosComplex := ComplexConstructor(0, 0);
    i := 0;
    if moduleComplex(x) <> 0 then
        t := divisionComplex(ComplexConstructor(-1, 0), powComplex(x, 2));
    while i <= 10 do
    begin
        t := multiplierComplex(t, ComplexConstructor(-1, 0));
        t := multiplierComplex(t, x);
        if i > 0 then
            t := divisionComplex(t, ComplexConstructor(2*i - 1, 0));
        t := multiplierComplex(t, x);
        if i > 0 then
            t := divisionComplex(t, ComplexConstructor(2*i, 0));
        cosComplex := sumComplex(cosComplex, t);
        i := i + 1;
    end;
end;

function inputComplex(): Complex;
begin
    write('r=');
    read(inputComplex.r);
    write('c=');
    read(inputComplex.c);
end;

procedure outputComplex(beg: string; a: Complex);
begin
    writeln(beg, a.r:1:4, '+', a.c:1:4, 'i');
end;

end.