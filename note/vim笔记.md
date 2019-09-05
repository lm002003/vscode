# vim的寄存器和剪贴簿操作

## vim复制/删除多行

* 指定行号(命令模式下): :10,15m20, 10,15co20
例如，10,15co20, 复制到第20行, 10,15m20 移动到第20行.
* 没有指定行号(normal模式下): ndd, nyy.其中的n表示,从当前行开始算起(当前行本身要包含!!!),向下共删除/复制n行!
例如，4dd, 4yy, 表示从当前行算起,向下删除/复制4行
!!! 注意这里就不用加+加号了.因为单击加号的时候,光标就向下移动了!!!

## 粘贴put的方式

p:光标停留在粘贴内容的第一行的开头
gp:光标位置的下一行粘贴，光标移至粘贴内容的下一行行首
gP:光标位置的上一行粘贴，光标移至原所在行行首（粘贴相当于插入）

在vim中的复制/删除/粘贴等操作都是通过寄存器来实现的:

传统软件的复制(copy)，剪切(cut)，粘贴(paste)，在Vim中对应的是yank，delete和put。在Vim中的复制，删除，替换等操作的临时内容，都会存储在寄存器中。
寄存器的操作方法是: 以双引号开头 + 寄存器名称 + 操作命令

## 寄存器的名称,主要的有三种:

* 默认寄存器:总是收集最近一次的"操作"结果,不管是复制/删除/替换等等。也叫无名寄存器""
* 复制(专用)寄存器: 总是收集最近一次 "复制" 的结果, 用 "0表示
* 删除(专用)寄存器: 从"1, 到 "9

命名寄存器,主要是放置比较重要的内容,从"a到"z共26个命名寄存器.
黑洞寄存器,"_将会彻底删除其中的内容.

这个是最重要的!!!(系统剪贴簿)"+寄存器,即vim的+加号寄存器就是我们的系统剪贴簿.
复制和粘贴的操作是:"+yy,"+p
有的也叫做星号寄存器"*

***
额外的一些寄存器:
". 表示上一次输入的内容
": 表示上一次输入的命令
"/ 表示上一次的搜索寄存器
"%,只读寄存器,表示当前的文件名
***

## vim跳转到指定行

在vim中有3中方法可以跳转到指定行

* (normal模式下) ngg/nG（跳转到文件第n行，无需回车）
* (命令行模式下) :n（跳转到文件第n行，需要回车）
* vim filename +n（使用"+"，在打开文件的同时定位到文件的第n行）
* vim filename  +/pattern（可以在打开文件的同时找到第一个匹配项）

## ubuntu删除文件和文件夹

m(remove)指令用于删除目录或文件：
**语法：** rm [-dfirv][--help][--version][文件或目录...]
补充说明：执行rm指令可删除文件或目录，如欲删除目录必须加上参数”-r”，否则预设仅会删除文件。 
参数：-d或–directory 　直接把欲删除的目录的硬连接数据删成0，删除该目录。 
     -f或–force 　强制删除文件或目录。 
     -i或–interactive 　删除既有文件或目录之前先询问用户。 
     -r或-R或–recursive 　递归处理，将指定目录下的所有文件及子目录一并处理。 
                     -v或–verbose 　显示指令执行过程。
例如：
**删除文件夹：** rm -rf code
将会删除code目录以及其下所有文件、文件夹。（注意一定要加 -r，不然很麻烦）
**删除文件：** rm -f  001.cpp

## Ubuntu下，清屏等终端常用命令

ctrl + l - 清屏 。 cLear
ctrl + c - 终止命令。
ctrl + d - 退出 shell，好像也可以表示EOF。
ctrl + z - 将当前进程置于后台，fg还原。
ctrl + r - 从命令历史中找 。 Reverse-i-search
ctrl + a - 光标移到行首 。 A
ctrl + e - 光标移到行尾。 End
ctrl + u - 清除光标到行首的字符 。U
ctrl + w - 清除光标之前一个单词 。Word
ctrl + k - 清除光标到行尾的字符。K
ctrl + t - 交换光标前两个字符。swiTch
ctrl + y - 粘贴前一ctrl+u类命令删除的字符。Y
ctrl + p - 上一条命令。Prev
ctrl + n - 下一条命令。Next
ctrl + v - 输入控制字符 如ctrl+v <ENTER>，会输入^M
ctrl + f - 光标后移一个字符。Fore
ctrl + b - 光标前移一个字符。Back
ctrl + h - 删除光标前一个字符。H
N+<ESC>+f - 光标后移N个单词，N为1时可省略
N+<ESC>+b - 光标前移N个单词，N为1时可省略
ctrl + s - 挂起当前shell。Stop
ctrl + q - 重新启用
<ESC>+d 从光标开始处删除到行尾。Delete
!! - 上一条命令
!-n - 倒数第N条历史命令
!-n:p - 打印上一条命令（不执行）
!?string？- 最新一条含有“string”的命令
!-n:gs/str1/str2/ - 将倒数第N条命令的str1替换为str2，并执行（若不加g,则仅替换第一个）

ederson@ubuntu18s:~$ sudo -i
[sudo] password for ederson: 
root@ubuntu18s:~# ls
root@ubuntu18s:~# pwd
/root
root@ubuntu18s:~# exit
logout

ederson@ubuntu18s:~$ pwd
/home/ederson
ederson@ubuntu18s:~$ su
Password: 
root@ubuntu18s:/home/ederson# pwd
/home/ederson
root@ubuntu18s:/home/ederson# exit
exit

ederson@ubuntu18s:~$ pwd
/home/ederson
ederson@ubuntu18s:~$ sudo su
root@ubuntu18s:/home/ederson# pwd
/home/ederson
root@ubuntu18s:/home/ederson# 

