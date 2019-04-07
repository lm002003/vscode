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

## 从markdown文件创建思维导图

[pzhaonet/mindr: an R package which converts markdown files (.md, .Rmd) into mindmaps (brainstorms)](https://github.com/pzhaonet/mindr)

[迅捷画图官网 - 专业的思维导图|流程图制作网站](http://www.liuchengtu.com/)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325174200564-1814723978.png)

## 15款最好用的思维导图工具

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325175201594-555582369.png)

## “思维导图”与Markdown互相转换

[“思维导图”与Markdown互相转换 - 烧烤仙人个人博客 - CSDN博客](https://blog.csdn.net/qq_29777823/article/details/82085362)
注册地址：[ProcessOn - 免费在线作图，实时协作](https://www.processon.com/)
官网下载地址：[MindNode for Mac - MindNode](https://mindnode.com/mindnode/mac)
参考：[用“思维导图”写markdown - 简书](https://www.jianshu.com/p/093aba73b751)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325180439718-2093533621.png)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325181445432-1847463059.png)

## Markdown和思维导图结合 文章层级思路清晰 成就深度好文

[Markdown和思维导图结合 文章层级思路清晰 成就深度好文](http://wemedia.ifeng.com/94213493/wemedia.shtml)

使用markdown的人都知道，markdown有专属语法，对新手来说，语法需要学习，不管是markdown写作的新手还是常用用户，都应该了解一下，markdown加上思维导图的黑科技神操作，你一定没有体验过吧。

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325181924003-1099422193.gif)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325182132726-472349741.png)

## MarkRemap: 将 Markdown 转成漂亮的脑图

[MarkRemap: 将 Markdown 转成漂亮的脑图 - 少数派](https://sspai.com/post/48272)
[MarkRemap主页](https://markremap.com/)
[D3.js - Data-Driven Documents](https://d3js.org/)
[dundalek/markmap: Visualize markdown documents as mindmaps](https://github.com/dundalek/markmap)
[MarkEditor](https://www.markeditor.com/)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325182937836-940209703.png)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325182959414-2107930883.gif)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190325183032250-1799819082.png)

## 让思路更清晰——我是怎样使用思维导图的

[让思路更清晰——我是怎样使用思维导图的 - Coding 博客](https://blog.coding.net/blog/coding-mindmap)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190326062023140-1819383791.png)

## html及css/js注释

> [HTML <!--...--> 注释 、CSS/JS //注释 和 /*.....*/ 注释 - 水墨墨心 - 博客园](https://www.cnblogs.com/iceflorence/p/5815409.html)

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406002342952-1727073791.png)

## 【教程】航拍全景图——最详细的补天与调色

> [【教程】航拍全景图——最详细的补天与调色](http://www.chinahpsy.com/artid-2824.html)

软件及素材：ps软件，拼接好的残缺天空部分的航拍全景图，天空素材，HDR调色插件。

1. 用ps软件打开全景图，如图：

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406230959787-693961123.jpg)

2. 选一张合适的天空素材拖到ps里面，​调整全景天空的大小（顶部对齐，两侧对齐，地平线对齐）

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406231224034-2110659483.jpg)
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406231649138-1806993959.jpg)

3. 使用ps滤镜位移工具，将两张图片的太阳调整至图片中间。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406231728179-433416731.jpg)
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406231757073-25039127.jpg)

​4. 将全景图图层调整到天空图层上面。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406231819495-37328991.jpg)

5. 给全景图层添加蒙版，选择渐变工具：渐变类型选择中灰密度，圈出选项与本图一致。按住shift，再按住鼠标左键从天空顶部往下拉直线，长度不要超过地平线，多拉几次可以看到效果。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406231856559-1475646928.jpg)

<font size="4" color=red><b>（注意图中由于建筑物太高，导致天空部分遮挡了建筑物，我们可以用画笔工具将建筑物涂抹出来，选择画笔工具，前景色设置为白色，涂抹被遮挡的部分。​​）</b></font>

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406231954898-1189451977.jpg)
![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406232021540-1634994453.jpg)

6. Ctrl+Alt+Shift+E合并图层，​补天完成。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406232058687-1717772958.jpg)

​7. 打开Camear RAW调整图片的基本属性。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406232152193-1633001917.jpg)

8. 打开HDR插件工具。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406232732881-1971162053.jpg)

9. 应用一个HDR滤镜。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406233033723-1985280922.jpg)

10. 再次打开Camear RAW调整图片。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406233208890-1355000217.jpg)

11. 位移工具（ps——滤镜——其他——位移），会看天空拼接出有一条直线痕迹，使用修复画笔将痕迹修复。​

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406233241311-170400816.jpg)

12. 补天完成，最终成果如图。

![](https://img2018.cnblogs.com/blog/1588269/201904/1588269-20190406233313817-1512983455.jpg)

<ol type="1">
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
</ol>