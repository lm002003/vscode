
# VScode编写第一个Python程序HelloWorld步骤

<h2>一、软件下载与安装</h2>

VScode下载地址：https://code.visualstudio.com/
VScode的github项目地址（本文用不到）：https://github.com/microsoft/vscode
Python下载地址：https://www.python.org/downloads/
笔者用的是win版的VScode1.0和32位Python2.7，安装Python时注意将Python添加到系统环境变量

<h2>二、VScode项目结构简介</h2>

VScode使用的是文件夹命名的项目，也就是说你想写程序的话，需要新建一个文件夹作为你的项目，这个文件夹下放你的源文件，如果需要运行，还需要在这个文件夹下新建.vscode文件夹，在.vscode文件夹下配置这个项目如何运行。

下面是一个典型的项目结构

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114204385-1403533984.png)

这次配置坑比较多，VScode建议将地区改为`en-US`，不然的话，有些命令你必须打中文，不能打英文，打中文显示英文结果，打英文没有结果。
 当然，本文没改地区

<h2>三、安装Python插件</h2>

安装Python插件能实现语法提示的一些功能，建议还是安装一下。

打开VScode，查看-->命令面板(`Ctrl+Shit+P`)，输入`ext install`（中文输入：扩展，然后选择扩展：安装扩展），在出现的搜索结果中选择找到Python，点右边的那一朵小云就可以安装了。

<h2>四、新建项目和编辑源代码</h2>

新建项目就是新建一个文件夹，笔者先在D盘新建一个PythonProject01的文件夹（这一步在系统里面建，不是VScode里），点击VScode里的资源管理器按钮，点击蓝色的打开文件夹按钮

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114337185-1791338274.png)

在D盘找到刚才新建的文件夹，点击选择文件夹

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114413117-169331542.png)

点击新建文件的按钮,文件名填hello.py

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114437313-2073664306.png)

在右侧的编辑窗口输入以下代码，保存

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114639067-1714128057.png)

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114657292-724812075.png)

<h2>五、编辑task.json任务文件并运行该程序</h2>

查看-->命令面板(`Ctrl+Shit+P`)，输入Tasks: `Configure Task Runner`（中文输入：任务，然后选择任务：配置任务运行程序），选择Other

此时VScode会自动生成.vscode文件夹并生成一个默认的`task.json`

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114815913-788308983.png)

将task.json内容改为如下内容并保存

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114857595-155277619.png)

新版本

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214114932483-307027685.png)

运行方法如下：

查看-->命令面板(`Ctrl+Shit+P`)，输入Tasks: Run Build Task（中文输入：任务，然后选择 任务：运行生成任务(Ctrl+Shit+B)）

结果如下：

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214115007430-1658172754.png)

附：将语言更改为en-US
Ctrl+Shift+P，输入语言(Language)，选择 配置语言(Configure Language)，会自动出现location.json文件
添加"locale":"en-US"，如下所示，保存

![](https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190214115045002-2126612719.png)

重启VScode即可。
 如果想改回中文，就改为"locale":"zh-CN"或者删掉这个location.json文件。