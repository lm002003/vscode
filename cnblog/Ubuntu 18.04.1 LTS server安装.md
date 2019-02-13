## VMware Workstation Pro操作

* 创建新的虚拟机
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061331378-1484504410.png" width="80%" /><center>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061342841-1574290966.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061347975-1333308564.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061352337-1658358372.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061423008-1483120881.png" width="80%" /><center>

* <p align="left"><font color=red>这里强调一下虚拟机存放目录的问题：</font></p>

    * <p align="left">建一个根目录VM，在其下建xp、win7、ubuntu、Fedora等二级目录，用来分别存放对应的系统</p>
    * <p align="left">这里，我在ubuntu目录下有建立了lmdisk、lmsys两个文件夹(这两个文件夹会在下面的步骤中陆续用到，而且，在虚拟系统迁移时，这种方法的优势就更明显了)</p>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061436270-1263854155.png" width="80%" /><center>

* <p align="left"><font color=red>这里处理器配置是重点，我也是一知半解，怎么办？用软件Speccy来查，能知道多少先记录多少，以后再完善···</font></p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061440994-1794836195.png" width="80%" /><center>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213092306718-1312008536.png" width="100%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061445348-992748988.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061451816-832268654.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061459910-311488770.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061756093-474334387.png" width="80%" /><center>

* <p align="left"><font color=red>"创建新虚拟磁盘"吧，"物理磁盘"无法在host OS和guest OS之间同时使用，还不如在guest OS中建一个"共享文件夹"方便快捷</font></p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061800469-741698689.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061807002-1378329028.png" width="80%" /><center>

* <p align="left"><font color=red>选"将虚拟磁盘存储为单个文件"</font></p>

    * <p align="left">"最大磁盘大小"：看自己需求吧；</p>
    * <p align="left"><font color=red>"立即分配所有磁盘空间"：FAT文件只能拆分了(大小有限制)，NTFS建议单一文件。如果"立即分配···"，不论guest OS实际占用多少空间，反正40G是没有了，就是这么个区别</font></p>
    * <p align="left"><font color=red>"将虚拟磁盘拆分成多个文件"：这应该是考虑到FAT32不支持4G以上文件的缘故吧，NTFS单一就行了(而且你不可能经常移动虚拟系统吧)</font></p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061811936-15043728.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061816487-1472577281.png" width="80%" /><center>

* <p align="left">上图的"自定义硬件"不用管，直接点"完成"(如此也就没有下图了，呵呵)，<u>直接跳到下一步</u></p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213061820401-699516908.png" width="80%" /><center>

* <p align="left">点下图右下角"设置"，加载iso文件</p>

    <center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062237546-1935714920.png" width="80%" /><center>

    <center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062254749-1307256892.png" width="80%" /><center>

<H2 align="left">Ubuntu 18.04.1 LTS server安装</H2>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062258932-569456343.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062302872-557271083.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062306839-1224693321.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062310998-1252505099.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062315418-234428814.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062415134-1166086256.png" width="80%" /><center>

* <p align="left">下图此处选"Manual"</p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062429403-771820148.png" width="80%" /><center>

* <p align="left">未分区时，下图显示40G</p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062435180-1178619508.png" width="80%" /><center>

* <p align="left"><font color=red>下图开始分区</font></p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062439552-1192403902.png" width="80%" /><center>

* <p align="left"><font color=red>分区完成后效果(至于分区的详尽讲解，在其他文章中再做讲解)</font></p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213102436362-1422345741.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062455076-1471396535.png" width="80%" /><center>

* <p align="left">下图有一个"Github Username："尚不知道具体用途！探索吧···</p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062458478-210463856.png" width="80%" /><center>

* <p align="left">(依据上图信息)系统运行起来后的效果，如下</p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213103441352-1010625370.png" width="80%" /><center>

* <p align="left">下图的SSH keys暂时未知怎么用···</p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213104138085-806311350.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062508853-572193842.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062514466-1788386796.png" width="80%" /><center>

* <p align="left"><font color=red>上图的安装进度很容易被误认为"死机"而放弃，打开"View full log"查看安装输出信息，直到显示"finish:···"，将其关闭，此时出现"Reboot Now",重启！OK！</font></p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062525775-2120040529.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062532496-1721204428.png" width="80%" /><center>

* <p align="left">下图"回车"</p>
<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062537201-727473595.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062544009-1243202562.png" width="80%" /><center>

<center><img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190213062549649-1457659785.png" width="80%" /><center>

【后记】
这篇文章，在博客园的显示出了两个大问题：
1、`有序列表`无法正常显示，后来全部改成了`无效列表`
2、第二个H2目录，使用`## `时，始终中间对其，后来改成了`<H2 align="left">Ubuntu 18.04.1 LTS server安装</H2>`