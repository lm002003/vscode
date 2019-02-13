## 在Ubuntu 18.04.1 LTS server下安装VMware Tools

开启ubuntu server虚拟机
    * `PS`:不过，我的机子上直接显示`重新安装VMware Tools(T)...`(是不是代表已经安装了Tools？)如下图
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190212112205426-1991309295.jpg)
    * 在下图红框位置，直接`保持纵横比拉伸`项就可以了
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190212112632094-320728025.jpg)
1. 如果没有，就老老实实一步步安装吧:
<font color=red><u>但是,共享文件夹时,必须重新安装VMware Tools</u></font>
2. vmware workstation菜单项，选取虚拟机(M) --> 安装VMware Tools
3. mkdir /mnt/cdrom  #创建一个文件夹，以挂载cdrom
4. mount /dev/cdrom /mnt/cdrom  
<font color=red><u>#你可以先去/dev目录下查看有没有cdrom这个设备，这一步是挂载cdrom到/mnt/cdrom</u></font>
【PS】`其实3、4两步骤任何一个都行，加载以后就会有光驱显示出来了`
5. cd /mnt/cdrom
6. cp VMwareTools-10.0.5-3228253.tar.gz /mnt/VMwareTools-10.0.5-3228253.tar.gz
<font color=red><u>#因为在/mnt/cdrom为挂载点。</u></font>`我们连root权限下也不能操作，所以复制出挂载点再操作`
7. cd /mnt
8. tar -zxvf  VMwareTools-10.0.5-3228253.tar.gz #解压操作不多说
9.  cd  vmware-tools-distrib
    #解压之后多出 vmware-tools-distrib这个文件夹，进去
10.  ./vmware-install.pl #安装(.pl是perl文件)
【PS】如果前面没有提升权限，这里就要用`sudo su`(sudo su当前目录不变)或`sudo ./vmware-install.pl`运行
显示信息有好多(摘取一句)，一路Enter确认。
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213181247466-1289220161.jpg" width="100%" />
</center>
贴图1：安装`vmware tools`
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213175222743-394898622.jpg" width="100%" />
</center>
贴图2：`挂载光驱`
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213175857685-840402577.jpg" width="100%" />
</center>
贴图3：`共享文件夹`
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213180132831-691861533.jpg" width="100%" />
</center>
贴图3：`vmware-hgfsclient`
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213180309308-508986690.jpg" width="100%" />
</center>
【后记】
> * 接着狂按回车就成功了，记录一下吧，谁叫这个是服务器版本完全没界面，
> * 安装了VMware Tools后，虚拟机与主机可以通过“拖拽”来对传文件。
> * 按照以上的教程安装好了VMware tools之后，如果没有自动全屏，或者是按Ctrl + Alt + Enter也没有全屏的时候，就应该设置ubuntu的分辨率（这个应该是桌面版的吧？）
> * 如果要实现文件夹共享，需要安装 open-vm-tools-dkms
桌面环境还需要安装 open-vm-tools-desktop 以支持双向拖放文件
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213162508416-1864144449.png" width="100%" />
</center>
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213162746352-154259207.png" width="100%" />
</center>

## 【附】Linux下挂载iso镜像的方法

</center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213163058954-978799828.png" width="100%" />
</center>

## 【附】如何在VMWare的Ubuntu虚拟机中设置共享文件夹

在VMWare的Ubuntu虚拟机中设置共享文件夹，方法很简单，此处略过！
这里只说问题：(以下的处理方法我没有试过，但是也是不显示共享文件夹，我在共享设置之后紧接着重新安装`vmware tools`就全部搞定了)

1. 如果共享设置后，/mnt/hgfs/下没有共享文件夹——不要着急，再加一条命令即可：
`vmhgfs-fuse .host:/  /mnt/hgfs/`
此时会发现在root用户中是能够看到共享文件夹的;当你切换到普通用户登录时,进入共享文件夹需要切换到管理员权限`su root`
<font color=red><b>注：可以创建一个软连接到home目录，这样方便进入共享目录：</b></font>
`cd /mnt/hgfs`
`ln -s /mnt/hgfs/share/ ~/share`
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213144408789-1277947612.png)
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213144420668-1183421734.png)
这样再想进入共享目录时，只需在家目录下 cd share 就可以了

（1）如果想在Ubuntu中访问共享目录，还必须将共享目录挂到/mnt/hgfs/ 目录下。挂载之前，查看一下共享目录是否被识别到。
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213154242122-903133913.png)
（2）普通账户读写共享目录
发现用sudo vmhgfs-fuse .host:/ /mnt/hgfs挂载共享目录后，必须要用root才能读写共享目录，所以使用vmhgfs-fuse挂载时，后面要跟参数才能正常使用。
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213154443771-434782765.png)

### 解决问题

* 错误：Error: cannot mount filesystem: No such device 
原因：sudo mount -t vmhgfs .host:/ /mnt/hgfs 是错误命令； 
sudo apt-get install open-vm-dkms 这个也是不需要安装的。
* 挂载共享目录命令： 
sudo vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other,nonempty 
或者 
sudo vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other -o uid=1001 -o gid=1001

### 参考引用
* [VMware无法通过mount挂载共享文件夹](https://ask.csdn.net/questions/163546)
* [opensuse设置共享，vmware-hgfsclient命令可以看到共享目录](https://bbs.csdn.net/topics/390606349)
* [在vmware中实现Ubuntu与win7(主机)之间同步实现共享文件](https://www.cnblogs.com/cartsp/p/5314069.html)
* [VMware上的ubuntu14.04与win7共享文件夹](https://blog.csdn.net/longintchar/article/details/50783535)
* [用vmhgfs-fuse .host:/ /mnt/hgfs挂载后需要超级用户才能ls hgfs](https://bbs.csdn.net/topics/392053153)

## 【附】安装VMWare tools，以及解决安装后/mnt中有hgfs但没共享文件的方法

一、解决安装VMWare tools后/mnt中有hgfs但没共享文件
前提：在虚拟机软件中设置了共享目录
此时在linux中进入/mnt/hgfs文件夹，但发现共享的文件没有显示使用以下办法解决(root权限)：
1. vmware-hgfsclient 命令查看当前有哪些共享的目录，这里我只使用了shared文件夹
2. 使用 mount  -t vmhgfs .host:/shared /mnt/hgfs  命令挂载该共享文件夹(注意：带.号的哦)，其中.host:/Documents是共享名，只需把Documents换成使用vmware-hgfsclient 命令得到的目录，/mnt/hgfs是挂载点
3. 到此为止是可以使用该共享文件夹了，但每次都得重复mount一次，所以需要设置为随机启动后自动挂载：
编辑 /etc/fstab，添加下面一行
.host:/shared     /mnt/hgfs       vmhgfs     defaults  0  0 （按需写）
【补充】
如果显示Error:`cannot mount filesystem: No such device`
`ubuntu`则先执行sudo apt-get install open-vm-dkms
然后再执行上述3
`centos7`则先执行 yum install open-vm-tools
然后再执行`vmhgfs-fuse .host:/ /mnt/hgfs`，不过我还是做不到让它启动后自动挂载，每次启动需要重新执行这个命令。
