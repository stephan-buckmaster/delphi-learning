unit Collatz;

{$mode objfpc}{$H+}

interface

function NextCollatz(x: integer): integer;

implementation

function NextCollatz(x: integer): integer;
begin
    if x mod 2 = 0 then
      x := x div 2
    else
      x := 3 * x + 1;
    Result := x;
end;

end.
