program Collatz;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function NextCollatz(x: integer): integer;
begin
    if x mod 2 = 0 then
      x := x div 2
    else
      x := 3 * x + 1;
    Result := x;
end;

var
  n: integer;
  

begin
  if ParamCount <> 1 then
    begin
      Write('Enter a positive integer: ');
      ReadLn(n);
    end
  else
    begin 
      n := StrToIntDef(ParamStr(1), 0);
    end;

  if n <= 0 then
  begin
    WriteLn('Error: Please enter a positive integer.');
    Halt;
  end;

  while n <> 1 do
  begin
    WriteLn(n);
    n := NextCollatz(n);
  end;

  WriteLn(n);
  WriteLn('The sequence has reached 1.');
end.
