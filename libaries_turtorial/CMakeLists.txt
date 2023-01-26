cmake_minimum_required(VERSION 3.1)
project(libsc)
add_executable(${PROJECT_NAME} main.cxx)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED true)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
install(TARGETS ${PROJECT_NAME} DESTINATION bin)

