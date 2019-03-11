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

### Python 文件读写 文件和路径

1、在Windows上，使用倒斜杆作为文件夹之间的分隔符，在Linux上，使用正斜杠作为路径分隔符。在编写Python脚本时，可以os.path.join()函数来处理
在Windows环境下命令如下，返回的路径为倒斜杆，倒斜杆有两个，是因为加了转义字符
<pre class="brush:python;">
>>> import os
>>> os.path.join('usr','bin','pigwan7')
'usr\\bin\\pigwan7'
</pre>
在Linux环境下命令，返回的路径为正斜杠
<pre class="brush:py;">
>>> import os
>>> os.path.join('usr','bin','pigwan7')
'usr/bin/pigwan7'
</pre>
2、获得当前路径和改变工作路径
<pre class="brush:python;">
>>> import os
>>> os.chdir('/usr/bin')
>>> os.getcwd()
'/usr/bin'
>>> os.chdir('/root')
>>> os.getcwd()
'/root'
</pre>
3、创建新文件夹

<pre class="brush:python;">
>>> os.makedirs('/home/xiaobai/study')
>>> os.chdir('/home/xiaobai/study')
>>> os.getcwd()
'/home/xiaobai/study'
</pre>
 4、相对路径和绝对路径
os.path.abspath(path)返回参数的绝对路径的字符串，os.path.isabs(path)，返回一个布尔值，判断是否是相对路径
<pre class="brush:python;">
>>> os.path.abspath('.')
'/home/xiaobai/study'
>>> os.path.isabs('.')
False
</pre>
os.path.dirname(path)返回一个字符串，包含path参数中最后一个斜杠之前的所有内容；os.path.basename(path)将返回path参数中最后一个斜杠之后的所有内容
<pre class="brush:python;">
>>> os.path.dirname('/home/xiaobai/study/test.txt')
'/home/xiaobai/study'
>>> os.path.basename('/home/xiaobai/study/test.txt')
'test.txt'
</pre>
os.path.split()返回两个字符串的元组，包含路径的目录名称和基本名称
<pre class="brush:python;">
>>> os.path.split('/home/xiaobai/study/test.txt')
('/home/xiaobai/study', 'test.txt')
</pre>
查看文件大小和文件夹内容
os.path.getsize(path)返回path参数中文件的字节数，下面这个例子中的文件大小为51200字节
<pre class="brush:python;">
>>> os.path.getsize('/home/xiaobai/study/test.txt')
51200
</pre>
os.listdir(path)返回path参数中文件名的字符串列表，/home/xiaobai/study目录下共有3个文件
<pre class="brush:python;">
[root@client01 study]# 
[root@client01 study]# pwd
/home/xiaobai/study
[root@client01 study]# ll
total 156
-rw-r--r--. 1 root root 51200 Nov 17 01:28 test1.txt
-rw-r--r--. 1 root root 51200 Nov 17 01:28 test2.txt
-rw-r--r--. 1 root root 51200 Nov 17 01:24 test.txt
[root@client01 study]#
>>> os.listdir('/home/xiaobai/study/')
['test.txt', 'test1.txt', 'test2.txt']
</pre>
利用os.path.getsize(path)和os.listdir()可以计算文件夹下所有文件的大小
<pre class="brush:python;">
>>> totalSize=0
>>> for filename in os.listdir('/home/xiaobai/study/'):
... totalSize=totalSize + os.path.getsize(os.path.join('/home/xiaobai/study/',filename))
... 
>>> print(totalSize)
153600
</pre>
5、检测路径有效性
<pre class="brush:python;">
>>> os.path.exists('/home/xiaobai')
True
>>> os.path.isdir('/home/xiaobai')
True
>>> os.path.isfile('/home/xiaobai')
False
</pre>

### Python 3.x标准模块库目录

