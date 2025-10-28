#!/bin/bash
echo "Building for SDL2..."

cmake --build ../bin/

# Extract program name for helpful message (macOS compatible)
PROGRAM_NAME=$(grep 'set(PROGRAM_NAME' CMakeLists.txt | sed 's/.*set(PROGRAM_NAME "\([^"]*\)").*/\1/' 2>/dev/null)

if [ -n "$PROGRAM_NAME" ]; then
    echo "Build complete! Run with: ./run.sh or ../bin/${PROGRAM_NAME}"
else
    echo "Build complete!"
fi
