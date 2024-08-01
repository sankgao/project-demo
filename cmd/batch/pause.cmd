@echo off
rem 示例 1：用 pause 命令使批处理程序在指定位置暂定。 
echo "Hello, World!"
pause

rem 示例 2：用 pause 命令使批处理程序在指定位置暂定，但不显示提示内容。 
echo "Hello, World!"
pause > nul

rem 示例 3：用 pause 命令使批处理程序在指定位置暂定，并修改提示内容为 “按任意键继续或退出此脚本. . .”。 
echo "Hello, World!"
echo 按任意键继续或退出此脚本. . . & pause > nul
