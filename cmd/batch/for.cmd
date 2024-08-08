@echo off
rem 示例 1：依次输出 666, 520, 233。
for %%a in (666, 520, 233) do (
    echo %%a
)

rem 示例 2：循环体中的形式变量只支持单个字母，可以是 26 个字母的任意一个。
for %%num in (666, 520, 233) do (
    echo %%num
)

rem 示例 3：for 命令中 /d 选项，用于匹配目录，忽略文件；* 表示当前目录下的所有文件。 
echo 文件有：
for %%f in (*) do echo %%f

echo 目录有：
for /d %%d in (*) do echo %%d

rem 示例 4：for 命令中 /r 选项，用于指定工作目录；当与 /d 选项一起使用时，/d 必须写在 /r 选项前面。 
echo 文件有：
for /r E:\test %%f in (*) do echo %%f

echo 目录有：
for /d /r E:\test %%d in (*) do echo %%d

rem 示例 5：for 命令中 /l 选项，用于指定每次循环的步数。 
rem 语法：for /l %%variable in (stat, step, end) do (cmmand)；start 表示开始循环，end 表示结束循环，step 表示每次循环的步数。 
rem 例如：显示 10 以内的偶数。
for /l %%a in (2, 2, 10) do (
  echo %%a
)

rem 示例 6：for 命令中 /f 选项，用于指定高级扩展。 
rem 例如：将 “DIR” 命令的输出信息作为遍历内容，首先跳过前两行，然后从第三个字符块开始取值，使用默认的方式进行换行或截断操作， 
rem 其中第二个字符块将作为 “%%a” 的值，第三个字节块作为 “%%b” 的值，第三个之后的字节块作为 “%%c” 的值。
for /f "skip=2 tokens=2* delims= " %%a in ('dir') do (
  echo %%a--%%b--%%c
)
