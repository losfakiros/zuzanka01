# cmake_minimum_required(VERSION <specify CMake version here>)
project(zuzanka01 C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -W -Wall -Wextra -pedantic")

add_executable(zuzanka01 main.c)