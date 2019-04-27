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

> 原始的超链接语法这样写：[超链接的名字]（url）
> 在新窗口中打开：[超链接的名字]（url?_blank）
> 在本窗口中打开：[超链接的名字]（url?_self）默认是在本窗口中打开

<font size="4" color=red><b>但上面的说法貌似不行,再往下看</b></font>

<a href="https://blog.csdn.net/jingbin_/article/details/53075086" target="_blank">MarkDown 超链接页面内和通过新窗口打开 - jingbin_的博客 - CSDN博客</a>
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427170557098-376262328.png)

<a href="http://yinping4256.github.io/cn/Markdown%E8%AF%AD%E6%B3%95%E5%9C%A8%E6%96%B0%E7%AA%97%E5%8F%A3%E6%96%B0%E6%A0%87%E7%AD%BE%E9%A1%B5%E4%B8%AD%E6%89%93%E5%BC%80/" target="_blank">Markdown语法:在新窗口新标签页中打开 – 小独裁者的国度</a>
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427220842403-363927983.png)

<a href="https://segmentfault.com/q/1010000013741687/a-1020000013741971" target="_blank">markdown生成的a标签如何在新页面打开 - Feng_Yu的回答 - SegmentFault 思否</a>
<a href="https://stackoverflow.com/questions/4425198/can-i-create-links-with-target-blank-in-markdown" target="_blank">html - Can I create links with 'target="_blank"' in Markdown? - Stack Overflow</a>
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427233203292-19504526.png)


<pre class="brush:javascript;">
&#60script&#62
var links = document.links;

for (var i = 0, linksLength = links.length; i < linksLength; i++) {
   if (links[i].hostname != window.location.hostname) {
       links[i].target = '_blank';
   } 
}
&#60/script&#62
</pre>

## &nbsp; &quot; &amp; &lt; &gt 等html字符转义

[&nbsp; &quot; &amp; &lt; &gt 等html字符转义 - 云+社区 - 腾讯云](https://cloud.tencent.com/developer/article/1353371)
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427231354106-983447850.png)

[|"|&|<|>等html字符转义 - wusuopuBUPT的专栏 - CSDN博客](https://blog.csdn.net/wusuopubupt/article/details/8817826)
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427231711742-1033969177.png)

## 给网页里的超链接加背景图片(eg 签名栏)

如何给网页里的超链接加背景图片 - 心雨星空 - 博客园  https://www.cnblogs.com/xiaogou/p/4969999.html
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190427233509743-927057401.png)


## 网址

Python学习笔记 | 关于python数据对象 hashable & unhashable 的理解 - zhouie - 博客园  https://www.cnblogs.com/zhouie/p/10702613.html
Python中dict详解 - yangyzh - 博客园  https://www.cnblogs.com/yangyongzhi/archive/2012/09/17/2688326.html
Python基本数据类型之dict - morra - 博客园  https://www.cnblogs.com/whatisfantasy/p/5956761.html


各种图（流程图，思维导图，UML，拓扑图，ER图）简介 - 小A永不败 - 博客园  https://www.cnblogs.com/XACOOL/p/5503814.html
跟着8张思维导图学习javascript - 伊凡 - 博客园  https://www.cnblogs.com/wayne-ivan/p/3955329.html
思维导图 - 标签 - 晴天彩虹 - 博客园  https://www.cnblogs.com/panpanwelcome/tag/%E6%80%9D%E7%BB%B4%E5%AF%BC%E5%9B%BE/


python编程中的if __name__ == 'main': 的作用和原理_邓飞龙博客  http://www.dengfeilong.com/post/60.html
if __name__ == '__main__' 如何正确理解 - 姚红 - 博客园  https://www.cnblogs.com/yaohong/p/8660209.html


