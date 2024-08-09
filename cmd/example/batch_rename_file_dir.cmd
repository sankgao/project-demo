@echo off
@chcp 65001
echo #########################################批量重命名文件或目录#########################################
echo #  使用说明：                                                                                        #
echo #      1. 文件或目录重命名后格式为：前缀名+数字。前缀名需要您自己输入，数字自动依次递增。            #
echo #      2. 指定要批量重命名文件或目录所在的完整路径地址（如果不指定路径，则默认为当前脚本所在目录）。 #
echo #      3. 指定想要命名的前缀名。                                                                     #
echo #      4. 指定需要批量重命名文件的后缀名。                                                           #
echo ######################################################################################################

:start
echo=
set fileDir=
set suffixName=
set prefixName=

set number=1
set dirPath=%~dp0
set /p dirPath=请输入或拖放要批量重命名文件或目录所在的完整路径地址，或输入 exit 退出（默认地址为 %dirPath%）：

if "%dirPath%" equ "exit" (
    set number=
    set dirPath=
    goto:EOF
)

:fileDir
set /p fileDir=请选择要重命名的是文件还是目录（1.文件 2.目录）：
if %fileDir% equ 1 (
    goto file
) else if %fileDir% equ 2 (
    goto directory
) else (
    echo 只能输入数字 1 或 2
    set fileDir=
    goto fileDir
)


:file
:prefixName
set /p prefixName=请输入想要命名文件的前缀名：
if not defined prefixName (
    echo 文件前缀名不能为空！
    goto prefixName
)

:suffixName
set /p suffixName=请输入需要批量重命名文件的后缀名：
if not defined suffixName (
    echo 文件后缀名不能为空！
    goto suffixName
)

echo=
echo 开始批量重命名文件……
setlocal enabledelayedexpansion
for /r %dirPath% %%f in (*) do (
    if "%%~xf" equ "%suffixName%" (
        ren "%%f" "%prefixName%!number!%suffixName%"
        echo %%f 此文件名已重命名为 %prefixName%!number!%suffixName%
        set /a number += 1
    )
)
echo 所有文件重命名完成！
endlocal
goto :start


:directory
:dirPrefixName
set /p prefixName=请输入想要命名目录的前缀名：
if not defined prefixName (
    echo 目录前缀名不能为空！
    goto dirPrefixName
)

echo=
echo 开始批量重命名目录……
setlocal enabledelayedexpansion
for /d /r %dirPath% %%d in (*) do (
    ren "%%d" "%prefixName%!number!"
    echo %%d 此目录名已重命名为 %prefixName%!number!
    set /a number += 1
)

echo 所有目录重命名完成！
endlocal
goto :start
