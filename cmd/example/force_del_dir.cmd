@echo off
@chcp 65001
echo ################强制删除文件或目录################
echo #  使用方法：                                    #
echo #      1. 请输入要删除文件或目录的完整路径地址。 #
echo #      2. 将要删除的目录拖放到执行中的批处理中。 #
echo #      3. 将要删除的目录拖放到程序上。           #
echo #  注意：文件或目录删除后无法在回收站恢复！！！  #
echo ##################################################
echo=

set inPath=%1
if defined inPath (
  goto op1
) else (
  goto op2
)


:op1
rem 判断是文件还是目录。
if exist %inPath%\nul (
  rd /s /q %1
) else (
  del /f /q %1
)
goto end


:op2
set /p inPath=输入或拖放要删除文件或目录的完整路径地址：
if exist %inPath%\nul (
  rd /s /q %inPath%
) else (
  del /f /q %inPath%
)
goto end

:end
echo=
echo 删除已完成！请刷新看看是否删除。
pause > nul
