#!/bin/bash

# Extract PROGRAM_NAME from CMakeLists.txt (macOS compatible)
PROGRAM_NAME=$(grep 'set(PROGRAM_NAME' CMakeLists.txt | sed 's/.*set(PROGRAM_NAME "\([^"]*\)").*/\1/')

if [ -z "$PROGRAM_NAME" ]; then
    echo "Error: Could not find PROGRAM_NAME in CMakeLists.txt"
    echo "Make sure you have: set(PROGRAM_NAME \"YourProgramName\") in CMakeLists.txt"
    exit 1
fi

EXECUTABLE_PATH="../bin/${PROGRAM_NAME}"

if [ ! -f "$EXECUTABLE_PATH" ]; then
    echo "Error: Executable not found at $EXECUTABLE_PATH"
    echo "Make sure to run ./cmk.sh and ./bld.sh first"
    exit 1
fi

echo "Running ${PROGRAM_NAME}..."
"$EXECUTABLE_PATH"
