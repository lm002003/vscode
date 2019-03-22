## vscode总结

[Creating your own snippets in Visual Studio Code](https://code.visualstudio.com/docs/editor/userdefinedsnippets)
[Creating your own snippets in Visual Studio Code](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_variables)<a id=1>#01</a>

**vscode如何替换所有文件的回车格式为LF呢？**
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190306102751106-2094259365.jpg)

## vscode keyboard shortcuts

```plain
多重光标同时编辑:Alt按住不动点击鼠标.
选中光标所在的单词:Ctrl+D.  (Ctrl+Shift+L选中文中所有出该词的地方)
快速切换上下行语句:Alt+Up   (Up:上方向键,在ST中为CtrlShift+方向键)
快速定位到定义的地方:F12
快速预览变量定义:Alt+F12 (这两个功能用过VS的都知道 :)  且C#语言支持当前字段/函数被引用的信息,在ditor.referenceInfos可以设置)
快速复制当前行到上一行或下一行: Shift+Alt+Up/Down
查找/切换匹配括号: Ctrl+Shift+]
快速/取消注释: Ctrl+/
快速分屏编辑: Ctrl+\
alt+shift+a,块注释
ctrl+tab,文件之间切换
ctrl+左键，查看类的源码
空选定状态下按ctrl+c就是复制行
shift+alt+↓是快速复制当前行到下一行
shift+ctrl+↓向下行选择
```

## extension安装

<font size="4" color=red><b>一些好似很牛X的extension-装机比较多的（注意：@sort:installs）。</b></font>
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307160156591-1862028444.png)

## snippets配置(以markdown.json文件为例)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307163412075-31532592.png)
<font size="4" color=red><b>必须在Settings中先行设置quickSuggestions项</b></font>
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307160141973-1609130360.png)
[vscode snippets配置快速代码模板 - 飞行的荷兰猪 - CSDN博客](https://blog.csdn.net/qq_31331027/article/details/84635553)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307164659653-76059906.png)
详见[#01](#1)

## VSCode 安装pep8

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190308180227800-1103525179.png)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190308180232388-1094506352.png)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190308180236691-1242380982.png)

谈谈一些有趣的CSS题目（十二）-- 你该知道的字体 font-family - NET未来之路 - 博客园  https://www.cnblogs.com/lonelyxmas/p/10495324.html
前端小白也能快速学会的博客园博客美化全攻略[附源码] - 程序员大本营  http://www.pianshen.com/article/7649245335/
【详细图解】一步一步教你自定义博客园（cnblog）界面 - 简书  https://www.jianshu.com/p/23b2bfc9a90d
CSS用来控制网页数据的表现，可以使网页的表现与数据内容分离 - 博客园  https://www.cnblogs.com/yuanchenqi/articles/5615774.html

$I$ = $n \degree \ \pi r \div 180$

> 公式描述：公式中n是圆心角度数，r是半径，I为弧长。

地球半径：6371000M(实际当中有变动)
地球周长：$2 \times 6371000M \times \pi$ = $40030173$
纬度38°地球周长：$40030173 * \cos 38 \degree$ = $31544206M$
任意地球经度周长：$40030173M$

经度（东西方向）1M实际度：$360° \div 31544206M$=$1.141255544679108 e^{-5}$ = $0.00001141$
纬度（南北方向）1M实际度：$360° \div 40030173M$ = $ 8.993216192195822 e^{-5}$= $0.00000899$

$a_{1}$$x^{2}$
$e^{-\alpha t}$
$a^{3}_{ij}$
$e^{x^2} \neq {(e^x)}^2$

$a^2$

## Notepad++ 显示问题

下图是一个WGS84坐标的成果表，在Notepad中显示不正常（右下：TIS-620），$角度的符号\degree显示不出来$
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190321162336309-910784807.png)
查看“编码字符集”，原来是泰文
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190321162530043-843092505.png)
重新使用“中文”/“GB2312 (Simplified)”，就OK了
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190321162825490-1070910098.png)