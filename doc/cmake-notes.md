# CMake搭建工程的方法

> `CmakeLists.txt` 文件是关键, 文件名大小写敏感, 对于CMake来说

## 单个源文件编译可执行文件

```cmake
cmake_minimum_required(VERSION 3.5)
project(test-msys2 LANGUAGE CXX)

add_executable(test-msys2 main.cpp)
```


> set(CMAKE_EXPORT_COMPILE_COMMANDS true) 用于生成 `compile_commands.json`
>
> - cmake 语法不区分大小写
> - cmake 的参数区分大小写
