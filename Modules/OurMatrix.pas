unit OurMatrix;

interface

const
  Max = 200; //MAX SIZE MATRIX!!! YOU CAN CHANGE NUM
  RandNum = 100;

type
  Matrix = array[1..max, 1..max] of real;

procedure OurUserFillingMatrix(n, m: integer; var matr: matrix);
procedure OurRandomFillingMatrix(n, m: integer; var matr: matrix);
procedure OurMatrixOutput(n, m: integer; var matr: matrix);

implementation
// User Filling Matrix
procedure OurUserFillingMatrix;
var
  i, j: integer; // indexes
begin
  Writeln;
  Writeln('Input matrix ', n, 'x', m, ':');
  for i := 1 to n do // iterating the lines
    for j := 1 to m do // iterating the elements in a row
      readln(matr[i, j]); // keyboard input
end;
// Random Filling Matrix
procedure OurRandomFillingMatrix;
var
  i, j: integer; // indexes
begin
  Randomize();
  for i := 1 to n do // iterating the lines
    for j := 1 to m do // iterating the elements in a row
      matr[i, j] := Random(RandNum);
end;
// Matrix Output
procedure OurMatrixOutput;
var
  i, j: integer; // indexes
begin
  Writeln;
  Writeln('Output matrix ', n, 'x', m, ':');
  for i := 1 to n do // iterating the lines
  begin
    for j := 1 to m do // iterating the elements in a row
      write(matr[i, j], ' '); // output
    Writeln;
  end; 
end;

end.