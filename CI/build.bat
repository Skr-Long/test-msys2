@echo off

set BaseDir=%cd%\
set BuildDirName=build
set BuildPath=%cd%\%BuildDirName%

goto %1

rem cmake生成
:build
if not exist %BuildPath% (
    mkdir %BuildPath%
)
cmake -H. -Bbuild
cmake --build %BuildPath%
exit

rem 删除build文件
:clean
if exist %BuildPath% (
    rmdir /s/q %BuildPath%
)
exit

