unit OurArray;

interface

const
  Max = 99999; //MAX SIZE ARRAY!!! YOU CAN CHANGE NUM
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
  i := 1;
  while i < n + 1 do
  begin
    readln(arr[i]);
    Inc(i);
  end;    
end;
// Random Filling Array
procedure OurRandomFillingArray(n: int64; var arr: Arrays);
var
  i: integer;
begin
  Randomize();
  i := 1;
  while i < n + 1 do
  begin
    arr[i] := Random(RandNum);
    Inc(i);
  end; 
end;
// Array Output
procedure OurArrayOutput(n: int64; var arr: Arrays);
var
  i: integer;
begin
  Writeln;
  Writeln('Output array ', n, 'x:');
  i := 1;
  while i < n + 1 do
  begin
    Write(arr[i], ' ');
    Inc(i);
  end; 
  Writeln;
end;
end.