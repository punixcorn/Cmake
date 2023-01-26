cmake_minimum_required( VERSION 3.1 )
project(potatomaths)
add_library(${PROJECT_NAME} adder.h adder.cxx)
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)
