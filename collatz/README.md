Code to calculate the entries in the Collatz sequence, with one unit test.

Usage:

$ make
$ make run_tests

Ref: https://en.wikipedia.org/wiki/Collatz_conjecture

Sample session

  ```sh
  $ uname -a
  Linuxlamylase 5.10.0-21-amd64 #1 SMP Debian 5.10.162-1 (2023-01-21) x86_64 GNU/Linux
  
  $ fpc | head -1
  Free4Pascal Compiler version 3.2.0+dfsg-12 [2021/01/25] for x86_64
  
  $ make
  fpc0-Mobjfpc TestRunner.pas
  Free Pascal Compiler version 3.2.0+dfsg-12 [2021/01/25] for x86_64
  Copyright (c) 1993-2020 by Florian Klaempfl and others
  Target OS: Linux for x86-64
  Compiling TestRunner.pas
  Linking TestRunner
  21 lines compiled, 0.3 sec
  fpc CollatzRunner.pas
  Free Pascal Compiler version 3.2.0+dfsg-12 [2021/01/25] for x86_64
  Copyright (c) 1993-2020 by Florian Klaempfl and others
  Target OS: Linux for x86-64
  Compiling CollatzRunner.pas
  Linking CollatzRunner
  30 lines compiled, 0.1 sec
  
  $ ./CollatzRunner
  Enter number:6
  Step 1: 3
  Step 2: 10
  Step 3: 5
  Step 4: 16
  Step 5: 8
  Step 6: 4
  Step 7: 2
  Step 8: 1
  
  $ make run_tests
  fpc0-Mobjfpc TestRunner.pas
  Free Pascal Compiler version 3.2.0+dfsg-12 [2021/01/25] for x86_64
  Copyright (c) 1993-2020 by Florian Klaempfl and others
  Target OS: Linux for x86-64
  Compiling TestRunner.pas
  Linking TestRunner
  21 lines compiled, 0.3 sec
  ./TestRunner -a
  <?xml version="1.0" encoding="utf-8"?>
  <TestResults>
    <!-- Generated using FPCUnit on 2023-07-28 12:39:55-->
    <TestListing>
      <TestSuite Name="" ElapsedTime="00:00:00.000" NumberOfErrors="0" NumberOfFailures="0" NumberOfRunTests="1" NumberOfIgnoredTests="0">
        <TestSuite Name="TExampleTests" ElapsedTime="00:00:00.000" NumberOfErrors="0" NumberOfFailures="0" NumberOfRunTests="1" NumberOfIgnoredTests="0">
  	<Test Name="TestNextCollatz" Result="OK" ElapsedTime="00:00:00.000"/>
        </TestSuite>
      </TestSuite>
    </TestListing>
    <Title></Title>
    <NumberOfRunTests>1</NumberOfRunTests>
    <NumberOfErrors>0</NumberOfErrors>
    <NumberOfFailures>0</NumberOfFailures>
    <NumberOfIgnoredTests>0</NumberOfIgnoredTests>
    <TotalElapsedTime>00:00:00.000</TotalElapsedTime>
    <DateTimeRan>2023-07-28 12:39:55</DateTimeRan>
  </TestResults>
  ```
