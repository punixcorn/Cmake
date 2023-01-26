# Cmake libaries_turtorial

#### making a simple libary

```cmake
cmake_minimum_required( VERSION 3.1 )
project(potatomaths)
//add libary instead or add executable to tell it to compile
//as a libary
add_library(${PROJECT_NAME} adder.h adder.cxx)
//just setting the output to ./bin
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)
```

```cmake
cmake_minimum_required(VERSION 3.13)
project(testpotato)
add_executable(${PROJECT_NAME} main.cxx)
//this is if i have a lib like i created above, i link
//the directories so it knows where to look for a libary
target_link_directories(${PROJECT_NAME} PRIVATE /home/potatojs/Desktop/cmake/libaries_turtorial/test1/cpp/lib)
// this is telling to link the libary 'potatomaths'
// which was created above
target_link_libraries(${PROJECT_NAME} potatomaths)
// telling it to set output to ./bin
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
```
