# conda命令入坑记

**TypeError: LoadLibrary() argument 1 must be str, not None**

![](https://img2018.cnblogs.com/blog/1588269/201910/1588269-20191011171042470-1762105024.png)

<font size="4" color=red><b>网上太多的资料，大多都是在讲path的设置，试来试去根本无效，反而绕的晕的不行！！还好！有两篇文章将的还靠点边，在加上自己的理解，终于-------</b></font>

* [windows anaconda TypeError: LoadLibrary() argument 1 must be str, not None [Debug] - taoqick的专栏 - CSDN博客](https://blog.csdn.net/taoqick/article/details/99415975)

![](https://img2018.cnblogs.com/blog/1588269/201910/1588269-20191011165220029-2045236266.png)

* [conda 创建环境后，却不能激活环境 - qq1376725255的专栏 - CSDN博客](https://blog.csdn.net/qq1376725255/article/details/96286923)

![](https://img2018.cnblogs.com/blog/1588269/201910/1588269-20191011165240291-1948025701.png)

***

## 综合上述两篇文章操作如下

* <font size="3" color=red><b>找到conda.bat的路径C:\Users\XXX\AppData\Local\Continuum\anaconda3\condabin\</b></font>
<br>运行命令"conda.bat info -e"和"conda.bat list"，效果如下，但没有解决问题

![](https://img2018.cnblogs.com/blog/1588269/201910/1588269-20191011171828454-42759321.png)

* <font size="3" color=red><b>运行命令"conda.bat update -n base conda"，效果如下，完满解决（注意：我们最终是要转到conda上来）！</b></font>

![](https://img2018.cnblogs.com/blog/1588269/201910/1588269-20191011174402647-1958253336.png)

## 总结

<font size="3" color=red><b>至于condabin文件夹下conda.bat文件的更多使用，继续~~~~</b></font>