unit OurMath; // module name. must match the file name

interface // just write after that the functions that are available and their description (return value and parameters)

function OurPower(sa: real; sb: integer): real;
function OurRingArea(rad1, rad2: real): real;
function OurSumOfDigits(x: integer): integer;
function OurNod(one, two: integer): integer;
function OurFactorial(fac: integer): integer;
function OurFactorialSum(fac: integer): integer;
function OurHeron(a, b, c: real): real;
function OurLengthByXy(x1, y1, x2, y2: real): real;
function OurDecToNumSys(num, sys: integer): integer;
function OurNumSysToDec(num, sys: integer): integer;

implementation // after that, we write how they work (you don't need to write pamphlets, the current will return if necessary. After the function, you can write var
// exponentiation, support for negation
function OurPower(sa: real; sb: integer): real;
var
  i: integer;
  x: real;
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
function OurRingArea(rad1, rad2: real): real;
begin
  OurRingArea := pi * (rad2 * rad2 - rad1 * rad1);
end;
// the sum of the digits of the number
function OurSumOfDigits(x: integer): integer;
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
function OurNod(one, two: integer): integer;
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
function OurFactorial(fac: integer): integer;
var
  i, f: Integer;
begin
  f := 1;
  for i := 2 to fac do f := f * i;
  OurFactorial := f
end;
// factorial, summa
function OurFactorialSum(fac: integer): integer;
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
// formula Heron's
function OurHeron(a, b, c: real): real;
var
  pp: real;
begin
  pp := (a + b + c) / 2;
  OurHeron := sqrt(pp * (pp - a) * (pp - b) * (pp - c));
end;
//finding the length by coordinates
function OurLengthByXy(x1, y1, x2, y2: real): real;
begin
  OurLengthByXy := sqrt(sqr(x2 - x1) + sqr(y2 - y1));
end;
// DecToNumSys
function OurDecToNumSys(num, sys: integer): integer;
var
  s, zn: string;
  code, nn: integer;
begin
  zn := '0123456789ABCDEF';
  s := '';
  while num > 0 do
  begin
    s := zn[num mod sys + 1] + s;
    num := num div sys;
  end;
  Val(s, nn, code);
  OurDecToNumSys := nn;
end;
// NumSysToDec
function OurNumSysToDec(num, sys: integer): integer;
var
  i, y, x, n, k: integer;
  s: real;
begin
  x := num;
  k := num;
  while x > 0 do
  begin
    x := x div 10;
    inc(y);
  end;
  for i := 0 to y - 1 do
  begin
    s := (k mod 10) * OurPower(sys, i) + s;
    k := k div 10;
  end;
  OurNumSysToDec := round(s);
end;
end. // end of the interface

