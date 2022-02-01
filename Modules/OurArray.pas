unit OurArray;

interface

const
  Max = 99999; //MAX SIZE MATRIX!!! YOU CAN CHANGE NUM
  RandNum = 100;

type
  Arrays = array[1..max] of double;

procedure OurUserFillingArray(n: int64; var arr: Arrays);
procedure OurRandomFillingArray(n: int64; var arr: Arrays);
procedure OurArrayOutput(n: int64; var arr: Arrays);

implementation
// User Filling Array
procedure OurUserFillingArray(n: int64; var arr: Arrays);
var
  i: int64;
begin
  Writeln;
  Writeln('Input array ', n, 'x:');
  for i := 1 to n do
    readln(arr[i]);
end;
// Random Filling Array
procedure OurRandomFillingArray(n: int64; var arr: Arrays);
var
  i: int64;
begin
  Randomize();
  for i := 1 to n do
    arr[i] := Random(RandNum);
end;
// Array Output
procedure OurArrayOutput(n: int64; var arr: Arrays);
var
  i: int64;
begin
  Writeln;
  Writeln('Output array ', n, 'x:');
  for i := 1 to n do
    Write(arr[i], ' ');
  Writeln;
end;

end.