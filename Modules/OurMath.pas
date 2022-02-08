unit OurMath; // module name. must match the file name

interface // just write after that the functions that are available and their description (return value and parameters)

function OurPower(sa: double; sb: int64): double;
function OurRingArea(rad1, rad2: double): double;
function OurSumOfDigits(x: int64): int64;
function OurNod(one, two: int64): int64;
function OurFactorial(fac: int64): int64;
function OurFactorialSum(fac: int64): int64;
function OurHeron(a, b, c: double): double;
function OurLengthByXy(x1, y1, x2, y2: double): double;
function OurDecToNumSys(num, sys: int64): string;
function OurNumSysToDec(num, sys: int64): int64;

implementation // after that, we write how they work (you don't need to write pamphlets, the current will return if necessary. After the function, you can write var
// exponentiation, support for negation
function OurPower(sa: double; sb: int64): double;
var
  i: longint;
  x: double;
begin
  x := sa;
  if sb = 0 then OurPower := 1
  else if sb < 0 then
  begin
    i := 2;
    while i < abs(sb) + 1 do
    begin
      sa := sa * x;
      Inc(i);
    end;
    OurPower := 1 / sa;
  end
  else
  begin
    i := 2;
    while i < sb + 1 do
    begin
      sa := sa * x;
      Inc(i);
    end;
    OurPower := sa;
  end
end;
// the area of the ring
function OurRingArea(rad1, rad2: double): double;
begin
  OurRingArea := pi * (rad2 * rad2 - rad1 * rad1);
end;
// the sum of the digits of the number
function OurSumOfDigits(x: int64): int64;
var
  s: int64;
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
function OurNod(one, two: int64): int64;
var
  a, b: int64;
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
function OurFactorial(fac: int64): int64;
var
  i, f: Integer;
begin
  f := 1;
  i := 2;
  while i < fac + 1 do
  begin
    f := f * i;
    Inc(i);
  end;
  OurFactorial := f
end;
// factorial, summa
function OurFactorialSum(fac: int64): int64;
var
  i, f, s: int64;
begin
  f := 1;
  s := 1;
  i := 2;
  while i < fac + 1 do
  begin
    f := f * i;
    s := s + f;
    Inc(i);
  end;
  OurFactorialSum := s;
end;
// formula Heron's
function OurHeron(a, b, c: double): double;
var
  pp: double;
begin
  pp := (a + b + c) / 2;
  OurHeron := sqrt(pp * (pp - a) * (pp - b) * (pp - c));
end;
//finding the length by coordinates
function OurLengthByXy(x1, y1, x2, y2: double): double;
begin
  OurLengthByXy := sqrt(sqr(x2 - x1) + sqr(y2 - y1));
end;
// DecToNumSys
function OurDecToNumSys(num, sys: int64): string;
var
  s, zn: string;
begin
  zn := '0123456789ABCDEF';
  s := '';
  while num > 0 do
  begin
    s := zn[num mod sys + 1] + s;
    num := num div sys;
  end;
  OurDecToNumSys := s;
end;
// NumSysToDec
function OurNumSysToDec(num, sys: int64): int64;
var
  i, y, x, k: int64;
  s: double;
begin
  y := 0;
  s := 0;
  x := num;
  k := num;
  while x > 0 do
  begin
    x := x div 10;
    inc(y);
  end;
  
  i := 0;
  while i < y do
  begin
    s := (k mod 10) * OurPower(sys, i) + s;
    k := k div 10;
    Inc(i);
  end; 
  
  OurNumSysToDec := round(s);
end;
end. // end of the interface

