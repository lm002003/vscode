# 以下文档为分类笔记

## vscode中设置工作区隐藏文件或文件夹

语法：
<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214112630906-574567917.jpg" width="80%" />
</left>
进入User Settings页面搜索files.exclude
<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214112705054-1561790686.jpg" width="80%" />
</left>
对比：
<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214112720814-4969050.jpg" width="80%" />
</left>

## 图片居中时，行首必须加空格

 <div align=center>![这里行首必须加空格](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190202161358692-1895602837.png)</div>

## CMD中退出python的命令

* 在Windows中，按Ctrl+Z，再按回车退出
* 在Linux中，按Ctrl+D退出

## VSCode 中列选择模式

* ctrl+shift+左键

## vscode中python环境配置

* 想要在vscode中运行python代码必须要告诉vscode使用哪个解释器才行

方法1. 打开命令面板（Ctrl+Shift+P）输入Python: Select Interpreter然后选择一个解释器。
![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190202170617167-1100568804.png)
方法2. 你也可以直接点击下图中的 Select Python Environment来进行选择。

 <div align=center>![pic0](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190202161358692-1895602837.png)</div>

方法3. 直接在命令面板输入`setting`,输入`pythonpath`注意路径的格式`\\`

![p1](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190202161819227-536751146.png)
![p2](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190202162009707-812279315.png)

## 空格键(包含TAB键)的显示问题

![p0](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190202162201014-984021533.png)

1. 显示TAB键长度为4个空格大小
2. 以`.`的形式显示空格
3. 以4个点的形式显示TAB键

![pic1](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190202160127052-525878586.png)
**`这里有一个特别注意的地方：`**TAB键的显示长度，会被“Editor:Detect Indentation”选项覆盖掉,所以必须`√`去掉
![pic2](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190202160150969-1551001869.png)

VScode中github的初始配置

![p2](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190206213645600-529051056.png)
姓名|技能|排行|寿命
|-|-|-|-|
刘备|哭|大哥|23|
关羽|打|二哥|32|
张飞|骂|三弟|56|

## 使用Markdown语法画流程图

