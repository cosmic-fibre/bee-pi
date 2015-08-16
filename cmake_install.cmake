# Install script for directory: /home/rifto/bee

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bee" TYPE FILE FILES
    "/home/rifto/bee/third_party/luajit/src/lua.h"
    "/home/rifto/bee/third_party/luajit/src/lualib.h"
    "/home/rifto/bee/third_party/luajit/src/lauxlib.h"
    "/home/rifto/bee/third_party/luajit/src/luaconf.h"
    "/home/rifto/bee/third_party/luajit/src/lua.hpp"
    "/home/rifto/bee/third_party/luajit/src/luajit.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/bee" TYPE FILE FILES
    "/home/rifto/bee/README.md"
    "/home/rifto/bee/LICENSE"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/rifto/bee/src/cmake_install.cmake")
  include("/home/rifto/bee/extra/cmake_install.cmake")
  include("/home/rifto/bee/test/cmake_install.cmake")
  include("/home/rifto/bee/doc/cmake_install.cmake")
  include("/home/rifto/bee/third_party/http/cmake_install.cmake")
  include("/home/rifto/bee/third_party/lpeg/cmake_install.cmake")
  include("/home/rifto/bee/third_party/lanes/cmake_install.cmake")
  include("/home/rifto/bee/third_party/xsys/cmake_install.cmake")
  include("/home/rifto/bee/third_party/sci/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/home/rifto/bee/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/home/rifto/bee/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
