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

Cmd Markdown 公式指导手册
一、公式使用参考
1．如何插入公式
2．如何输入上下标
3．如何输入括号和分隔符
4．如何输入分数
5．如何输入开方
6．如何输入省略号
7．如何输入矢量
8．如何输入积分
9．如何输入极限运算
10．如何输入累加、累乘运算
11．如何输入希腊字母
12．如何输入其它特殊字符
(1)．关系运算符
(2)．集合运算符
(3)．对数运算符
(4)．三角运算符
(5)．微积分运算符
(6)．逻辑运算符
(7)．戴帽符号
(8)．连线符号
(9)．箭头符号
13．如何进行字体转换
14．大括号和行标的使用
15．其它命令
(1)．定义新的符号 \operatorname
(2)．添加注释文字 \text
(3)．在字符间加入空格
(4)．更改文字颜色
(5)．添加删除线
二、矩阵使用参考
1．如何输入无框矩阵
2．如何输入边框矩阵
3．如何输入带省略符号的矩阵
4．如何输入带分割符号的矩阵
5．如何输入行中矩阵
三、方程式序列使用参考
1．如何输入一个方程式序列
2．在一个方程式序列的每一行中注明原因
四、条件表达式使用参考
1．如何输入一个条件表达式
2．如何输入一个左侧对齐的条件表达式
3．如何使条件表达式适配行高
五、数组与表格使用参考
1．如何输入一个数组或表格
2．如何输入一个嵌套的数组或表格
3．如何输入一个方程组
六、连分数使用参考
1．如何输入一个连分式
七、交换图表使用参考
1．如何输入一个交换图表
八、一些特殊的注意事项
