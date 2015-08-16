# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "C"
  "CXX"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_C
  "/home/rifto/bee/src/assoc.c" "/home/rifto/bee/src/CMakeFiles/core.dir/assoc.c.o"
  )
set(CMAKE_C_COMPILER_ID "GNU")
set(CMAKE_DEPENDS_CHECK_CXX
  "/home/rifto/bee/src/coro.cc" "/home/rifto/bee/src/CMakeFiles/core.dir/coro.cc.o"
  "/home/rifto/bee/src/exception.cc" "/home/rifto/bee/src/CMakeFiles/core.dir/exception.cc.o"
  "/home/rifto/bee/src/fiber.cc" "/home/rifto/bee/src/CMakeFiles/core.dir/fiber.cc.o"
  "/home/rifto/bee/src/memory.cc" "/home/rifto/bee/src/CMakeFiles/core.dir/memory.cc.o"
  "/home/rifto/bee/src/object.cc" "/home/rifto/bee/src/CMakeFiles/core.dir/object.cc.o"
  "/home/rifto/bee/src/say.cc" "/home/rifto/bee/src/CMakeFiles/core.dir/say.cc.o"
  )
set(CMAKE_CXX_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS
  "CORO_SJLJ"
  "_FILE_OFFSET_BITS=64"
  "_GNU_SOURCE"
  "__STDC_CONSTANT_MACROS=1"
  "__STDC_FORMAT_MACROS=1"
  "__STDC_LIMIT_MACROS=1"
  )

# Targets to which this target links.
set(CMAKE_TARGET_LINKED_INFO_FILES
  "/home/rifto/bee/src/lib/salad/CMakeFiles/salad.dir/DependInfo.cmake"
  "/home/rifto/bee/src/lib/small/CMakeFiles/small.dir/DependInfo.cmake"
  "/home/rifto/bee/CMakeFiles/ev.dir/DependInfo.cmake"
  "/home/rifto/bee/CMakeFiles/coro.dir/DependInfo.cmake"
  )

# The include file search paths:
set(CMAKE_C_TARGET_INCLUDE_PATH
  "src"
  "src/lib"
  "."
  "third_party/luajit/src"
  "third_party"
  "third_party/coro"
  "third_party/gopt"
  )
set(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
