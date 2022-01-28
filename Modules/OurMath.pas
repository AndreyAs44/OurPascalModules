unit OurMath; // module name. must match the file name

interface // just write after that the functions that are available and their description (return value and parameters)

function OurPower(sa: real; sb: integer): real;
function OurRingArea(rad1, rad2: real): real;
function OurSumOfDigits(x: integer): integer;

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
end. // end of the interface

