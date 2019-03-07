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

## pip用法、venv、虚拟环境（Windows环境）

[pip用法、venv、虚拟环境（Windows环境） - qq_43399787的博客 - CSDN博客  ](https://blog.csdn.net/qq_43399787/article/details/83377951)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190306095439686-938574480.png)

## windows系统下，首行#/usr/bin/env python是不是没有用

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190306101839565-427388692.jpg)

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

### 借用py的一个参数来调用不同版本的pip

查询pip版本，看到python 2并没有安装相应的pip
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307111242937-272159802.jpg)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307105456726-1141913563.jpg)

### 安装pip

`python.exe pip-19.0.3-py2.py3-none-any.whl/pip install pip-9.0.1-py2.py3-none-any.whl.`

如下pip的安装文件**pip-19.0.3-py2.py3-none-any.whl**
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307111654976-933861491.jpg)

<font color=red>python的pypi网站上的包大多提供whl格式的安装方式</font>
例如：pip install PyMySQL-0.6.6-py2.py3-none-any.whl
