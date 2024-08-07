@echo off
rem 示例 1：执行到 goto 时跳转到指定的标签行，从标签位置继续向下执行。 
echo 选择您喜欢的动物： 
echo 1. 狗 
echo 2. 猫

set /p animal=输入您的选择（请输入 1 或 2）：
if %animal% == 1 goto dog
if %animal% == 2 goto cat
goto:EOF

:dog
echo 狗
set animal=
goto:EOF

:cat
echo 猫
set animal=
goto:EOF


rem 示例 2：实现循环。 
:nums
set /p num=请输入 0~10 以内的数字（输入 exit 退出，否则一直输入）：
if %num% LSS 10 (
    set num=
    goto nums
) else if "%num%" == "exit" (
    set num=
    goto:EOF
) else (
    echo 输入的不是 10 以内的数字！
    set num=
    goto nums
)
