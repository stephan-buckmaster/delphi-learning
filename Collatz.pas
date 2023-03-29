program Collatz;

{$APPTYPE CONSOLE}

uses
  SysUtils;

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

    if n mod 2 = 0 then
      n := n div 2
    else
      n := 3 * n + 1;
  end;

  WriteLn(n);
  WriteLn('The sequence has reached 1.');
end.
