unit CTest;

{$mode objfpc}{$H+}

interface

uses
  fpcunit,
  testregistry,
  Collatz;

type
  TExampleTests = class(TTestCase)
  published
    procedure TestNextCollatz;
  end;

implementation

procedure TExampleTests.TestNextCollatz;
begin
  AssertEquals('NextCollatz(1) should return 4', 4, NextCollatz(1));
  AssertEquals('NextCollatz(2) should return 1', 1, NextCollatz(2));
  AssertEquals('NextCollatz(6) should return 3', 3, NextCollatz(6));
  AssertEquals('NextCollatz(7) should return 22', 22, NextCollatz(7));
end;

initialization

  RegisterTests([TExampleTests]);

end.
