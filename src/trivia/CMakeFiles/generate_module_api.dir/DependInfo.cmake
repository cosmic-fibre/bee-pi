# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  )
# The set of files for implicit dependencies of each language:

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
  )

# The include file search paths:
set(CMAKE_C_TARGET_INCLUDE_PATH
  "src"
  "src/lib"
  "."
  "third_party/luajit/src"
  )
set(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
