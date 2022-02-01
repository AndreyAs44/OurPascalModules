uses OurMath, OurArray, OurMatrix;

const
  N = 2;
  M = 3;

var
  matr: matrix;
  arr: arrays;

begin
  //test OurMath
  Writeln(OurPower(2, 3)); // 8
  Writeln(OurRingArea(2, 3)); // 15.707963267949
  Writeln(OurSumOfDigits(231)); // 6
  Writeln(OurNod(33, 6)); // 3
  Writeln(OurFactorial(5)); // 120
  Writeln(OurFactorialSum(3)); // 9
  Writeln(OurHeron(2, 3, 4)); // 2.90473750965556
  Writeln(OurLengthByXy(3, 3, 4, 4)); // 1.4142135623731\
  Writeln(OurDecToNumSys(20, 16)); // 14
  Writeln(OurNumSysToDec(10100, 2)); // 20
  
  //test OurArray
  OurRandomFillingArray(N, arr);
  OurArrayOutput(N, arr);
  OurUserFillingArray(N, arr);
  OurArrayOutput(N, arr);
  
  //test OurMatrix
  OurRandomFillingMatrix(N, M, matr);
  OurMatrixOutput(N, M, matr);
  OurUserFillingMatrix(N, M, matr);
  OurMatrixOutput(N, M, matr);
end.