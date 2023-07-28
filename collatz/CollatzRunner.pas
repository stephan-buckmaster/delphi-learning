program CollatzRunner;

uses Collatz;

VAR n: Integer; // Don't overdo it
VAR count: Integer; // Don't overdo it

BEGIN
  WRITE('Enter number:');
  readLn(n);
  
  if n < 1 then
  BEGIN
    writeLn('Need number greater than one.');
    halt(1);
  END;

  
  count := 1;
  WHILE n > 1
  DO
  BEGIN
    n := NextCollatz(n);
    writeLn('Step ', count, ': ',  n);
    count := count + 1;
  END;
END.
