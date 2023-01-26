cmake_minimum_required(VERSION 3.10...3.25)
project(getSqrt)

add_executable(${PROJECT_NAME} main.cxx)

set( CMAKE_CXX_STANDARD 11 )
set (CMAKE_CXX_STANDARD_REQUIRED true)

install( TARGETS ${PROJECT_NAME} DESTINATION bin )

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
