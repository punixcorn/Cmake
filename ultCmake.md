# Cmake

## A minimal Project

a minial Project should have atleast these 3

```cmake
cmake_minimu_required(VERSION 3.2) # to manage Cmake version
project(MyApp) # the name of your project
add_exectuable(MyApp main.cxx)  # name of the executable and the source file(s)
```

this shows how you can add multiple executables and files

```cmake
cmake_minimum_required(VERSION 3.2)
# We don't use the C++ compiler, so don't let project()
# test for it in case the platform doesn't have one
project(MyApp VERSION 4.7.2 LANGUAGES C) # the VERSION & LANGUAGES are optional
# Primary tool for this project
add_executable(mainTool
    main.c
    debug.c   # Optimized away for release builds
)
# Helpful diagnostic tool for development and testing
add_executable(testTool testTool.c
```

## Executables

building an executable
complete form of `add_exectuable`

```cmake
add_executable(targetName [WIN32] [MACOSX_BUNDLE]
               [EXCLUDE_FROM_ALL]
              source1 [source2 ...]
)
```

- the WIN32 is only need if your on windows , and same for the MACOSX_BUNDLE
- EXCLUDE_FROM_ALL : a project can have many targets, but only few will be built , when no target is specified at build time, it builds all ( default ) if an executable is defined with this, it will not be included in the default build ( ALL )

## Libraries

building a Library
complete form of `add_library`

```cmake
add_library(targetName [STATIC | SHARED | MODULE ]
               [EXCLUDE_FROM_ALL]
              source1 [source2 ...]
)
```

- STATIC Specifies a static library or archive. On Windows, the default library name would be targetName.lib, while on Unix-like platforms, it would typically be libtargetName.a.
- SHARED Specifies a shared or dynamically linked library. On Windows, the default library name would be targetName.dll, on Apple platforms it would be libtargetName.dylib and on other Unix-like platforms it would typically be libtargetName.so. On Apple platforms, shared libraries can also be marked as frameworks, a topic covered in Section 22.3, “Frameworks”.
- MODULE Specifies a library that is somewhat like a shared library, but is intended to be loaded dynamically at run-time rather than being linked directly to a library or executable.

the lib type is optional unless needed
you can make it a shared library by

```cmake
set(BUILD_SHARED_LIBS YES)
```

or command line argument

```bash
cmake -DBUILD_SHARED LIBS=YES /path/to/source
```

### Linking libraries

this is a way to tell your cmake to build with a library added
eg would be a lib you just built eariler

```cmake
target_link_libraries(targetName
     <PRIVATE|PUBLIC|INTERFACE> item1 [item2 ...]
    [<PRIVATE|PUBLIC|INTERFACE> item3 [item4 ...]]
    ...
```

- PRIVATE : Private dependencies specify that library A uses library B in its own internal implementation. Anything else that links to library A doesn’t need to know about B because it is an internal
- PUBLIC :
  Public dependencies specify that not only does library A use library B internally, it also uses B in
  its interface. This means that A cannot be used without B, so anything that uses A will also have
  a direct dependency on B. An example of this would be a function defined in library A which has
  at least one parameter of a type defined and implemented in library B, so code cannot call the
  function from A without providing a parameter whose type comes from B.
- INTERFACE :
  Interface dependencies specify that in order to use library A, parts of library B must also be used. This differs from a public dependency in that library A doesn’t require B internally, it only
  uses B in its interface. An example of where this is useful is when working with library targets
  defined using the INTERFACE form of add_library(), such as when using a target to represent a header-only library's dependencies

  Example : over here, `ui` is linked to `collector` as public so even though `myApp` -> `collector`, it also links to `ui`, cus its public, but since `algo` and `engine` link to `collector` Private `myApp` can't access it

```cmake
add_library(collector src1.cpp)
add_library(algo src2.cpp)
add_library(engine src3.cpp)
add_library(ui src4.cpp)
add_executable(myApp main.cpp)
target_link_libraries(collector
    PUBLIC  ui
    PRIVATE algo engine
)
target_link_libraries(myApp PRIVATE collector)
```

## Variables

- setting a basice variable

```cmake
set(varName value [PARENT_SCOPE])
```

- Simple declearations && initialization

```cmake
set(myVar a b c)    # myVar = "a;b;c"
set(myVar a;b;c)    # myVar = "a;b;c"
set(myVar "a b c")  # myVar = "a b c"
set(myVar a b;c)    # myVar = "a;b;c"
set(myVar a "b c")  # myVar = "a;b c"
```

- Derefencing and using

```cmake
set(foo ab)               # foo   = "ab"
set(bar ${foo}cd)         # bar   = "abcd"
set(baz ${foo} cd)        # baz   = "ab;cd"
set(myVar ba)             # myVar = "ba"
set(big "${${myVar}r}ef") # big   = "${bar}ef" = "abcdef"
set(${foo} xyz)           # ab    = "xyz"
```

- Strings && multi-line strings

```cmake
set(myVar "goes here")
set(multiLine "First line ${myVar}
Second line with a \"quoted\" word")
```

- Scripts in Cmake starts with `[=[` ends with `]=]` or `shellScript`

```cmake
# Simple multi-line content with bracket syntax,
# no = needed between the square bracket markers
set(multiLine [[
First line
Second line
]])
# Bracket syntax prevents unwanted substitution
set(shellScript [=[
#!/bin/bash
[[ -n "${USER}" ]] && echo "Have USER"
]=])
# Equivalent code without bracket syntax
set(shellScript
"#!/bin/bash
[[ -n \"\${USER}\" ]] && echo \"Have USER\"
```

- unsetting a variable

```cmake
unset(myVar)
```

- Environment Variables
  cmake allows you to get and set Environment variables, environment variables are obtained using the `$ENV{varName}` and this can used like a normal `${myVar}`

```cmake
set(ENV{PATH} "$ENV{PATH}:/opt/myDir")
```

this is will unset right after cmake is done running, hence env vars are rarely useful

- Cache Varibales
  longer lasting and stays in CmakeCache.txt hence untill deleted the varables are still available

```cmake
set(varName value... CACHE type "docstring" [FORCE])
```

- CACHE : this must be specified to tell it that its a cached variable
- type : this must also be specified
  <br/>
  **Types**

| type     | function                                                  |
| -------- | --------------------------------------------------------- |
| BOOL     | on/off , true/false , 1/0                                 |
| FILEPATH | stores it as a path to a file                             |
| PATH     | stores a path to a directory                              |
| STRING   | Varibale treated like a string                            |
| INTERNAL | varibale is not intended to be made available to the user |

- setting a boolean value is so used that cmake has a special way for it

```cmake
option(optVar description [initalValue]) == set(optVar initalValue CACHE BOOL description)
```

- if initalValue is not set, it will 0
- _not that when you have 2 same values , normal and cached, cmake will take the normal one_
- _FORCE in set() will only override a cached value with the same name_

### Setting Cache Values on the command line

```bash
cmake -D myVar:type=someValue
```

example:

```bash
cmake -D foo:BOOL=ON ...
cmake -D "bar:STRING=This contains spaces" ...
cmake -D hideMe=mysteryValue ...
cmake -D helpers:FILEPATH=subdir/helpers.txt ...
```

- removing values from the cached
  removing values from the cached is done using the -U option
  _supports wild cards like \* and ?_

```bash
cmake -U 'help*' -U foo ...
```

# Page 30
