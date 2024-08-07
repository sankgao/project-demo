@echo off
rem 示例 1：将变量的值设置为计算的数值表达式。
set /a sum=4 + 5
echo %sum%
set sum=

rem 示例 2：将变量的值设置为由用户输入的一行输入，并指定提示用户输入的消息。 
set /p num=请输入一个数字：
echo %num%
set num=
