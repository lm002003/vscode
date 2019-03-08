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

|python2.7|python3.7|
|:----|----:|
|ArithmeticError|ArithmeticError|
|AssertionError|AssertionError|
|AttributeError|AttributeError|
|BaseException|BaseException|
|BufferError|BufferError|
|BytesWarning|BytesWarning|
|DeprecationWarning|DeprecationWarning|
|EOFError|EOFError|
|Ellipsis|Ellipsis|
|EnvironmentError|EnvironmentError|
|Exception|Exception|
|FALSE|FALSE|
|FloatingPointError|FloatingPointError|
|FutureWarning|FutureWarning|
|GeneratorExit|GeneratorExit|
|IOError|IOError|
|ImportError|ImportError|
|ImportWarning|ImportWarning|
|IndentationError|IndentationError|
|IndexError|IndexError|
|KeyError|KeyError|
|KeyboardInterrupt|KeyboardInterrupt|
|LookupError|LookupError|
|MemoryError|MemoryError|
|NameError|NameError|
|None|None|
|NotImplemented|NotImplemented|
|NotImplementedError|NotImplementedError|
|OSError|OSError|
|OverflowError|OverflowError|
|PendingDeprecationWarning|PendingDeprecationWarning|
|ReferenceError|ReferenceError|
|RuntimeError|RuntimeError|
|RuntimeWarning|RuntimeWarning|
|StandardError|StandardError|
|StopIteration|StopIteration|
|SyntaxError|SyntaxError|
|SyntaxWarning|SyntaxWarning|
|SystemError|SystemError|
|SystemExit|SystemExit|
|TabError|TabError|
|TRUE|TRUE|
|TypeError|TypeError|
|UnboundLocalError|UnboundLocalError|
|UnicodeDecodeError|UnicodeDecodeError|
|UnicodeEncodeError|UnicodeEncodeError|
|UnicodeError|UnicodeError|
|UnicodeTranslateError|UnicodeTranslateError|
|UnicodeWarning|UnicodeWarning|
|UserWarning|UserWarning|
|ValueError|ValueError|
|Warning|Warning|
|WindowsError|WindowsError|
|ZeroDivisionError|ZeroDivisionError|
|__debug__|__debug__|
|__doc__|__doc__|
|__import__|__import__|
|__name__|__name__|
|__package__|__package__|
|abs|abs|
|all|all|
|any|any|
|apply|apply|
|basestring|basestring|
|bin|bin|
|bool|bool|
|buffer|buffer|
|bytearray|bytearray|
|bytes|bytes|
|callable|callable|
|chr|chr|
|classmethod|classmethod|
|cmp|cmp|
|coerce|coerce|
|compile|compile|
|complex|complex|
|copyright|copyright|
|credits|credits|
|delattr|delattr|
|dict|dict|
|dir|dir|
|divmod|divmod|
|enumerate|enumerate|
|eval|eval|
|execfile|execfile|
|exit|exit|
|file|file|
|filter|filter|
|float|float|
|format|format|
|frozenset|frozenset|
|getattr|getattr|
|globals|globals|
|hasattr|hasattr|
|hash|hash|
|help|help|
|hex|hex|
|id|id|
|input|input|
|int|int|
|intern|intern|
|isinstance|isinstance|
|issubclass|issubclass|
|iter|iter|
|len|len|
|license|license|
|list|list|
|locals|locals|
|long|long|
|map|map|
|max|max|
|memoryview|memoryview|
|min|min|
|next|next|
|object|object|
|oct|oct|
|open|open|
|ord|ord|
|pow|pow|
|print|print|
|property|property|
|quit|quit|
|range|range|
|raw_input|raw_input|
|reduce|reduce|
|reload|reload|
|repr|repr|
|reversed|reversed|
|round|round|
|set|set|
|setattr|setattr|
|slice|slice|
|sorted|sorted|
|staticmethod|staticmethod|
|str|str|
|sum|sum|
|super|super|
|tuple|tuple|
|type|type|
|unichr|unichr|
|unicode|unicode|
|vars|vars|
|xrange|xrange|
|zip|zip|