[The Python Standard Library — Python 3.7.2 documentation](https://docs.python.org/3/library/)

<h3>文本</h3>

1. string：通用字符串操作
2. re：正则表达式操作
3. difflib：差异计算工具
4. textwrap：文本填充
5. unicodedata：Unicode字符数据库
6. stringprep：互联网字符串准备工具
7. readline：GNU按行读取接口
8. rlcompleter：GNU按行读取的实现函数

<h3>二进制数据</h3>

9. struct：将字节解析为打包的二进制数据
10. codecs：注册表与基类的编解码器

<h3>数据类型</h3>

11. datetime：基于日期与时间工具
12. calendar：通用月份函数
13. collections：容器数据类型
14. collections.abc：容器虚基类
15. heapq：堆队列算法
16. bisect：数组二分算法
17. array：高效数值数组
18. weakref：弱引用
19. types：内置类型的动态创建与命名
20. copy：浅拷贝与深拷贝
21. pprint：格式化输出
22. reprlib：交替repr()的实现

<h3>数学</h3>

23. numbers：数值的虚基类
24. math：数学函数
25. cmath：复数的数学函数
26. decimal：定点数与浮点数计算
27. fractions：有理数
28. random：生成伪随机数

<h3>函数式编程</h3>

29. itertools：为高效循环生成迭代器
30. functools：可调用对象上的高阶函数与操作
31. operator：针对函数的标准操作

<h3>文件与目录</h3>

32. os.path：通用路径名控制
33. fileinput：从多输入流中遍历行
34. stat：解释stat()的结果
35. filecmp：文件与目录的比较函数
36. tempfile：生成临时文件与目录
37. glob：Unix风格路径名格式的扩展
38. fnmatch：Unix风格路径名格式的比对
39. linecache：文本行的随机存储
40. shutil：高级文件操作
41. macpath：Mac OS 9路径控制函数

<h3>持久化</h3>

42. pickle：Python对象序列化
43. copyreg：注册机对pickle的支持函数
44. shelve：Python对象持久化
45. marshal：内部Python对象序列化
46. dbm：Unix&ldquo;数据库&rdquo;接口
47. sqlite3：针对SQLite数据库的API 2.0

<h3>压缩</h3>

48. zlib：兼容gzip的压缩
49. gzip：对gzip文件的支持
50. bz2：对bzip2压缩的支持
51. lzma：使用LZMA算法的压缩
52. zipfile：操作ZIP存档
53. tarfile：读写tar存档文件

<h3>文件格式化</h3>

54. csv：读写CSV文件
55. configparser：配置文件解析器
56. netrc：netrc文件处理器
57. xdrlib：XDR数据编码与解码
58. plistlib：生成和解析Mac OS X .plist文件

<h3>加密</h3>

59. hashlib：安全散列与消息摘要
60. hmac：针对消息认证的键散列

<h3>操作系统工具</h3>

61. os：多方面的操作系统接口
62. io：流核心工具
63. time：时间的查询与转化
64. argparser：命令行选项、参数和子命令的解析器
65. optparser：命令行选项解析器
66. getopt：C风格的命令行选项解析器
67. logging：Python日志工具
68. logging.config：日志配置
69. logging.handlers：日志处理器
70. getpass：简易密码输入
71. curses：字符显示的终端处理
72. curses.textpad：curses程序的文本输入域
73. curses.ascii：ASCII字符集工具
74. curses.panel：curses的控件栈扩展
75. platform：访问底层平台认证数据
76. errno：标准错误记号
77. ctypes：Python外部函数库

<h3>并发</h3>

78. threading：基于线程的并行
79. multiprocessing：基于进程的并行
80. concurrent：并发包
81. concurrent.futures：启动并行任务
82. subprocess：子进程管理
83. sched：事件调度
84. queue：同步队列
85. select：等待I/O完成
86. dummy_threading：threading模块的替代（当_thread不可用时）
87. _thread：底层的线程API（threading基于其上）
88. _dummy_thread：_thread模块的替代（当_thread不可用时）

<h3>进程间通信</h3>

89. socket：底层网络接口
90. ssl：socket对象的TLS/SSL填充器
91. asyncore：异步套接字处理器
92. asynchat：异步套接字命令/响应处理器
93. signal：异步事务信号处理器
94. mmap：内存映射文件支持

<h3>互联网</h3>

95. email：邮件与MIME处理包
96. json：JSON编码与解码
97. mailcap：mailcap文件处理
98. mailbox：多种格式控制邮箱
99. mimetypes：文件名与MIME类型映射
100. base64：RFC 3548：Base16、Base32、Base64编码
101. binhex：binhex4文件编码与解码
102. binascii：二进制码与ASCII码间的转化
103. quopri：MIME quoted-printable数据的编码与解码
104. uu：uuencode文件的编码与解码

<h3>HTML与XML</h3>

105. html：HTML支持
106. html.parser：简单HTML与XHTML解析器
107. html.entities：HTML通用实体的定义
108. xml：XML处理模块
109. xml.etree.ElementTree：树形XML元素API
110. xml.dom：XML DOM API
111. xml.dom.minidom：XML DOM最小生成树
112. xml.dom.pulldom：构建部分DOM树的支持
113. xml.sax：SAX2解析的支持
114. xml.sax.handler：SAX处理器基类
115. xml.sax.saxutils：SAX工具
116. xml.sax.xmlreader：SAX解析器接口
117. xml.parsers.expat：运用Expat快速解析XML

<h3>互联网协议与支持</h3>

118. webbrowser：简易Web浏览器控制器
119. cgi：CGI支持
120. cgitb：CGI脚本反向追踪管理器
121. wsgiref：WSGI工具与引用实现
122. urllib：URL处理模块
123. urllib.request：打开URL连接的扩展库
124. urllib.response：urllib模块的响应类
125. urllib.parse：将URL解析成组件
126. urllib.error：urllib.request引发的异常类
127. urllib.robotparser：robots.txt的解析器
128. http：HTTP模块
129. http.client：HTTP协议客户端
130. ftplib：FTP协议客户端
131. poplib：POP协议客户端
132. imaplib：IMAP4协议客户端
133. nntplib：NNTP协议客户端
134. smtplib：SMTP协议客户端
135. smtpd：SMTP服务器
136. telnetlib：Telnet客户端
137. uuid：RFC4122的UUID对象
138. socketserver：网络服务器框架
139. http.server：HTTP服务器
140. http.cookies：HTTPCookie状态管理器
141. http.cookiejar：HTTP客户端的Cookie处理
142. xmlrpc：XML-RPC服务器和客户端模块
143. xmlrpc.client：XML-RPC客户端访问
144. xmlrpc.server：XML-RPC服务器基础
145. ipaddress：IPv4/IPv6控制库

<h3>多媒体</h3>

146. audioop：处理原始音频数据
147. aifc：读写AIFF和AIFC文件
148. sunau：读写Sun AU文件
149. wave：读写WAV文件
150. chunk：读取IFF大文件
151. colorsys：颜色系统间转化
152. imghdr：指定图像类型
153. sndhdr：指定声音文件类型
154. ossaudiodev：访问兼容OSS的音频设备

<h3>国际化</h3>

155. gettext：多语言的国际化服务
156. locale：国际化服务

<h3>编程框架</h3>

157. turtle：Turtle图形库
158. cmd：基于行的命令解释器支持
159. shlex：简单词典分析

<h3>Tk图形用户接口</h3>

160. tkinter：Tcl/Tk接口
161. tkinter.ttk：Tk主题控件
162. tkinter.tix：Tk扩展控件
163. tkinter.scrolledtext：滚轴文本控件

<h3>开发工具</h3>

164. pydoc：文档生成器和在线帮助系统
165. doctest：交互式Python示例
166. unittest：单元测试框架
167. unittest.mock：模拟对象库
168. test：Python回归测试包
169. test.support：Python测试工具套件
170. venv：虚拟环境搭建

<h3>调试</h3>

171. bdb：调试框架
172. faulthandler：Python反向追踪库
173. pdb：Python调试器
174. timeit：小段代码执行时间测算
175. trace：Python执行状态追踪

<h3>运行时</h3>

176. sys：系统相关的参数与函数
177. sysconfig：访问Python配置信息
178. builtins：内置对象
179. __main__：顶层脚本环境
180. warnings：警告控制
181. contextlib：with状态的上下文工具
182. abc：虚基类
183. atexit：出口处理器
184. traceback：打印或读取一条栈的反向追踪
185. __future__：未来状态定义
186. gc：垃圾回收接口
187. inspect：检查存活的对象
188. site：址相关的配置钩子（hook）
189. fpectl：浮点数异常控制
190. distutils：生成和安装Python模块

<h3>解释器</h3>

191. code：基类解释器
192. codeop：编译Python代码

<h3>导入模块</h3>

193. imp：访问import模块的内部
194. zipimport：从ZIP归档中导入模块
195. pkgutil：包扩展工具
196. modulefinder：通过脚本查找模块
197. runpy：定位并执行Python模块
198. importlib：import的一种实施

<h3>Python语言</h3>

199. parser：访问Python解析树
200. ast：抽象句法树
201. symtable：访问编译器符号表
202. symbol：Python解析树中的常量
203. token：Python解析树中的常量
204. keyword：Python关键字测试
205. tokenize：Python源文件分词
206. tabnany：模糊缩进检测
207. pyclbr：Python类浏览支持
208. py_compile：编译Python源文件
209. compileall：按字节编译Python库
210. dis：Python字节码的反汇编器
211. pickletools：序列化开发工具

<h3>其它</h3>

212. formatter：通用格式化输出

<h3>Windows相关</h3>

213. msilib：读写Windows Installer文件
214. msvcrt：MS VC++ Runtime的有用程序
215. winreg：Windows注册表访问
216. winsound：Windows声音播放接口

<h3>Unix相关</h3>

217. posix：最常用的POSIX调用
218. pwd：密码数据库
219. spwd：影子密码数据库
220. grp：组数据库
221. crypt：Unix密码验证
222. termios：POSIX风格的tty控制
223. tty：终端控制函数
224. pty：伪终端工具
225. fcntl：系统调用fcntl()和ioctl()
226. pipes：shell管道接口
227. resource：资源可用信息
228. nis：Sun的NIS的接口
229. syslog：Unix syslog程序库

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
> 注意：py -0 查询可用的python版本

### 安装pip

`python.exe pip-19.0.3-py2.py3-none-any.whl/pip install pip-9.0.1-py2.py3-none-any.whl.`

如下pip的安装文件**pip-19.0.3-py2.py3-none-any.whl**
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190307111654976-933861491.jpg)

<font color=red>python的pypi网站上的包大多提供whl格式的安装方式</font>
例如：pip install PyMySQL-0.6.6-py2.py3-none-any.whl

## Python编程中对于头部注释的要求

[Python编程中对于头部注释的要求 - mr_cookies的博客 - CSDN博客](https://blog.csdn.net/mr_cookies/article/details/72880826)

![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190311110454548-588329238.png)

### python头部注释 vim添加头部注释

[python头部注释 vim添加头部注释 - juandx - 博客园](https://www.cnblogs.com/juandx/p/5626710.html)
![](https://img2018.cnblogs.com/blog/1588269/201903/1588269-20190311112047291-1192694000.png)