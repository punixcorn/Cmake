# Cmake turtorial

First how to **run** it

- **To create the makefile and compile**
  > You could build in where your source code is but it will be messy
  > So make a build directory or any to build stuff there

```bash
cd build # go into the build dir
cmake .. # cmake the upper folder, where the source code and cmakelists.txt is
make  or cmake --build . # compile, either works

# OR with newer versions
cmake -S . -B build # cmake the source files here into the build dir
cmake --build build # build/compile the build dir

```

- **To install**

```bash
#==> In the build directory
make install
# or
cmake --build . --target install
#or
cmake --install . # only for cmake 3.15+

#==> In project directory where your source file is
make -C build install
#or
cmake --build build --target install
#or
cmake --install build # cmake 3.15+
```

> an exmaple of the structure of the directory is
> first make a CMakeList.txt in your project directory where your source file is

```bash
.
├── build
├── CMakeLists.txt
└── main.cxx
```

**CMakeLists.txt** is where your cmake source code goes

---

# starting off with CMakeLists.txt

> **cmake_minimum_required**

```cmake
# the first most important line
cmake_minimum_required(VERSION 3.10)
# or for a range
cmake_minimum_required(VERSION 3.1...3.25)
```

> **project**

```bash
project( MyProject VERSION 1.0
    DESCRIPTION "this is a test project"
    LANGUAGES CXX )

#or
project ( folder name  )
```

> **making a executable**

```cmake
add_executable( executable-name/target source-file's' )
```

those are the 3 **most useful** lines to get a Cmake started and working
others are ::

> **making a library**

```cmake
add_library( executable-name STATIC/SHARED/MODULE source-file's' )
```

> **adding an include directory**

```cmake
target_include_directories( target/executable PUBLIC include )
```

# Variables and Caches

local varible is set like this

```cmake
set( My_variable "value" )
set ( My_list "one" "two" "three" "four" )
set ( My_list2 "one;two;three;four" )x
```

acesing the varible

```cmake
${My_variable}
```

setting the output bin files

```cmake
# Set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
```

# Flags

`CMAKE_CXX_STANDARD` for cpp to enable support for specific c++ standards
`CMAKE_CXX_STANDARD_REQUIRED` for make sure its required before building
to add use the `set()` function

```cmake

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

```
