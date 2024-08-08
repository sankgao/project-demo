@echo off
rem 示例 1：比较字符是否相等。
if abc == ABC (
    echo abc equal ABC
) else (
    echo abc not equal ABC
)

rem 示例 2：比较字符是否不相等。
if not abc == ABC (
    echo abc not equal ABC
) else (
    echo abc equal ABC
)

rem 示例 3：判断上一个命令是否执行成功。
if %errorlevel% == 0 (
    echo Success!
) else (
    echo Failed!
)

rem 示例 4：以关键字（errorlevel）的方法判断上一个命令是否执行成功。
if errorlevel 0 (
    echo Success!
) else (
    echo Failed!
)

rem 示例 5：判断文件（E:\test.cmd）是否存在。
if exist test.cmd (
    echo file is find!
) else (
    echo file is not find!
)

rem 示例 6：判断变量（nums）是否存在。
if defined nums (
    echo nums variable is find!
) else (
    echo nums variable is not find!
)

rem 示例 7：比较字符是否相等；if 命令中 /i 选项用于忽略字符大小写。
if /i abc equ ABC (
    echo abc equal ABC
) else (
    echo abc not equal ABC
)
