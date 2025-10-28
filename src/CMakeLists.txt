cmake_minimum_required(VERSION 3.10)

# Define program name once here
set(PROGRAM_NAME "Test")

project(${PROGRAM_NAME} C)

set(CMAKE_C_STANDARD 23)
set(CMAKE_C_STANDARD_REQUIRED ON)

find_package(SDL2 REQUIRED)

file(GLOB SOURCES
    CONFIGURE_DEPENDS
    *.c
)

# Use the variable everywhere
add_executable(${PROGRAM_NAME} ${SOURCES})
target_include_directories(${PROGRAM_NAME} PRIVATE ${SDL2_INCLUDE_DIRS})
target_link_libraries(${PROGRAM_NAME} ${SDL2_LIBRARIES})
