unit OurArray;

interface

const
  Max = 200; //MAX SIZE MATRIX!!! YOU CAN CHANGE NUM
  RandNum = 100;

type
  Arrays = array[1..max] of real;

procedure OurUserFillingArray(n: integer; var arr: Arrays);
procedure OurRandomFillingArray(n: integer; var arr: Arrays);
procedure OurArrayOutput(n: integer; var arr: Arrays);

implementation
// User Filling Array
procedure OurUserFillingArray;
var
  i: integer; // index
begin
  Writeln;
  Writeln('Input array ', n, 'x:');
  for i := 1 to n do // iterating the elements 
    readln(arr[i]); // keyboard input
end;
// Random Filling Array
procedure OurRandomFillingArray;
var
  i: integer; // index
begin
  Randomize();
  for i := 1 to n do // iterating the elements 
    arr[i] := Random(RandNum); // random
end;
// Array Output
procedure OurArrayOutput;
var
  i: integer; // index
begin
  Writeln;
  Writeln('Output array ', n, 'x:');
  for i := 1 to n do // iterating the elements
    Write(arr[i], ' ');
  
  Writeln;
end;

end.