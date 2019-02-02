# 以下文档为分类笔记

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