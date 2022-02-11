uses OurMath, OurArray, OurMatrix, OurFile;

const
  N = 2;
  M = 3;
  path = 'C:\Users\as44s\Desktop\Study\Pascal\OurModulesPascal\Modules\TestFile.txt';

var
  matr: matrix;
  arr: arrays;
  strs: strings;

begin
  //test OurFiles
  OurWriteFile(path, 'test');
  OurAddLine(path, 'test line');
  OurOutputFile(path); // test   test line
  OurWriteInArray(path, strs);
  Writeln(strs[1]); // test
  
  //test OurMath
  Writeln(OurPower(2, 3)); // 8
  Writeln(OurRingArea(2, 3)); // 15.707963267949
  Writeln(OurSumOfDigits(232131233211)); // 24
  Writeln(OurNod(33, 6)); // 3
  Writeln(OurFactorial(5)); // 120
  Writeln(OurFactorialSum(3)); // 9
  Writeln(OurHeron(2, 3, 4)); // 2.90473750965556
  Writeln(OurLengthByXy(3, 3, 4, 4)); // 1.4142135623731\
  Writeln(OurDecToNumSys(28477840, 16)); // 1b28990
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