#!/bin/bash
echo "Running CMAKE for SDL2 project..."

# clean cache
rm -rf ../bin/CMakeCache.txt ../bin/CMakeFiles/

cmake -S . -B ../bin

echo "CMake configuration complete!"
