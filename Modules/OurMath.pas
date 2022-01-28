unit OurMath; // название модуля. должно совпадать с названием файла

interface // просто пишем после этого функции которые доступны и их описание (возвр значение и параметры)
function OurPower(sa: real; sb: integer): real;
function OurCircleS(rad1, rad2: real): real;

implementation // после этого пишем как они работают (писать памаетры не надо, ток возвр знач если надо. После функции можно писать вар
// площадь кольца
function OurCircleS: real; 
begin
  OurCircleS := pi * (rad1 * rad1 - rad2 * rad2);
end;

// возведение в степень,поддержка отрицания
function OurPower: real;
var i: integer; x: real;
begin
  x := sa;
  if sb = 0 then OurPower := 1
  else if sb<0 then
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
end. // конец интерфейса

