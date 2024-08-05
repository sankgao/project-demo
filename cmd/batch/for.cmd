@echo off
rem 示例 1：依次输出 666, 520, 233。
for %%a in (666, 520, 233) do (
    echo %%a
)

rem 示例 2：循环体中的形式变量只支持单个字母，可以是 26 个字母的任意一个。
for %%num in (666, 520, 233) do (
    echo %%num
)

rem 示例 3：/l 将通过比较 start# 和 end# 来执行迭代。如果 start# 小于 end#，则执行该命令。 
rem 当迭代变量超过 end# 时，命令 shell 退出循环。 
rem 还可以使用 step# 来逐步减少值的范围。 
rem 例如：(1,1,5) 生成序列 1 2 3 4 5；(5,-1,1) 生成序列 5 4 3 2 1。
for /l %%a in (0,2,10) do (
  echo %%a
)
pause
