## 当同时安装Python2和Python3后，如何兼容并切换使用详解（比如pip使用）

<font size="4" color=red><b>python成了2.7而py成了3.7，呵呵！</b></font>
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307173004486-1810970629.png)
[当同时安装Python2和Python3后，如何兼容并切换使用详解（比如pip使用） - shabbylee - 博客园  ](https://www.cnblogs.com/shabbylee/p/6792555.html)
由于历史原因，Python有两个大的版本分支，Python2和Python3，又由于一些库只支持某个版本分支，所以需要在电脑上同时安装Python2和Python3，因此如何让两个版本的Python兼容，如何让脚本在对应的Python版本上运行，这个是值得总结的。

对于Ubuntu 16.04 LTS版本来说，Python2（2.7.12）和Python3（3.5.2）默认同时安装，默认的python版本是2.7.12。

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307104238583-421337747.jpg)

<font color=red><b>对于Windows，就有点复杂了。</b></font>因为不论python2还是python3，python可执行文件都叫python.exe，在cmd下输入python得到的版本号取决于环境变量里哪个版本的python路径更靠前，毕竟windows是按照顺序查找的。比如环境变量里的顺序是这样的：

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307103518190-1421162992.jpg)

### 借用py的一个参数来调用不同版本的Python

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307105045343-1175546307.jpg)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319150133574-2073189870.png)

### 借用py的一个参数来调用不同版本的pip

查询pip版本，看到python 2并没有安装相应的pip
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307111242937-272159802.jpg)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307105456726-1141913563.jpg)
> 注意：py -0 查询可用的python版本
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319145419801-678882466.png)

### 安装pip

> python.exe pip-19.0.3-py2.py3-none-any.whl/**pip install** pip-9.0.1-py2.py3-none-any.whl

如下pip的安装文件**pip-19.0.3-py2.py3-none-any.whl**
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307111654976-933861491.jpg)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319142611835-1756642070.png)
安装在了python37目录下！**而python27下显示“No module named pip”**

接下来为python27安装pip
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319143546912-686110052.png)

注意，此处是 **easy_install pip** 或者 **python easy_install.py pip**

<font size="4" color=red><b>不过，为什么我的python27安装的却是pip3.7？？</b></font>
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319144344711-1441107216.png)

后来，我借鉴了"pip-19.0.3-py2.py3-none-any.whl"的安装，发现python27（python37同样）目录下存在预先安装的**pip-18.1-py2.py3-none-any.whl**
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319144936285-1606780269.png)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319145024714-1510079805.png)
至此，python27和python37下都安装了pip。

接着看看**pip 19.0.3 documentation**的说明
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319152951336-855099325.png)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319152637314-1526059252.png)
<font size="4" color=red><b>但是，python2/python3分别有自己的pip，其意义何在？不通用？还是？</b></font>

<font color=red>python的pypi网站上的包大多提供whl格式的安装方式</font>
例如：pip install PyMySQL-0.6.6-py2.py3-none-any.whl

## pip用法、venv、虚拟环境（Windows环境）

[pip用法、venv、虚拟环境（Windows环境） - qq_43399787的博客 - CSDN博客  ](https://blog.csdn.net/qq_43399787/article/details/83377951)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190306095439686-938574480.png)

## windows系统下，首行#/usr/bin/env python是不是没有用

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190306101839565-427388692.jpg)

## Python编程中对于头部注释的要求

[Python编程中对于头部注释的要求 - mr_cookies的博客 - CSDN博客](https://blog.csdn.net/mr_cookies/article/details/72880826)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190311110454548-588329238.png)

[#!/usr/bin/python3的作用 解决vscode ImportError: No module named xxxx - clemente - 博客园](https://www.cnblogs.com/clemente/p/10543317.html)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190319153214599-585778808.png)

### python头部注释 vim添加头部注释

[python头部注释 vim添加头部注释 - juandx - 博客园](https://www.cnblogs.com/juandx/p/5626710.html)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190311112047291-1192694000.png)