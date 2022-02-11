unit OurFile;

interface

const
  Max = 99999; //MAX SIZE MATRIX!!! YOU CAN CHANGE NUM

type
  strings = array[1..max] of string;

procedure OurOutputFile(path: string);
procedure OurWriteFile(path, s: string);
procedure OurAddLine(path, s: string);
procedure OurWriteInArray(path: string; var strs: strings);

implementation

uses OurArray;

// OurOutputFile
procedure OurOutputFile(path: string);
var
  f: text;
  s: string;
begin
  s := '';
  Assign(f, path);
  Reset(f);
  while not EOF(f) do 
  begin
    readln(f, s);
    writeln(s);
  end;
  Close(f);
end;
// Add all in file 
procedure OurWriteFile(path, s: string);
var
  f: text;
begin
  Assign(f, path);
  rewrite(f);
  write(f, s);
  Close(f);
end;
// Add line in file 
procedure OurAddLine(path, s: string);
var
  f: text;
begin
  Assign(f, path);
  append(f);
  writeln(f);
  writeln(f, s);
  Close(f);
end;
// Return file in strings array
procedure OurWriteInArray(path: string; var strs: strings);
var
  f: text;
  t: string;
  i: int64;
begin
  i := 1;
  Assign(f, path);
  Reset(f);
  while not EOF(f) do 
  begin
    readln(f, t);
    strs[i] := t;
    Inc(i);
  end;
  Close(f);
end;
end.