「Python3学习笔记」读书笔记—字符串 - 简书  https://www.jianshu.com/p/d9111f722d45
Python String Formatting Tutorial – 酷辣虫 CoLaBug  https://www.colabug.com/3438811.html
Python String Formatting - w3resource  https://www.w3resource.com/python/python-format.php
[干货]Python字符串格式化的四种姿势 - ning13481193737的博客 - CSDN博客  https://blog.csdn.net/ning13481193737/article/details/80948501
Python字符串格式化的两种方式 - hi_felix - 博客园  https://www.cnblogs.com/hifelix/p/5881748.html
Python字符串格式化输出 - 暮光微凉 - 博客园  https://www.cnblogs.com/schut/p/8405627.html


3.7.3 Documentation  https://docs.python.org/zh-cn/3.7/index.html
3.7.3 Documentation  https://docs.python.org/3/
内置函数 — Python 3.7.3 文档  https://docs.python.org/zh-cn/3.7/library/functions.html
venv — Creation of virtual environments — Python 3.7.3 documentation  https://docs.python.org/3/library/venv.html
python2 与 python3的区别 - 沐阳zz - 博客园  https://www.cnblogs.com/weikunzz/p/6857971.html


【重点】用 hugo 和 netlify 搭建blog - kok的笔记本  https://wocai.de/post/dev/make-hugo-blog/
在 hugo 中用 markdown 画 思维导图 的方案 - V2EX  https://www.v2ex.com/t/544719
Hugo 中使用思维导图 - kok的笔记本  https://wocai.de/post/dev/make-hugo-blog-add-mindmap/
Hexo中使用markdown来绘制脑图（mind map） | KL's blog  https://qsli.github.io/2017/01/01/markdown-mindmap/
GitHub - HunterXuan/unordered-list-to-mind-map: An example that converts html unordered list to mind map using kityminder-core  https://github.com/HunterXuan/unordered-list-to-mind-map
使用 Markdown 写技术博客，踩过的 6个坑 - 云是风的梦 - 博客园  https://www.cnblogs.com/lijinfeng042/p/9678684.html
Markdown 版本演进 - 云是风的梦 - 博客园  https://www.cnblogs.com/lijinfeng042/p/9780864.html

hexo blog 搭建 - kok的笔记本  https://wocai.de/post/dev/hexo-blog/
hexo 主题开发 - kok的笔记本  https://wocai.de/post/dev/hexo-theme/
github-markdown-css - npm  https://www.npmjs.com/package/github-markdown-css


【链接背景图片】Eclipse For JavaEE安装、配置、测试 - 康建伟 - 博客园  https://www.cnblogs.com/kangjianwei101/p/5621750.html
脑图和MarkDown - 我就是那个王小明 - 博客园  https://www.cnblogs.com/this-xiaoming/p/5660272.html









徐湛 pan.baidu.com
书法培训应先练什么_百度经验  https://jingyan.baidu.com/article/c45ad29c6350e2051753e2de.html
国画都有哪几种画法？_百度知道  https://zhidao.baidu.com/question/58811247.html
国画工笔花卉技法，起稿上色步骤图以及笔的选择_百度经验  https://jingyan.baidu.com/article/4853e1e51bda0e1908f72651.html
国画教程：水墨老虎画法步骤_百度经验  https://jingyan.baidu.com/article/6c67b1d6e1dad92787bb1e8d.html




思维导图 专著/徐茂升主编 
NH00100628372 B804/X766 南海区图书馆  外借处 
NH00100619044 B804/X766 南海区图书馆  驿站图书配送中心 

思维导图实践版/(英)东尼·博赞，(英)克里斯·格里菲斯著；卜煜婷译
NH00100433794 B804/B095/3 南海区图书馆  驿站图书配送中心 

思维导图法实用技巧：进阶篇/孙易新著 
NH00100600706 B804/S977 南海区图书馆  外借处 
NH00100579313 B804/S977 南海区图书馆  驿站图书配送中心

思维导图法：高效开发孩子的左右脑/王心怡，孙易新著 

思维导图：快速提升写作力/孙易新，梁容菁著 
NH00100599031 G634.34/S977 南海区图书馆  外借处 

思维导图：提升你的职场核心竞争力/陈国钦著 
NH00100600291 B804/C425 南海区图书馆  外借处
NH00100608172 B804/C425 南海区图书馆  外借处
NH00100600229 B804/C425 南海区图书馆  外借处



