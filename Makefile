# Makefile

# Compiler
CXX = g++

# Source file directory
SRC_DIR = src

# Build directory
BUILD_DIR = build

# Source file
SRC = $(SRC_DIR)/hello.cpp

# Executable name
TARGET = $(BUILD_DIR)/fuzz_target

# Compiler flags
CXXFLAGS = -Wall -g

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $@ $<

clean:
	rm -f $(TARGET)
