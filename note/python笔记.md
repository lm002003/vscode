## python documentation

> 阅读代码是一个提升自己编程水平的好方法。如何阅读代码？阅读代码的最好方法时给代码做注释。对，如果有可能就给每行代码做注释，这样就能理解代码的含义了！

[文档：3.7.2 Documentation  ](https://docs.python.org/3.7/)
[文档：Python 2.7.16 documentation  ](https://docs.python.org/2.7/)
[文档：《Python 官方文档：入门教程》 | 高品质的 Python 开发者社区  ](https://learnku.com/docs/tutorial/3.7.0)

python built-in Function
id()
type()
dir(math)
help(round)
print(list(range(9))),需要使用list()才可以输出range()

### 为什么open得到的io.TextIOWrapper 这个数据类型可以用在for 循环

<pre class="brush:python;">
>>> f=open('1.txt')
>>> from collections import Iterator
>>> isinstance(f, Iterator)
True
</pre>

### 查看python中模块的所有方法

[查看python中模块的所有方法 - CloudXli的博客 - CSDN博客](https://blog.csdn.net/cloudxli/article/details/79421599)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190311103827885-1895835664.png)

### python3 IO模块源代码查询方式

第一步、我们在一个.py文件中引入import io，然后CTRL + 左键 链接到io所在的文件，我们就到了io.py文件中，但这并不是我们需要查找的文件。
第二步、在python安装目录中有一个Lib文件夹，里面有一个_pyio.py文件。在文件最上边声明了一句话
"""
Python implementation of the io module.
"""
根据这句就可以断定就是我们需要的io文件了。

### python3.7--内建函数

打开 Python IDLE，我用的 是 Python 3.7
输入 dir(__builtins__)
也可以：
import builtins
dir(builtins)
得到的结果和 dir(__builtins__) 是一样的。

## 《跟老齐学python:从入门到精通》读书笔记

p143. Python中为对象编写接口，而不是为数据类型编写
p143. Python对命名的一般要求：
    文件名：小写，可使用下画线
    函数名：小写，可以用下画线风格单词以增加可读性。
    函数参数：如果一个函数的参数名称和保留的关键字冲突，通常使用一个后缀下画线
    变量：变量名全部小写，由下画线连接各个单词

## Python典型算法

### 斐波那契数列

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190320151056774-779158708.png)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190320152103277-742030708.png)

## SRTM数据下载

DLR的数字高程数据（免费的最高精度DEM数据）下载方法 | 数据地图博客  http://mapclub.cn/archives/2246

Global Data Explorer (Powered by GeoBrain)  https://gdex.cr.usgs.gov/gdex/

SRTM Data – CGIAR-CSI SRTM  http://srtm.csi.cgiar.org/srtmdata/

EOWEB GeoPortal  https://geoservice.dlr.de/egp/main?context=dlr:srtm#mainWindowtabMap

https://stackoverflow.com/questions/14535730/what-does-hashable-mean-in-python

## &nbsp; &quot; &amp; &lt; &gt 等html字符转义

[&nbsp; &quot; &amp; &lt; &gt 等html字符转义 - 云+社区 - 腾讯云](https://cloud.tencent.com/developer/article/1353371)
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427231354106-983447850.png)
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190430083340740-2121021893.png)

[|"|&|<|>等html字符转义 - wusuopuBUPT的专栏 - CSDN博客](https://blog.csdn.net/wusuopubupt/article/details/8817826)
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427231711742-1033969177.png)

## 给网页里的超链接加背景图片(eg 签名栏)

如何给网页里的超链接加背景图片 - 心雨星空 - 博客园  https://www.cnblogs.com/xiaogou/p/4969999.html
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427233509743-927057401.png)


