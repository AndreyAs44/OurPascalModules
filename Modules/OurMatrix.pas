unit OurMatrix;

interface

const
  Max = 9999; //MAX SIZE MATRIX!!! YOU CAN CHANGE NUM
  RandNum = 100;

type
  Matrix = array[1..max, 1..max] of double;

procedure OurUserFillingMatrix(n, m: int64; var matr: matrix);
procedure OurRandomFillingMatrix(n, m: int64; var matr: matrix);
procedure OurMatrixOutput(n, m: int64; var matr: matrix);

implementation
// User Filling Matrix
procedure OurUserFillingMatrix(n, m: int64; var matr: matrix);
var
  i, j: int64;
begin
  Writeln;
  Writeln('Input matrix ', n, 'x', m, ':');
  for i := 1 to n do
    for j := 1 to m do
      readln(matr[i, j]);
end;
// Random Filling Matrix
procedure OurRandomFillingMatrix(n, m: int64; var matr: matrix);
var
  i, j: int64;
begin
  Randomize();
  for i := 1 to n do
    for j := 1 to m do
      matr[i, j] := Random(RandNum);
end;
// Matrix Output
procedure OurMatrixOutput(n, m: int64; var matr: matrix);
var
  i, j: int64;
begin
  Writeln;
  Writeln('Output matrix ', n, 'x', m, ':');
  for i := 1 to n do
  begin
    for j := 1 to m do 
      write(matr[i, j], ' ');
    Writeln;
  end; 
end;

end.