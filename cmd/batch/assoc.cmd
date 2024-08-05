@echo off
rem 示例 1：关联 .log 文本文件。
assoc .log=txtfile

rem 示例 2：查看文件扩展名 .txt 的当前文件类型关联。
assoc .txt

rem 示例 3：删除文件扩展名 .bak 的文件类型关联，请通过按空格键在等号后面添加空格。
assoc .bak=

rem 示例 4：将 assoc 的输出发送到文件 assoc.txt。
assoc > assoc.txt

rem 示例 5：将不带扩展名的文件关联到文本文件，只需使用一个点。
assoc .=txtfile

rem 示例 6：显示 txtfile 文件类型的当前打开命令字符串。
ftype txtfile

rem 示例 7：删除名为 example 的文件类型的打开命令字符串。
ftype example=

rem 示例 8：将 .pl 文件扩展名与 PerlScript 文件类型相关联，并使 perlscript 文件类型能够运行 PERL.EXE。
assoc .pl=PerlScript
ftype PerlScript=perl.exe %1 %*
