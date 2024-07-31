@echo off
echo "在新 CMD 控制台窗口中查看 D:\ 盘目录"
start dir D:\

echo "运行计算器程序，等程序启动后再执行下面的命令. . ."
start /wait calc.exe

echo "程序成功启动，执行下面的命令"
echo "Hello, World!"
