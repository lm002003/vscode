
## ubuntu 16.04启用root用户方法

1. ubuntu默认不允许使用root登录，因此初始root账户是不能使用的，需要在普通账户下利用sudo权限修改root密码。首先登录普通用户。
    * 但是如果没有给root设置初始密码，就会抛出 su:Authentication failure这样的问题。
    * 默认root密码是随机的，即每次开机都有一个新的root密码。
    * 第一个user是在admin组 ，所以他可以给root设置密码
2. 在终端输入sudo passwd root，按回车，然后系统会提示你输入普通用户的密码(终端输入的密码都是不显示的-`而且不认右侧小键盘`)。输入后，按回车，然后重复输入两次新的root密码即可激活root用户。
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211153341732-1811661529.jpg)
    * 此方式仅适用于ubuntu系列的发行版，不能用于redhat或其他linux发行版。
    * 提示符$代表一般用户，提示符#代表root用户;输入exit命令，退出root并返回一般用户。

`由于用户通过su root命令直接获取root权限，从而造成用户的权限太大，也就可能给系统造成危险。为了既保证系统的安全又可以执行相应命令，sudo也就以此诞生。`

## 【附】Linux下如何切换到root用户

默认安装完成之后并不知道root用户的密码，那么如何应用root权限呢？

1. sudo+命令:`xzm@ubuntu:~$sudo+命令`  
这样输入当前管理员用户密码就可以得到超级用户的权限。但默认的情况下5分钟root权限就失效了。
(2)sudo -i:`xzm@ubuntu:~$sudo -i`
通过这种方法输入当前用户的密码就可以进到root用户,即`~#`，pwd为`/root`。
(3)sudo su:`xzm@ubuntu:~$sudo su`
通过这种方法输入当前用户的密码就可以进到root用户,即`/home/ederson#`,pwd为`/home/ederson`
(4)如果想一直使用root权限，要通过su切换到root用户。那我们首先要重设置root用户的密码：
`xzm@ubuntu:~$sudo passwd root`这样就可以设置root用户的密码了。
之后就可以自由的切换到root用户了`xzm@ubuntu:~$su`
输入root用户的密码即可。

su "king"或者exit、logout 、ctrl+d回到用户权限


## 【附】Linux中切换用户的命令su- 与su的区别

* `su`命令和`su -`命令最大的本质区别就是：
> * 前者只是切换了root身份，但Shell环境仍然是普通用户的Shell；
> * 而后者连用户和Shell环境一起切换成root身份了。只有切换了Shell环境才不会出现PATH环境>变量错误。
> * `su`切换成root用户以后，pwd一下，发现工作目录仍然是普通用户的工作目录；
> * `su -`命令切换以后，工作目录变成root的工作目录了。用echo $PATH命令看一下su和su -以后的环境变量有何不同。以此类推，要从当前用户切换到其它用户也一样，应该使用su -命令。

1. `su -` root is the same as su - just like login as root,
then the shell is login shell,which mean it will expericene a login process,
usually .bash_profile and .bashrc will be sourced

2. `su` root is the same as su like you open an interactive shell in root name,
then only .bashrc will be sourced.

`su` 后面不加用户是默认切到 root
`su username`是不改变当前变量
`su - username`是改变为切换到用户的变量
<font size=5 color="#dd0000"><u>也就是说su只能获得root的执行权限，不能获得环境变量</u></font>
<font size=5 color="#dd0000"><u>而su -是切换到root并获得root的环境变量及执行权限</u></font>

语法：
1. `$ su [user_name]`
su命令可以用来交互地更改你的用户ID和组ID。 `Su是switch user 或set user id的一个缩写`。这个命令让你开启一个子进程，成为新的用户ID和赋予你存取与这个用户ID关联所有文件的存取权限。因此，出于安全的考虑，你在实际转换身份时，会被要求输入这个用户帐号的密码。
<u>如果没有参数，su命令将你转换为root(系统管理员)</u>。root帐号有时也被称为超级用户，因为这个用户可以存取系统中的任何文件。也正是这个原因，许多人将su命令看成是`supper-user(超级用户)的一个缩写`。当然，你必须要提供root密码。想要回到你原先的用户身份，不要再使用su命令，你只需要使用exit命令退出你使用su命令而生成的新的对话进程。
2. `$ su – username`
一些配置文件是为你的对话线索而设立的。当你使用命令su username时，你的对话特征和你原始的登录身份一样。如果你想要你的对话进程拥有转换后的用户ID一致的特征，你要使用短斜杠:su – username。
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211180630435-139452552.jpg)
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211180756267-1284811979.jpg)

## linux中su与sudo与su-的理解

### su 与 su - 的相同点与区别

<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213164008407-1830874893.png" width="85%" />
</left>
<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213164626751-332582048.png" width="85%" />
</left>

su的缺点造就了sudo的诞生
由于用户通过`su root`命令直接获取root权限，从而造成用户的权限太大，也就可能给系统造成危险。
为了既保证系统的安全又可以执行相应命令，`sudo`也就以此诞生。
sudo 通过配置文件来限制用户的权限 （以下就是`/etc/sudoers`文件）
<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213165044796-1302759389.png" width="70%" />
</left>
<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213165416546-454161238.png" width="70%" />
</left>

