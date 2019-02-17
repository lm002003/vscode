## python头文件

`#! /usr/bin/env python`
`# -*- coding: utf-8 -*-`
在python语言中`#.`是注释的意思，注意其后的空格，而语句`#! /usr/bin/env python`中`没有空格`！

### code-runner插件运行python之中文支持

> "code-runner.executorMap": {"python": "set PYTHONIOENCODING=utf8 && python"}

### code-runner插件运行python莫名其妙的错误

`问题应该出再"!"上了,联想vim命令行:!python %这是调用python出现的意思`
<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190215221102188-1622530965.jpg" width="80%" />
</left>

`将其顶行留空(如下图)，再运行就正常了`(删除第一行当然也行，但是就不完整了)

<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190215220849480-1513143414.jpg" width="80%" />
</left>