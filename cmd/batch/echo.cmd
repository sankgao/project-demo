rem 示例 1：批处理（Batch）默认打开回显功能
echo
echo "Hello, World! 01"

rem 示例 2：显示空白行
echo.

rem 示例 3：使用 @ 符号，关闭本行命令的回显
echo "Hello, World! 02"
@echo "Hello, World! 03"

rem 示例 4：使用 echo off 关闭下面命令回显功能，但 echo off 命令的回显依然显示
echo off
echo "Hello, World! 04"
echo on

rem 示例 5：使用 @ 符号，将 echo off 的命令回显也关闭
@echo off
echo "Hello, World! 05"
