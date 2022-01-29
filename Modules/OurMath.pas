unit OurMath; // module name. must match the file name

interface // just write after that the functions that are available and their description (return value and parameters)

function OurPower(sa: real; sb: integer): real;
function OurRingArea(rad1, rad2: real): real;
function OurSumOfDigits(x: integer): integer;
function OurNod(one, two: integer): integer;
function OurFactorial(fac: integer): integer;
function OurFactorialSum(fac: integer): integer;

implementation // after that, we write how they work (you don't need to write pamphlets, the current will return if necessary. After the function, you can write var
// exponentiation, support for negation
function OurPower: real;
var
  i: integer; x: real;
begin
  x := sa;
  if sb = 0 then OurPower := 1
  else if sb < 0 then
  begin
    for i := 2 to abs(sb) do sa := sa * x;
    OurPower := 1 / sa;
  end
  else
  begin
    for i := 2 to sb do sa := sa * x;
    OurPower := sa;
  end
end;
// the area of the ring
function OurRingArea: real;
begin
  OurRingArea := pi * (rad2 * rad2 - rad1 * rad1);
end;
// the sum of the digits of the number
function OurSumOfDigits: integer;
var
  s: integer;
begin
  s := 0;
  while x > 10 do
  begin
    s := s + (x mod 10);
    x := x div 10;
  end;
  OurSumOfDigits := s + x;
end;
//Nod
function OurNod: integer;
var
  a, b, c: integer;
begin
  a := one;
  b := two; 
  repeat
    if a > b then
      a := a mod b
    else
      b := b mod a;
  until (a = 0) or (b = 0);
  OurNod := a + b;
end;
// factorial
function OurFactorial: Integer;
var
  i, f: Integer;
begin
  f := 1;
  for i := 2 to fac do f := f * i;
  OurFactorial := f
end;
// factorial, summa
function OurFactorialSum: Integer;
var
  i, f, s: Integer;
begin
  f := 1;
  s := 1;
  for i := 2 to fac do 
  begin
    f := f * i;
    s := s + f;
  end;
  OurFactorialSum := s;
end;
end. // end of the interface

