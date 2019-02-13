## Ubuntu分区方案（菜鸟方案、常用方案和进阶方案）

### 菜鸟方案

“/”与swap两个分区就可以应付绝大多数的应用
   * 挂载点/.（主分区）：安装系统和软件；分区格式ext4
   * swap分区：逻辑分区，充当虚拟内存，2-4G；分区格式swap

### 常用方案1

分为3个区:

1. 挂载点/；主分区；安装系统和软件；大小为30G；分区格式为ext4;
2. 挂载点/home；逻辑分区；相当于“我的文档”；大小为硬盘剩下的; 分区格式ext4；
3. swap；逻辑分区；充当虚拟内存；大小等于内存大小（本人2G）；分区格式为swap
4. /boot ；引导分区；逻辑分区； 大小为200M ；分区格式为ext4；

Ps：（本人安装的是Ubuntu14.04版本，100G硬盘分区方案）
+按钮与-按钮用以添加和删除分区 ,change改变分区属性（分区格式和挂载点）

### 常用方案2

1. 挂载点/：主分区；安装系统和软件；大小为30G；分区格式为ext4;
2. 挂载点/home；逻辑分区；相当于“我的文档”；大小为硬盘剩下的60G; 分区格式ext4;
3. swap；逻辑分区；充当虚拟内存；大小等于内存大小（本人2G）；分区格式为swap;
4. /boot ；引导分区；逻辑分区；主分区；（不懂） 大小为200M ；分区格式为ext4；
注意：boot分区必须最后分配，否则可能为出现其他分区无法分配的情况

### 进阶方案

因为Linux的文件系统是一种树状的结构，一个软件会把包含的众多文件，放置在不同的目录当中，所以不同的使用目的，每个目录扩张的速度会不一样。例如，当计算机当作服务器使用时，由于变动的文件一般是位于/var当中，所以/var应规划足够的空间；当计算机当作日常桌用应用时，/home会增加使用量，所以/home要放大空间；若计算机中会安装大量的软件，那你可能需要增加/usr的空间。
当然，不把这些空间独立分割出去，一起使用/的空间，会有最好的空间使用效率，但这样容易造成系统不稳定，或其它的问题的情形发生。前面提到linux文件系统的根目录，是一定要挂载的。没有特定指定分区挂载的目录，都会与根目录放在同一个分区中。

* 绝对不可以与根目录放在不同分区的目录：
/bin,/sbin, /lib, /etc, /dev 这五个目录。`绝对不可与/所在的分区分开`，因为这五个目录，有系统必要的工具与资料存放。当根目录在开机过程中被挂载进来时，需要这些工具与资料来维持正常的运作。若是把这五个目录放在其它分区当中，系统就不能正常引导。
以上的目录，绝对不要额外挂载到其它分区上。
* 不需要与根目录放在不同分区的目录：
如/cdrom, /mnt, /media, /proc, /run, /sys, /srv等。这些目录可以放到其它的分区，但不需要，因为这些目录的存在，只是运作过程中，维持运作所需，大多不会占用空间。放到其它分区，也无益于系统的性能。如/mnt, /media, /cdrom 只是提供一个挂载点，让实体存储媒体可以挂载而已；或如/sys, /proc其实是内存上的数据，上面所有的数据完全不会占用硬盘的空间。所以这些目录不需要额外的分区存放。
在FHS的推荐当中提到，根目录所在的分区越小，越有助于系统的稳定，避免其它的干扰；发生错误时，也会比较容易进行维护修正；而且可以提高系统的性能。
* 接下来是最好与根目录分开，到其它分区的目录：
所谓「最好」，是对整个作业系统的稳定而言，并非「必要」。如同我一开始所言，只要”/”存在，Linux系统即可运作。
/home /var /usr三者必须思考哪些空间必须额外分割出来（参考后面各分区的作用）。当然就系统稳定来说，最好都分割出来。

## 【附】Linux各个分区的作用

/ 根目录，建议在根目录下面只有目录，不要直接有文件。

swap 交换空间，相当于Windows上的虚拟内存。

