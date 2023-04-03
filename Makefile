# Makefile

# Variables
FPC = fpc
FLAGS = -Mobjfpc
TEST_RUNNER = TestRunner
SOURCES = Collatz.pas CTest.pas

# Targets
all: build

build: $(SOURCES)
	$(FPC) $(FLAGS) $(TEST_RUNNER).pas

run_tests: build
	./$(TEST_RUNNER) -a

clean:
	rm -f $(TEST_RUNNER) $(TEST_RUNNER).o MyTestUnit.o

.PHONY: all build run_tests clean
