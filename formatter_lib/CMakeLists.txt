
cmake_minimum_required(VERSION 3.22)

project(formatter)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCES formatter.cpp)
set(HEADERS formatter.h)

add_library(formatter STATIC ${SOURCES} ${HEADERS})

target_include_directories(formatter PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