/boot 包含了操作系统的内核和在启动系统过程中所要用到的文件，建这个分区是有必要的，因为目前大多数的PC机要受到BIOS的限制, 况且如果有了一个单独的/boot启动分区，即使主要的根分区出现了问题，计算机依然能够启动。这个分区的大小约在60MB—120MB之间。

/home 用户的home目录所在地，这个分区的大小取决于有多少用户。如果是多用户共同使用一台电脑的话，这个分区是完全有必要的，况且根用户也可以很好地控制普通用户使用计算机，如对用户或者用户组实行硬盘限量使用，限制普通用户访问哪些文件等。
以往Linux系统主要是提供服务器使用，所以/home这个目录使用量并不高。但随著Linux的桌面应用发展，不少人也拿来在日常上使用，这时/home就变成存储媒体中，最占容量的目录。假如你安装Ubuntu主要是桌面应用，那你可能需要把最大的空间留给他。
额外分割出/home有个最大的好处，当你重新安装系统时，你不需要特别去备份你的个人文件，只要在安装时，选择不要格式化这个分区，重新挂载为/home就不会丢失你的数据。
还有一个特别的应用：假如你会在你的计算机上，安装两个或更多的Linux系统，你可以共享/home这个分区。简单地说，你的个人文件可以在切换到其它Linux系统时，仍正常使用

/tmp 用来存放临时文件。这对于多用户系统或者网络服务器来说是有必要的。这样即使程序运行时生成大量的临时文件，或者用户对系统进行了错误的操作，文件系统的其它部分仍然是安全的。因为文件系统的这一部分仍然还承受着读写操作，所以它通常会比其它的部分更快地发生问题。这个目录是任何人都能访问的，所以需要定期清理。

/usr Linux系统存放软件的地方，如有可能应将最大空间分给它
除了系统的基本程序外，其它所有的应用程序多放在这个目录当中。除了/home,/var这种变动数据的存放目录外，/usr大概是会是使用容量最大的目录，不过一般Linux下的应用程序通常不大，所以大多数的桌面应用顶多3~4GB的空间就已经相当足够了，若是服务器，多半也是2~3GB就足够了。

/bin
/usr/bin
/usr/local/bin 存放标准系统实用程序。

/srv 一些服务启动之后，这些服务所需要访问的数据目录，如WWW服务器需要的网页数据就可以放在/srv/www中。

/etc 系统主要的设置文件几乎都放在这个目录内。

/lib
/usr/lib
/usr/local/lib 系统使用的函数库的目录。

/root 系统管理员的家目录。

/lost+found 该目录在大多数情况下都是空的，但当实然停电或者非正常关机后，有些文件临时存入在此。

/dev 设备文件，在Linux系统上，任何设备都以文件类型存放在这个目录中，如硬盘设备文件，软驱、光驱设备文件等。

/mnt
/media 挂载目录，用来临时挂载别的文件系统或者别的硬件设备（如光驱、软驱）。

/opt 用于存储第三方软件的目录，不过我们还是习惯放在/usr/local下

/proc 此目录信息是在内存中由系统自行产生的，存储了一些当前的进程ID号和CPU、内存的映射等，因为这个目录下的数据都在内存中，所以本身不占任何硬盘空间。

/sbin
/usr/sbin
/usr/local/sbin 存放一些系统管理员才会用到的执行命令。

/var 主要放置系统执行过程中经常变化的文件，例如缓存（cache）或者是随时更改的登录文件（log file）。
假如你的计算机主要是提供网页服务，或者是MySQL数据库，那/var会大量增加，你最好能够把/var额外分割出来。与/home的概念类似，重新安装时，不要格式化，仍可保留原来的数据。
在服务器的应用时，数据的安全是相当重要的，额外分区对数据的安全也有所帮助。此外，/var/log是系统log档保存的位置，养成有问题就去找log的好习惯，有助于解决问题。所以这也加强了额外分区的重要性。当一个服务器出现系统问题，甚至毁损时，除了你的数据外，之前的系统纪录也相当重要，找出为什么系统会出问题，可以帮助管理器快速排除障碍。

