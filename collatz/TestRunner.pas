program TestRunner;

{$mode objfpc}{$H+}

uses
  fpcunit, testregistry, ConsoleTestRunner, CTest;

var
  Application : TTestRunner;

begin
  Application := TTestRunner.Create(nil);
  try
    Application.Initialize;
    Application.Run;
  finally
    Application.Free;
  end;
end.


