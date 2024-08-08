@echo off
rem 示例 1：使用 call 命令执行脚本，并添加两个参数。 
echo 脚本名为：%0
echo 第一个参数为：%1
echo 第二个参数为：%2

echo 脚本名为：%0，第一个参数为：%~1，第二个参数为：%2

rem 示例 2：使用 call 命令跳转到指定标签处执行，标签处执行后再回到 call 命令后继续执行。 
set var=test
call :deal %var% demo
:deal
echo %%0 = %0
echo %%1 = %1
echo %%2 = %2
pause
