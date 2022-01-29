uses OurMath, OurArray, OurMatrix;

const
  N = 2; M = 3;

var
  matr: matrix;
  arr: arrays;

begin
  //математика (в комментариях требуемые результаты тестов)
  Writeln(OurPower(2, 3)); // 8
  Writeln(OurRingArea(2, 3)); // 15.707963267949
  Writeln(OurSumOfDigits(231)); // 6
  Writeln(OurNod(33, 6)); // 3
  Writeln(OurFactorial(5)); // 120
  Writeln(OurFactorialSum(3)); // 9
  
  //тест модуля массивов
  OurRandomFillingArray(N, arr);
  OurArrayOutput(N, arr);
  OurUserFillingArray(N, arr);
  OurArrayOutput(N, arr);
  
  //тест модуля матриц
  OurRandomFillingMatrix(N, M, matr);
  OurMatrixOutput(N, M,  matr);
  OurUserFillingMatrix(N, M, matr);
  OurMatrixOutput(N, M,  matr);
end.