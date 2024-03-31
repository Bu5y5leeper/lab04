## Homework 

Представьте, что вы стажер в компании "Formatter Inc.".

### Задание 1
Вам поручили перейти на систему автоматизированной сборки **CMake**.
Исходные файлы находятся в директории [formatter_lib](formatter_lib).
В этой директории находятся файлы для статической библиотеки *formatter*.
Создайте `CMakeList.txt` в директории [formatter_lib](formatter_lib),
с помощью которого можно будет собирать статическую библиотеку *formatter*.

```bash
cmake --version
```
```
cmake version 3.22.1

CMake suite maintained and supported by Kitware (kitware.com/cmake).
```
---
```bash
cd ./formatter_lib/
```
---
```bash
cat >> ./CMakeLists.txt << EOF
cmake_minimum_required(VERSION 3.22)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
project(formatter)
EOF
```
---
```bash
cat >> CMakeLists.txt <<EOF
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
EOF
```
---
```bash
cat >> CMakeLists.txt <<EOF
set(SOURCES formatter.cpp)
set(HEADERS formatter.h)
EOF
```
---
```bash
cat >> CMakeLists.txt <<EOF
add_library(formatter \${SOURCES} \${HEADERS})
EOF
```
---
```bash
cat >> CMakeLists.txt <<EOF
target_include_directories(formatter PUBLIC \${CMAKE_CURRENT_SOURCE_DIR})
EOF
```
---
```bash

````
### Содержимое CMakeLists.txt:
```
cmake_minimum_required(VERSION 3.22)

project(formatter)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCES formatter.cpp)
set(HEADERS formatter.h)

add_library(formatter STATIC ${SOURCES} ${HEADERS})

target_include_directories(formatter PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
```
---

### Задание 2
У компании "Formatter Inc." есть перспективная библиотека,
которая является расширением предыдущей библиотеки. Т.к. вы уже овладели
навыком созданием `CMakeList.txt` для статической библиотеки *formatter*, ваш 
руководитель поручает заняться созданием `CMakeList.txt` для библиотеки 
*formatter_ex*, которая в свою очередь использует библиотеку *formatter*.

```bash
cd ../formatter_ex_lib/
```
---
```bash
cat >> ./CMakeLists.txt << EOF
cmake_minimum_required(VERSION 3.22)
EOF
```
---
```bash
cat >> CMakeLists.txt <<EOF
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
project(ex_formatter)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
add_library(formatter_ex STATIC formatter_ex.cpp)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
add_subdirectory(\${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib \${CMAKE_CURRENT_SOURCE_DIR}/formatter)
EOF
```
---
```bash
cat >> CMakeLists.txt << EOF
target_include_directories(formatter_ex PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
EOF
```
---
```bash
cat >> CMakeLists.txt << EOF
target_link_libraries(formatter_ex formatter)
 EOF
```
---
### Содержимое CMakeLists.txt:
```
cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
project(ex_formatter)

add_library(formatter_ex STATIC formatter_ex.cpp)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib ${CMAKE_CURRENT_SOURCE_DIR}/formatter)

target_include_directories(formatter_ex PUBLIC )

target_link_libraries(formatter_ex formatter)
```

### Задание 3
Конечно же ваша компания предоставляет примеры использования своих библиотек.
Чтобы продемонстрировать как работать с библиотекой *formatter_ex*,
вам необходимо создать два `CMakeList.txt` для двух простых приложений:
* *hello_world*, которое использует библиотеку *formatter_ex*;
* *solver*, приложение которое испольует статические библиотеки *formatter_ex* и *solver_lib*.
### Hello_world_application
```bash
cd ../formatter_ex_lib/
```
---
```bash
cat >> ./CMakeLists.txt << EOF
cmake_minimum_required(VERSION 3.22)
EOF
```
---
```bash
cat >> CMakeLists.txt <<EOF
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
project(hello_world)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
add_subdirectory(\${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex \${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex)
EOF
```
---
```bash
cat >> CMakeLists.txt << EOF
add_executable(sources \${CMAKE_CURRENT_SOURCE_DIR})
EOF
```
---
```bash
cat >> CMakeLists.txt << EOF
target_link_libraries(sources formatter_ex)
 EOF
```
---
### Содержимое CMakeLists.txt:
```
cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(hello_world)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib ${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex)

add_executable(sources ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(sources formatter_ex)
```

### Solver_application
```bash
cd ../solver_application/
```
---
```bash
cat >> ./CMakeLists.txt << EOF
cmake_minimum_required(VERSION 3.22)
EOF
```
---
```bash
cat >> CMakeLists.txt <<EOF
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
project(solver)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
add_subdirectory(\${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib \${CMAKE_CURRENT_SOURCE_DIR}/solver_lib)
add_subdirectory(\${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex \${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex)
EOF
```
---
```bash
cat >> CMakeLists.txt << EOF
add_executable(sources equation.cpp)
EOF
```
---
```bash
cat >> CMakeLists.txt << EOF
target_link_libraries(sources solver_lib)
target_link_libraries(sources formatter_ex)
 EOF
```
---
### Содержимое CMakeLists.txt:
```
cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(solver)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib ${CMAKE_CURRENT_SOURCE_DIR}/solver_lib)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib ${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex)

add_executable(source equation.cpp)

target_link_libraries(source solver_lib)
target_link_libraries(source formatter_ex)
```
```bash
cd ../solver_lib/
```
---
```bash
cat >> ./CMakeLists.txt << EOF
cmake_minimum_required(VERSION 3.22)
EOF
```
---
```bash
cat >> CMakeLists.txt <<EOF
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
EOF
```
---
```bash
cat >> ./CMakeLists.txt << EOF
project(solver_lib)
EOF
```
---
```bash
cat >> CMakeLists.txt << EOF
add_library(solver_lib STATIC solver.cpp)
EOF
```
---
```bash
cat >> CMakeLists.txt << EOF
target_include_directories(solver_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
 EOF
```
---
### Содержимое CMakeLists.txt:
```
cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(solver_lib)

add_library(solver_lib STATIC solver.cpp)
target_include_directories(solver_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
```

```
Copyright (c) 2015-2021 The ISC Authors
```
