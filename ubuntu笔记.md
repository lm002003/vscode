## ubuntu 16.04 启用root用户方法

1. ubuntu默认不允许使用root登录，因此初始root账户是不能使用的，需要在普通账户下利用sudo权限修改root密码。首先登录普通用户。
    * 但是如果没有给root设置初始密码，就会抛出 su:Authentication failure这样的问题。
    * 默认root密码是随机的，即每次开机都有一个新的root密码。
    * 第一个user是在admin组 ，所以他可以给root设置密码
2. 在终端输入sudo passwd root，按回车，然后系统会提示你输入普通用户的密码(终端输入的密码都是不显示的-`而且不认右侧小键盘`)。输入后，按回车，然后重复输入两次新的root密码即可激活root用户。
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211153341732-1811661529.jpg)
    * 此方式仅适用于ubuntu系列的发行版，不能用于redhat或其他linux发行版。
    * 提示符$代表一般用户，提示符#代表root用户;输入exit命令，退出root并返回一般用户。

`由于用户通过su root命令直接获取root权限，从而造成用户的权限太大，也就可能给系统造成危险。为了既保证系统的安全又可以执行相应命令，sudo也就以此诞生。`

## linux下 如何切换到root用户

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

## Linux中切换用户的命令su- 与su的区别

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