## Linux下su与su -命令的区别

<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213165900536-1866058667.png" width="65%" />
</left>
<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213170045760-1150118191.png" width="65%" />
</left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213170341684-348576774.png" width="65%" />
</left>

## Ubuntu下，怎么快速执行其他路径下的脚本文件

`【案例】`
在一个路径下有一个脚本文件，想在其他路径下，直接输入脚本文件名直接执行，而不用输入全路径。
比如：在~/a/b/c/d下有一个ssss的脚本文件
想在~/e/f/g/h下，直接输入，ssss就执行这个脚本
我看了ssss，已经具有x属性。设置了PATH，好像也不好用。
<hr style="height:3px;border:none;border-top:3px dashed red;" />
把ssss所在路径添加到PATH中去就可以了。或者你直接放到/usr/bin下面，也可以。
在~/.bash_profile加一句

`export PATH=$PATH:$HOME/a/b/c/d`
然后执行：`source ~/.bash_profile`

## 如何改变PATH

1. 直接修改$PATH值：
echo $PATH //查看当前PATH的配置路径
export PATH=$PATH:/xxx/xxx //将需配置路径加入$PATH  `等号两边一定不能有空格`
//配置完后可以通过第一句命令查看配置结果。
生效方法：立即生效
有效期限：临时改变，只能在当前的终端窗口中有效，当前窗口关闭后就会恢复原有的path配置
用户局限：仅对当前用户
2. 通过修改.bashrc文件：(.bashrc文件在根目录下)
vi .bashrc  //编辑.bashrc文件
//在最后一行添上：
export PATH=$PATH:/xxx/xxx  ///xxx/xxx位需要加入的环境变量地址 等号两边没空格
生效方法：（有以下两种）
关闭当前终端窗口，重新打开一个新终端窗口就能生效
输入“source .bashrc”命令，立即生效
有效期限：永久有效
用户局限：仅对当前用户
3. 通过修改profile文件：（profile文件在/etc目录下）
vi /etc/profile //编辑profile文件
//在最后一行添上：
export PATH=$PATH:/xxx/xxx
生效方法：系统重启
有效期限：永久有效
用户局限：对所有用户
4. 通过修改environment文件：（environment文件在/etc目录下）
vi /etc/profile //编辑profile文件
在PATH=/·········中加入“:/xxx/xxx”
生效方法：系统重启
有效期限：永久有效
用户局限：对所有用户

## ubuntu下创建文件夹快捷方式

`sudo ln -sT [srcDir] [dstDir/name]`
例如创建`hexo`文件夹的桌面快捷方式：
`sudo ln -sT '/media/zmj/本地磁盘/hexo' '/home/zmj/Desktop/hexo'`
最近在使用dropbox，用来存储一些自己的markdown笔记和pdf文件。觉得放一个快捷方式在桌面上比较方便，但是lxde似乎没有直接创建桌面快捷方式的功能（或者是我没有找到），就上网查了一下，顺便也记在这里。
`sudo ln -sT [srcDir]   [dstDir/name]`
像我这里，因为是创建dropbox的桌面快捷方式，所以完整的命令就是
`sudo ln -sT /home/{user_name}/Dropbox/     /home/{user_name}/Desktop/Dropbox`
//在Desktop后面的Dropbox就是创建出来的快捷方式的名称了。

## Ubuntu下设置命令别名alias(永久生效)

对于常用命令,可以在Ubuntu系统中设置别名.也可用于软件自定义名称启动.
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213162137280-397804362.png" width="100%" />
</center>

## ubuntu下如何查找某个文件的路径

1. whereis 文件名
　特点:快速,但是是模糊查找,例如 找 #whereis mysql 它会把mysql,mysql.ini,mysql.*所在的目录都找出来.
2. find / -name 文件名
　特点:准确,但速度慢,消耗资源大,例如我想找到php.ini的准确位置,就需要用
`#find / -name php.ini`
3. locate 文件名
　强力推荐的方法,最快,最好的方法.
　注意:第一次使用该命令,可能需要更新数据库,按照提示的命令执行一下就好了.

## VScode设置让鼠标滚动改变字体大小

右边输入"editor.mouseWheelZoom": true

## 在vscode 编辑器中，可以使用快捷键 跳转到指定的行数

快捷键： Ctrl + G ,然后在弹出的框中输入行数就可以了；
上下移动一行： Alt+Up 或 Alt+Down
向上向下复制一行： Shift+Alt+Up 或 Shift+Alt+Down
在当前行下边插入一行 Ctrl+Enter
在当前行上方插入一行 Ctrl+Shift+Enter
移动到文件结尾： Ctrl+End
移动到文件开头： Ctrl+Home
选择从光标到行尾： Shift+End
选择从行首到光标处： Shift+Home
删除光标右侧的所有字： Ctrl+Delete
删除行：Ctrl+L
Go to Line：Ctrl+G

## 编辑器

nano gedit