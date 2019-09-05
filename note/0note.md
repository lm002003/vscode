# 开始Jupyter Notebooks

## 安装Anaconda

![](https://img2018.cnblogs.com/blog/1588269/201909/1588269-20190905151756359-1510046375.png)

* 因为不能有空格，所以没有选`C:\Program Files`

## 认识Jupyter Notebooks

**使用 Jupyter Notebooks 的神奇功能**

> Jupyter Notebooks 的开发者已经在其中内置了一些预定义的神奇功能，能让你的生活更轻松，让你的工作更具交互性。你可以运行下面的命令来查看功能列表（注：% 符号通常不需要，因为自动补齐功能通常是开启的）：

<font size="4" color=red><b>%lsmagic</b></font>

你会看到列出了很多选择，你甚至可能能认出其中一些！%clear、%autosave、%debug 和 %mkdir 等功能你以前肯定见过。现在，神奇的命令可以以两种方式运行：
![](https://img2018.cnblogs.com/blog/1588269/201909/1588269-20190905165217395-219239350.png)

* 逐行方式
* 逐单元方式

顾名思义，逐行方式是执行单行的命令，而逐单元方式则是执行不止一行的命令，而是执行整个单元中的整个代码块。

在逐行方式中，所有给定的命令必须以 % 字符开头；而在逐单元方式中，所有的命令必须以 %% 开头。我们看看下列示例以便更好地理解：

逐行方式：

<font size="4" color=red><b>%time a = range(10)</b></font>

逐单元方式：

<font size="4" color=red><b>%%timeit a = range (10)min(a)</b></font>

我建议你运行这些代码，亲自看看它们的不同之处！

**不只限于 Python——在 Jupyter Notebooks 中使用 R、Julia 和 JavaScript**

神奇之处可不止这点。你甚至能在你的笔记本中使用其它语言，比如 R、Julia、JavaScript 等。我个人很喜欢 R 中的 ggplot2 软件包，所以使用它来进行探索性的数据分析具有很大很大的优势。

要在 Jupyter 中启用 R，你需要 IRKernel。这是针对 R 的专用 kernel，你可以在 GitHub 上获取。这需要 8 个步骤，已经有详细的解释了，另外还有截图指导，参阅：

https://discuss.analyticsvidhya.com/t/how-to-run-r-on-jupyter-ipython-notebooks/5512

如果你是一位 Julia 用户，你也能在 Jupyter Notebooks 中使用 Julia！你可以查看这篇为 Julia 用户学习数据科学而编写的全面介绍文章，其中有一个章节就是关于如何在 Jupyter 环境中使用 Julia：

https://www.analyticsvidhya.com/blog/2017/10/comprehensive-tutorial-learn-data-science-julia-from-scratch/

如果你更偏爱 JavaScript，那么我推荐使用 IJavascript kernel。这个 GitHub 库包含了在不同操作系统上安装这个 kernel 的各个步骤：

https://github.com/n-riesco/ijavascript。

注意，在使用它之前，你必需要先安装好 Node.js 和 npm。

**Jupyter Notebooks 中的交互式仪表盘——何乐不为？**

在你考虑添加小部件之前，你需要导入 widgets 软件包：

<font size="4" color=red><b>from ipywidgets import widgets</b></font>
小部件的基本类型有典型的文本输入小部件、基于输入的小部件和按钮小部件。下面的例子来自 Dominodatalab，给出了交互式小部件的一些外观：
![](https://img2018.cnblogs.com/blog/1588269/201909/1588269-20190905180129382-1320299156.jpg)
关于小部件的完整指南，请参阅：

https://blog.dominodatalab.com/interactive-dashboards-in-jupyter/

**键盘快捷键——节省时间且更有生产力！**

快捷方式是 Jupyter Notebooks 最大的优势之一。当你想运行任意代码块时，只需要按 Ctrl+Enter 就行了。Jupyter Notebooks 提供了很多键盘快捷键，可以帮助我们节省很多时间。

下面是我们手动选择的一些对你的上手会有莫大帮助的快捷方式。我强烈建议你在阅读本文时逐一尝试一下。未来你会离不开它们的！

Jupyter Notebooks 提供了两种不同的键盘输入模式——命令和编辑。命令模式是将键盘和笔记本层面的命令绑定起来，并且由带有蓝色左边距的灰色单元边框表示。编辑模式让你可以在活动单元中输入文本（或代码），用绿色单元边框表示。

你可以分别使用 Esc 和 Enter 在命令模式和编辑模式之间跳跃。现在就试试看吧！

进入命令模式之后（此时你没有活跃单元），你可以尝试以下快捷键：

* A 会在活跃单元之上插入一个新的单元，B 会在活跃单元之下插入一个新单元。
* 连续按两次 D，可以删除一个单元。
* 撤销被删除的单元，按 Z。
* Y 会将当前活跃的单元变成一个代码单元。
* 按住 Shift +上或下箭头可选择多个单元。在多选模式时，按住 Shift + M 可合并你的选择。
* 按 F 会弹出「查找和替换」菜单。

处于编辑模式时（在命令模式时按 Enter 会进入编辑模式），你会发现下列快捷键很有用：

* Ctrl + Home 到达单元起始位置。
* Ctrl + S 保存进度。
* 如之前提到的，Ctrl + Enter 会运行你的整个单元块。
* Alt + Enter 不止会运行你的单元块，还会在下面添加一个新单元。
* Ctrl + Shift + F 打开命令面板。

要查看键盘快捷键完整列表，可在命令模式按「H」或进入「Help > Keyboard Shortcuts」。你一定要经常看这些快捷键，因为常会添加新的。

有用的 Jupyter Notebooks 扩展

扩展/附加组件是一种非常有生产力的方式，能帮你提升在 Jupyter Notebooks 上的生产力。我认为安装和使用扩展的最好工具之一是 Nbextensions。在你的机器上安装它只需简单两步（也有其它安装方法，但我认为这个最方便）：

第一步：从 pip 安装它：
<font size="4" color=red><b>pip install jupyter_contrib_nbextensions</b></font>

第二步：安装相关的 JavaScript 和 CSS 文件：
<font size="4" color=red><b>jupyter contrib nbextension install –user</b></font>

完成这个工作之后，你会在你的 Jupyter Notebook 主页顶部看见一个 Nbextensions 选项卡。点击一下，你就能看到很多可在你的项目中使用的扩展。
![](https://img2018.cnblogs.com/blog/1588269/201909/1588269-20190905180148374-717309854.jpg)
要启用某个扩展，只需勾选它即可。下面我给出了 4 个我觉得最有用的扩展：

* Code prettify：它能重新调整代码块内容的格式并进行美化。
* Printview：这个扩展会添加一个工具栏按钮，可为当前笔记本调用 jupyter nbconvert，并可以选择是否在新的浏览器标签页显示转换后的文件。
* Scratchpad：这会添加一个暂存单元，让你可以无需修改笔记本就能运行你的代码。当你想实验你的代码但不想改动你的实时笔记本时，这会是一个非常方便的扩展。
* Table of Contents (2)：这个很棒的扩展可以收集你的笔记本中的所有标题，并将它们显示在一个浮动窗口中。

这只是少量几个扩展。我强烈建议你查看完整扩展列表并实验它们的功能。

**保存和共享你的笔记本**

这是 Jupyter Notebooks 最重要且最出色的功能之一。当我必须写一篇博客文章时，我的代码和评论都会在一个 Jupyter 文件中，我需要首先将它们转换成另一个格式。记住这些笔记本是 json 格式的，这在进行共享时不会很有帮助。我总不能在电子邮件和博客上贴上不同单元块，对不对？

进入「Files」菜单，你会看到「Download As」选项：

这是 Jupyter Notebooks 最重要且最出色的功能之一。当我必须写一篇博客文章时，我的代码和评论都会在一个 Jupyter 文件中，我需要首先将它们转换成另一个格式。记住这些笔记本是 json 格式的，这在进行共享时不会很有帮助。我总不能在电子邮件和博客上贴上不同单元块，对不对？

进入「Files」菜单，你会看到「Download As」选项：

![](https://img2018.cnblogs.com/blog/1588269/201909/1588269-20190905180315363-1848124364.jpg)

你可以用 7 种可选格式保存你的笔记本。其中最常用的是 .ipynb 文件和 .html 文件。使用 .ipynb 文件可让其他人将你的代码复制到他们的机器上，使用 .html 文件能以网页格式打开（当你需要保存嵌入在笔记本中的图片时会很方便）。

你也可以使用 nbconvert 选项手动将你的笔记本转换成 HTML 或 PDF 等格式。

你也可以使用 jupyterhub，地址：

https://github.com/jupyterhub/jupyterhub。

其能让你将笔记本托管在它的服务器上并进行多用户共享。很多顶级研究项目都在使用这种方式进行协作。

**JupyterLab——Jupyter Notebooks 的进化**

JupyterLab 是今年二月份推出的，被认为是 Jupyter Notebooks 的进一步发展。其支持更加灵活和更加强大的项目操作方式，但具有和 Jupyter Notebooks 一样的组件。JupyterLab 环境与 Jupyter Notebooks 环境完全一样，但具有生产力更高的体验。

![](https://img2018.cnblogs.com/blog/1588269/201909/1588269-20190905180408409-276829340.jpg)

JupyterLab 让你能在一个窗口中排布你的笔记本、终端、文本文件和输出结果工作区！你只需拖放你需要的单元即可。你也可以编辑 Markdown、CSV 和 JSON 等常用文件格式并实时预览修改所造成的影响。

如果你想在你的机器上试用 JupyterLab，可查看安装说明：

http://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html。

JupyterLab 的开发者的长期目标是最终替代 Jupyter Notebooks。但目前来看这还需要一些时间。

**最佳实践**

尽管独自工作可能很有趣，但大多数时候你都是团队的一员。在这种情况下，遵循指导原则和最佳实践是很重要的，能确保你的代码和 Jupyter Notebooks 都有适当的注释，以便与你的团队成员保持一致。这里我列出了一些最佳实践指标，你在 Jupyter Notebooks 上工作时一定要遵守：

* 对任何程序员而言都是最重要的事情之一——总是确保你为你的代码添加了适当的注释！
* 确保你的代码有所需的文档。
* 考虑一个命名方案并贯彻始终。这能让其他人更容易遵循。
* 不管你的代码需要什么库，都在你的笔记本起始处导入它们。（并在旁边添加注释说明你载入它们的目的）
* 确保你的代码有适当的行距。你不要将你的循环和函数放在同一行——否则如果后面要引用它们，会让人抓狂的！
* 有时候你的文件中有非常大量的代码。看看能不能将你认为不重要的某些代码隐藏起来，之后再引用。这能让你的笔记本看起来整洁清晰，这是非常可贵的。
* 查看这个在 matplotlib 上的笔记本，看看可以如何简练地进行呈现：

http://nbviewer.jupyter.org/github/jrjohansson/scientific-python-lectures/blob/master/Lecture-4-Matplotlib.ipynb

另一个额外技巧！在你想创建一个演示文稿时，你可能首先想到的工具是 PowerPoint 和 Google Slides。其实你的 Jupyter Notebooks 也能创建幻灯片！还记得我说过 Jupyter Notebooks 很灵活吗？我可没有夸大其辞。

要将你的笔记本转换成幻灯片，进入「View→Cell Toolbar」，然后点击「Slideshow」。现在，每个代码块右边都显示了一个「Slide Type」下拉选项。你能看到下列的 5 个选项：
![](https://img2018.cnblogs.com/blog/1588269/201909/1588269-20190905180653388-173096879.jpg)

**结语**

注意，这篇文章远没有完全覆盖 Jupyter Notebooks 的功能。还有很多东西要在你使用得更多之后才会用到。功能虽多，但关键在于实践出真知。

这个 GitHub 库包含了一些有趣迷人的 Jupyter Notebooks：

https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks

这份指南只是你的数据科学旅程的起点，我很高兴能与你一起前行！