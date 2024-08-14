cmake_minimum_required(VERSION 3.5)

set(TOOLCHAIN_OPTIONS "host;arm-none-eabi")
set(TOOLCHAIN "arm-none-eabi" CACHE STRING "Toolchain to use. Available: ${TOOLCHAIN_OPTIONS}")

project(iNavProject)

set(SOURCE_FILES
    src/main.c
    src/module.c
    src/main/targets/SPEEDYBEEF7V3/target.c
)

add_executable(iNavFirmware ${SOURCE_FILES})

if("${TOOLCHAIN}" STREQUAL "arm-none-eabi")
    set(CMAKE_C_COMPILER "arm-none-eabi-gcc")
    set(CMAKE_CXX_COMPILER "arm-none-eabi-g++")
endif()
