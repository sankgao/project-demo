@echo off
echo ****************强制删除目录****************
echo 使用方法： 
echo 1.请输入要删除目录的完整路径地址。 
echo 2.将要删除的目录拖放到执行中的批处理中。 
echo 3.将要删除的目录拖放到程序图标上。 
echo 注意：支持文件删除，删除后无法在回收站恢复。
echo ********************************************
echo=
set inPath=%1
if defined inPath (
  goto op1
) else (
  goto op2
)

:op1
if exist %inPath%\nul (
  rem 删除目录下所有文件(网传有 del /f /a /q \\?%1 做法)
  del /f /a /q %1
  rem 删除当前目录(网传有 rd /s /q \\?%1 做法)
  rd /s /q %1
) else (
  rem 删除目录下所有文件(网传有 del /f /a /q \\?%1 做法)
  del /f /a /q %1
)
goto end

:op2
set /p inPath=目录完全路径地址(输入或拖放)并回车:
if exist %inPath%\nul (
  rem 删除目录下所有文件
  del /f /a /q %inPath%
  rem 删除当前目录
  rd /s /q %inPath%
) else (
  rem 删除目录下所有文件
  del /f /a /q %inPath%
)
goto end

:end
echo=
echo 删除已完成！请刷新看看是否删除。
pause > nul