/var/log 系统日志记录分区，如果设立了这一单独的分区，这样即使系统的日志文件出现了问题，它们也不会影响到操作系统的主分区。

## 【附】Ubuntu分区小知识与分区方案

Most PC operating systems still work with an ancient disk partition scheme that historically makes distinction between primary and extended partitions. It also places a limitation for four primary partitions or three primary partitions and one extended partition. When present, an extended partition can then be divided into any number number of logical partitions.

However, many recent (since 2011) machines use a different and incompatible scheme known as "gpt" which allows many more primary partitions. Search these pages for UEFI to learn how to tell which scheme your system is using; applying techniques for one scheme to a system that uses the other will definitely lead to possibly serious problems.
Each Windows installation will need to be installed on a primary partition. Windows systems commonly assign a drive letter to each individual (Windows) partition.

Linux operating systems need a minimum of one partition: one for the OS itself (and data files) and optionally one for a swap area (to be used as an extension for RAM memory) if preferred over a swap file.

While these two partitions can be primary partitions, more flexibility is afforded when logical partitions (within the extended partition) are used. In this manner, as many partitions can be created as is desired. Multiple (Ubuntu Linux and Mac) operating systems can be installed, each in its own partition, and data can also be more easily compartmentalized when it is placed within individually separate logical partitions. (The swap partition can also be located on a logical partition.)

<font color=red><u>一句话概括：Ubuntu系统在一个硬盘上只支持最多4个Primary分区或3个Primary分区加1个Extended分区。Extended分区下面可以有多个Logical分区。</u></font>

以2TB大小的硬盘为例，结合官方推荐的分区方案（单系统）：

swap: 10GB (10240MB)
这是10GB是以系统内存大小4GB的2倍为依据的。也就是说，swap分区的大小要大于系统内存大小的2倍。

(root)/: 30GB (30960MB)
存放 Ubuntu 系统文件和程序

/home: 100GB (102400MB)
存放系统/应用的配置文件，数据和其他文件。Ubuntu下新建一个用户会自动在`/home`文件夹下新建对应的文件夹
`/username`，这个用户的文档、下载等都存放在这个文件夹里，所以这个分区不能太小。

10850GB空间分给其他，比如`/data/`存放数据或`/download`当下载盘。

参考文献：
https://help.ubuntu.com/community/PartitioningSchemes
`根据我自己查到的资料，分区类型为Primary或Logical本身并不影响分区的性能和使用。`

补充:
ubuntu18.04分区
EFI：一定要放在开头，主分区，分配32M以上。
挂载点：/：ext4日志文件系统，逻辑分区，用于存放系统，建议10G（如果总共100G）
swap(交换空间）：逻辑分区，大小设置为电脑内存大小，功能相当于虚拟内存，如果太小可能会让系统速度变慢。
挂载点：/home：ext4日志文件系统，逻辑分区，将剩余空间都留给它（比如100G中80G）
安装启动引导器的设备：选择整个硬盘。

## 【附】ubuntu16.04优化/boot分区空间

1. 先可了解boot分区使用情况。
使用"系统监视器"
或者
输入"df -h"命令
2. 查看但前所有的linux内核版本。
输入命令"sudo apt-get autoremove linux-image-"接着`按两下tab`。
解释：linux内核文件名称是以"linux-image-"开头的，连按两下tab就会出现多选列表，即展示当前多有的linux内核版本。
或者使用"dpkg --get-selections | grep linux-image"命令，查看已安装的软件，管道grep过滤
3. 查看当前使用的linux版本。
"uname -a"
4. 卸载其他低版本(一般当前版本为最高版本，故只留一个最高版本，如果空间够你也可以留最高的两个版本保险)。
卸载命令(注意了解下面apt-get的三种卸载方式区别，`推荐用第三种`)：
sudo apt-get remove 文件名称
sudo apt-get autoremove 文件名称
sudo apt-get purge 文件名称
5. 删除卸载不完全的文件
sudo apt-get autoremove
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190212222418339-1916228852.png)
6. 对于后面有提示 deinstall 的条目，可以通过如下命令删除：
$ sudo dpkg -P linux-image-extra-4.8.0-36-generic