* `流程图的画法和代码块类似~代码置于两个 \`\`之间。`
<font color="#dd0000"><u>流程图的画法和代码块类似~代码置于两个```之间</u></font>

### 语法1: <u>**用flow表示**</u> 例如：

<div class="cnblogs_Highlighter">
<pre class="brush:sql;gutter:true;">
```flow
st=>start: 注册印象笔记
e=>end: 您可以使用markdown
op1=>operation: 登录印象笔记
op2=>operation: 购买并登录马克飞象
cond=>condition: 是否已经购买并登录了马克飞象?
st->op1->cond
cond(yes)->e
cond(no)->op2->e
```
</pre>
</div>

**图示:**
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190208204631720-1203987785.png" width="80%" />
</center>
<font color="#dd0000"><u>流程图的语法大体分为两段：</u></font>

> 定义元素
> 连接元素

<font color="#dd0000"><u>定义元素阶段的语法：</u></font>
tag=>type: content:>url
tag就是一个标签，在第二段连接元素时用type是这个标签的类型
<font color="#dd0000"><u>流程图的基本类型</u></font>

> start
> end
> operation
> subroutine
> condition
> inputoutput

<font color="#dd0000"><u>开始</u></font>
* st=>start:开始

<font color="#dd0000"><u>操作流程</u></font>
* st->op->cond

<font color="#dd0000"><u>条件</u></font>
* cond=>condition:确认？

<font color="#dd0000"><u>结束</u></font>
* e=>end:结束

> st[注册印象笔记]-->a  
> a{是否已经购买马克飞象}  
> a-->|是|b1(您已购买马克飞象可以使用markdown语法)  
> a-->|否|b2(您还未能成功购买马克飞象但你可以免费试用10天)  
> b1-->c[欢迎使用马克飞象]  
> b2-->d{是否要购买马克飞象}  
> d-->|是|e1(您已成功购买马克飞象欢迎使用)  
> e1-->c  
> d-->|否|e2(试用10天后将会到期欢迎购买)  

### 语法2: <u>**用mermaind表示**</u> 例如：

<div class="cnblogs_Highlighter">
<pre class="brush:sql;gutter:true;">
```mermaid
graph LR
A-->B
A-->E{T}
E-->Q
E-->G
```
</pre>
</div>

**图示:**
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190208212327868-1659443733.png" width="50%" />
</center>

graph：用来确定代码为视图
`-->`：用来确定流程图的指向
`[]`：用来表示矩形
`{}`：用来表示菱形
`||`：用来表示判断的是否
`()`：用来表示圆角

## 扩展阅读

<font size=5 color="#dd0000"><u>div+pre标签的组合(为代码添加行号时),其后的md语言失效</u></font>
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190209221633715-453191810.png" width="100%" />
</center>

`正确的显示为:`
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190209222511602-1555238630.png" width="100%" />
</center>
<font size=5 color="#dd0000"><u>博客园引用换行的问题(灰色部分为显示结果)</u></font>
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190208225844708-409279489.png" width="100%" />
</center>

## mermaid工具

> **`mermaid`**是一款开源的画流程图、甘特图、时序图工具，她提供了一种类似markdown的语法来创建各种图。  
> 官网：https://mermaidjs.github.io/  
> [在线编辑器](https://mermaidjs.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZ3JhcGggVERcbkFbQ2hyaXN0bWFzXSAtLT58R2V0IG1vbmV5fCBCKEdvIHNob3BwaW5nKVxuQiAtLT4gQ3tMZXQgbWUgdGhpbmt9XG5DIC0tPnxPbmV8IERbTGFwdG9wXVxuQyAtLT58VHdvfCBFW2lQaG9uZV1cbkMgLS0-fFRocmVlfCBGW2ZhOmZhLWNhciBDYXJdXG4iLCJtZXJtYWlkIjp7InRoZW1lIjoiZGVmYXVsdCJ9fQ)

### 1、入门
我们先试用mermaid提供的在线编辑器，来熟悉一下mermaid的各种画图语法；

* 1 流程图

**[code]**
<div class="cnblogs_Highlighter">
<pre class="brush:sql;gutter:true;">
```mermaid
graph TD
A[Christmas] -->|Get money| B(Go shopping)
B --> C{Let me think}
C -->|One| D[Laptop]
C -->|Two| E[iPhone]
C -->|Three| F[fa:fa-car Car]
```
</pre>
</div>
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190209101338055-182335166.png" width="40%" />
</center>

* 2 时序图

**[code]**
```sequenceDiagram
sequenceDiagram
A->> B: Query
B->> C: Forward query
Note right of C: Thinking...
C->> B: Response
B->> A: Forward response
```
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190209102244712-1466301698.png" width="80%" />
</center>

sequenceDiagram
A->> B: Query
B->> C: Forward query
Note right of C: Thinking...
C->> B: Response
B->> A: Forward response

VScode之初始设置

## 1. 安装git(`git clone`库)

* [Git - Downloading Package  ](https://git-scm.com/download/win)
* git clone https://github.com/用户名/库
<font size=5 color="#dd0000"><u>得到"vscode"文件夹,右键"Open with Code"打开</u></font>
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190210231418107-1910450476.png" width="50%" />
</center>

## 2. `Setting Sync`安装(用来同步其他机子上的插件和配置---要用到`Gist ID`!)
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190210232959472-1504049836.png" width="50%" />
</center>
<font size=5 color="#dd0000"><u>Download Key : Shift + Alt + D</u></font>输入:GitHub Token/GitHub Gist
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190210233400791-1541220511.png" width="50%" />
</center>
同步完成后,插件列表显示`reload`,重启VScode即可

## 扩展阅读1：Git初次设置

<font size=5 color="#dd0000"><u>特别注意：新安装的Git，首次运行需要进行相关的账号设置</u></font>

* 在运行`git commit`时
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211100328071-559445133.png" width="80%" />
</center>
跳出如下错误提示`“Make sure you configure your 'user.name' and 'user.email' in git.”`
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211010811740-465618591.png" width="80%" />
</center>
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211101654897-1779957462.png" width="80%" />
</center>
在`Git Bash`下输入如下两条命令
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211010824175-191780290.png" width="80%" />
</center>

* 在运行`push`命令时，跳出如下登录框，按要求输入即可
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211010837679-1918661635.png" width="50%" />
</center>

成功输入后，一切OK！
<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190211102738545-1525989202.png" width="80%" />
</center>

## 扩展阅读2:VScode安装版本的问题

<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190210232333427-1633833132.png" width="50%" />
</center>

> 按绿色下载区域的"向下箭头",`注意`先不要选`User Installer`版本,继续按下方`Other downloads`选`System Installer`才是正解!

<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190210232741783-528904244.png" width="50%" />
</center>

## 扩展阅读3:VScode插件安装

* Visual Studio Code 插件安装方法
方法 1. Ctrl/Cmd+Shift+P (或 F1) 输入 Extensions, 选中 Install Extension然后输入插件名称/关键字.
方法 2. Ctrl/Cmd+P (或 Ctrl/Cmd + E) 输入 ext install [插件关键字/名称]
方法 3. 直接点击左侧栏这个扩展按钮（Ctrl+Shift+X）
`不在插件商店的插件, 则可以放置到用户目录下的 .vscode/extensions 文件夹中~ 重启 VS Code 即可生效.`
* [注]有些插件和配置项可能还要手工操作:
    1. `python安装了没有?`版本和安装路径各个机子可能不同
    2. vscode-icons插件也提示手工修改:File > Preferences > File Icon Theme > VSCode Icons.

---

### 我再测试一下

新安装的3个软件:
Markdown Preview Mermaid Support
yUML
code-flowchart

```html
<img src="http:..." width = "100" height = "100" div align=right />
```

* 关系图默认的颜色可能很丑，可以修改【用户设置】中的【Mermaid Theme】为【forest】

写markdown一直没找到特别顺手的工具，这两天试了试vscode，被惊艳到到了，特此记录一下。

### 1、安装vscode

之所以罗嗦一下安装，是因为安装版明显不如解压绿色版好用，特此标记一下！

### 2、安装markdown插件

vscode默认是支持markdown的，只需要装一个预览插件神器：Markdown Preview Enhanced。
除了常规的功能外，特别要提出的是两个功能：

（1）图像

Markdown Preview Enhanced 内部支持mermaid, PlantUML,WaveDrom,GraphViz，Vega&Vega-lite，Ditaa 图像渲染。你也可以通过使用Code Chunk来渲染TikZ,Python Matplotlib,Plotly等图像。

（2）Code Chunk

Markdown Preview Enhanced 支持渲染代码的运行结果!!!
当你试用过Code Chunk之后，就知道为什么说是神器了！想想画图全部是用代码，是什么感觉？
![pic5](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190207230639287-2107815210.jpg)
