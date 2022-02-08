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
  i := 1;
  while i < n + 1 do
  begin
    j := 1;
    while j < m + 1 do
      begin
      readln(matr[i, j]);
      Inc(j);
      end; 
    Inc(i);
  end; 
end;
// Random Filling Matrix
procedure OurRandomFillingMatrix(n, m: int64; var matr: matrix);
var
  i, j: int64;
begin
  Randomize();
  i := 1;
  while i < n + 1 do
  begin
    j := 1;
    while j < m + 1 do
    begin
      matr[i, j] := Random(RandNum);
      Inc(j);
      end; 
    Inc(i);
  end;
end;
// Matrix Output
procedure OurMatrixOutput(n, m: int64; var matr: matrix);
var
  i, j: int64;
begin
  Writeln;
  Writeln('Output matrix ', n, 'x', m, ':');
  i := 1;
  while i < n + 1 do
  begin
    j := 1;
    while j < m + 1 do
    begin
      write(matr[i, j], ' ');
      Inc(j);
    end; 
  Writeln;
  Inc(i);
  end;
end;
end.