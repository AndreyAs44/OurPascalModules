unit MyMath; // название модуля. должно совпадать с названием файла

interface // просто пишем после этого функции которые доступны и их описание (возвр значение и параметры)
function MyPower(sa: real; sb: integer): real;
function CircleS(rad1, rad2: real): real;

implementation // после этого пишем как они работают (писать памаетры не надо, ток возвр знач если надо. После функции можно писать вар
// площадь кольца
function CircleS: real; 
begin
  CircleS := pi * (rad1 * rad1 - rad2 * rad2);
end;

// возведение в степень,поддержка отрицания
function MyPower: real;
var i: integer; x: real;
begin
  x := sa;
  if sb = 0 then MyPower := 1
  else if sb<0 then
  begin
    for i := 2 to abs(sb) do sa := sa * x;
    MyPower := 1 / sa;
  end
  else
  begin
    for i := 2 to sb do sa := sa * x;
    MyPower := sa;
  end
end;
end. // конец интерфейса

