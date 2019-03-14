## cmd下查看当前登陆用户
终端下,自然可以用quser这个命令了.但是在其它如专业版2k下如何查看在线用户呢?
C:\Documents and Settings\Administrator>net config workstation

涨停家数:"880006$C" NODRAW COLOR0000FF;
跌停家数:"880006$O" NODRAW COLOR00FF00;
{停板家数-880006}
涨停数:"880006$C";
跌停数:"880006$O";
最大涨停数:"880006$C",NODRAW;

### 插入数学公式的方法

行内公式：将公式插入到本行内，符号：$公式内容$，
`$xyz$`
$xyz$
`$\{[z- ( 1 + \frac{2}{3}x)y]\div 4\}$`
$\{[z- ( 1 + \frac{2}{3}x)y]\div 4\}$
独行公式：将公式插入到新的一行内，并且居中，符号：$$公式内容$$，如下：
`$$xyz$$`
$$xyz$$
`$$\sum_{i=1}^n a_i=0$$`
$$\sum_{i=1}^n a_i=0$$

### 普通公式

`$x=100*y+z-10/33+100%3$`
$x=100*y+z-10/33+100%3$

### 上标、下标与组合

如果上下标的内容多于一个字符，可以使用{}来将这些内容括起来当做一个整体。与此同时，上下标是可以嵌套的。
上标符号，符号：^，如：
`$x^4$`
$x^4$

下标符号，符号：_，如：
`$x_1$`
$x_1$
组合符号，符号：{}，如：
`${16}_{8}O{2+}_{2}$`
${16}_{8}O{2+}_{2}$
`$x = a_{1}^n + a_{2}^n + a_{3}^n$`
$x = a_{1}^n + a_{2}^n + a_{3}^n$
如果希望左右两边都能有上下标，可以使用\sideset语法

$ \sideset{^1_2}{^3_4}\bigotimes $

$ J_\alpha(x) = \sum_{m=0}^\infty \cfrac{(-1)^m}{m! \Gamma (m + \alpha + 1)} {\left({ \frac{x}{2} }\right)}^{2m + \alpha} \text {，行内公式示例} $

$\begin{pmatrix}
a_{11} & a_{12} & a_{13}\\
a_{21} & a_{22} & a_{23}\\
a_{31} & a_{32} & a_{33}
\end{pmatrix}$=5

$/*!)-*&~n/{"isRoot":true,"isTextMode":true,"isTabularCellsSelected":false,"isPureText":false,"insideInlineMath":false,"lines":[{"blocks":[{"text":"\\diagram","type":"composite","elements":{},"connections":[],"intersections":{"id":"di15185342130893797","items":[],"style":{}},"shapes":[{"id":"dp048941842347560494","type":"axis2d","data":{"p1":{"x":41,"y":16},"cp":{"x":61,"y":177},"p2":{"x":280,"y":199}},"style":{"thickness":2,"strokeColor":[73,135,206,1]},"settings":{"separator":true,"separatorDistance":31}}],"settings":{"grid":true,"diagramHeight":235}}]}],"rootEditorId":"321241621323","inlineMathDisplayStyle":null}$

### 括号

()，[]和|都表示它们自己，但是{}因为有特殊作用因此当需要显示大括号时一般使用\lbrace和\rbrace来表示。
`$$f(x, y) = 100 * \lbrace[(x + y) * 3] - 5\rbrace$$`
$f(x, y) = 100 * \lbrace[(x + y) * 3] - 5\rbrace$

### 省略号

数学公式中常见的省略号有两种，\ldots表示与文本底线对齐的省略号，\cdots表示与文本中线对齐的省略号。
`$f(x_1,x_2,\ldots,x_n) = x_1^2 + x_2^2 + \cdots + x_n^2$`
$f(x_1,x_2,\ldots,x_n) = x_1^2 + x_2^2 + \cdots + x_n^2$

### 分数

分数使用\frac{分母}{分子}这样的语法，不过推荐使用\cfrac来代替\frac，显示公式不会太挤。
`$\frac{1}{3} 与 \cfrac{1}{3}$`
$\frac{1}{3} 与 \cfrac{1}{3}$

### 开方

开方使用\sqrt[次数]{被开方数}这样的语法

`$\sqrt[3]{X}$`
$\sqrt[3]{X}$
`$\sqrt{5 - x}$`
$\sqrt{5 - x}$

### 间隔空间

通常MathJax通过内部策略自己管理公式内部的空间，因此`a︹︹`b与a`︹︹︹︹︹b`（︹表示空格）都会显示为ab。可以通过在ab间加入\空格或\;增加些许间隙，\quad 与 \qquad 会增加更大的间隙。
`$a\;b$ 或 $a\quad b$ 或 $a\qquad b$`
$a\;b$ 或 $a\quad b$ 或 $a\qquad b$

### 占位符

两个quad空格，符号：\qquad，如：$x \qquad y$
quad空格，符号：\quad，如：$x \quad y$
大空格，符号\，如：$x \  y$
中空格，符号\:，如：$x : y$
小空格，符号\,，如：$x , y$
没有空格，符号``，如：$xy$
紧贴，符号\!，如：$x ! y$

### 矢量表示

矢量用\vec标记实现，语法格式如下：
\vec{矢量值} 
`$\vec{a} \cdot \vec{b}=0$`
$\vec{a} \cdot \vec{b}=0$

### 连线符号

$\overline{a+b+c+d}$

$\underline{a+b+c+d}$

$\overbrace{a+\underbrace{b+c}_{1.0}+d}^{2.0}$

$\bf{ABCDE}$

### 汉字、字体与格式

汉字形式，符号：\mbox{}，如：$V_{\mbox{初始}}$
字体控制，符号：\displaystyle，如：$\displaystyle \frac{x+y}{y+z}$
下划线符号，符号：\underline，如：$\underline{x+y}$
标签，符号\tag{数字}，如：$\tag{11}$
上大括号，符号：\overbrace{算式}，如：$\overbrace{a+b+c+d}^{2.0}$
下大括号，符号：\underbrace{算式}，如：$a+\underbrace{b+c}_{1.0}+d$
上位符号，符号：\stacrel{上位符号}{基位符号}，如：$\vec{x}\stackrel{\mathrm{def}}{=}{x_1,\dots,x_n}$

### 定界符与组合

括号，符号：（）\big(\big) \Big(\Big) \bigg(\bigg) \Bigg(\Bigg)，如：$（）\big(\big) \Big(\Big) \bigg(\bigg) \Bigg(\Bigg)$
中括号，符号：[]，如：$[x+y]$
大括号，符号：\{ \}，如：$\{x+y\}$
自适应括号，符号：\left \right，如：$\left(x\right)$，$\left(x{yz}\right)$
组合公式，符号：{上位公式 \choose 下位公式}，如：${n+1 \choose k}={n \choose k}+{n \choose k-1}$
组合公式，符号：{上位公式 \atop 下位公式}，如：$\sum_{k_0,k_1,\ldots>0 \atop k_0+k_1+\cdots=n}A_{k_0}A_{k_1}\cdots$

### 四则运算

加法运算，符号：+，如：$x+y=z$
减法运算，符号：-，如：$x-y=z$
加减运算，符号：\pm，如：$x \pm y=z$
减甲运算，符号：\mp，如：$x \mp y=z$
乘法运算，符号：\times，如：$x \times y=z$
点乘运算，符号：\cdot，如：$x \cdot y=z$
星乘运算，符号：\ast，如：$x \ast y=z$
除法运算，符号：\div，如：$x \div y=z$
斜法运算，符号：/，如：$x/y=z$
分式表示，符号：\frac{分子}{分母}，如：$\frac{x+y}{y+z}$
分式表示，符号：{分子} \voer {分母}，如：${x+y} \over {y+z}$
绝对值表示，符号：||，如：$|x+y|$

高级运算

平均数运算，符号：\overline{算式}，如：$\overline{xyz}$
开二次方运算，符号：\sqrt，如：$\sqrt x$
开方运算，符号：\sqrt[开方数]{被开方数}，如：$\sqrt[3]{x+y}$
对数运算，符号：\log，如：$\log(x)$
极限运算，符号：\lim，如：$\lim^{x \to \infty}_{y \to 0}{\frac{x}{y}}$
极限运算，符号：\displaystyle \lim，如：$\displaystyle \lim^{x \to \infty}_{y \to 0}{\frac{x}{y}}$
求和运算，符号：\sum，如：$\sum^{x \to \infty}_{y \to 0}{\frac{x}{y}}$
求和运算，符号：\displaystyle \sum，如：$\displaystyle \sum^{x \to \infty}_{y \to 0}{\frac{x}{y}}$
积分运算，符号：\int，如：$\int^{\infty}_{0}{xdx}$
积分运算，符号：\displaystyle \int，如：$\displaystyle \int^{\infty}_{0}{xdx}$
微分运算，符号：\partial，如：$\frac{\partial x}{\partial y}$
矩阵表示，符号：\begin{matrix} \end{matrix}，如：$\left[ \begin{matrix} 1 &2 &\cdots &4\5 &6 &\cdots &8\\vdots &\vdots &\ddots &\vdots\13 &14 &\cdots &16\end{matrix} \right]$

逻辑运算

等于运算，符号：=，如：$x+y=z$
大于运算，符号：>，如：$x+y>z$
小于运算，符号：<，如：$x+y<z$
大于等于运算，符号：\geq，如：$x+y \geq z$
小于等于运算，符号：\leq，如：$x+y \leq z$
不等于运算，符号：\neq，如：$x+y \neq z$
不大于等于运算，符号：\ngeq，如：$x+y \ngeq z$
不大于等于运算，符号：\not\geq，如：$x+y \not\geq z$
不小于等于运算，符号：\nleq，如：$x+y \nleq z$
不小于等于运算，符号：\not\leq，如：$x+y \not\leq z$
约等于运算，符号：\approx，如：$x+y \approx z$
恒定等于运算，符号：\equiv，如：$x+y \equiv z$

集合运算

属于运算，符号：\in，如：$x \in y$
不属于运算，符号：\notin，如：$x \notin y$
不属于运算，符号：\not\in，如：$x \not\in y$
子集运算，符号：\subset，如：$x \subset y$
子集运算，符号：\supset，如：$x \supset y$
真子集运算，符号：\subseteq，如：$x \subseteq y$
非真子集运算，符号：\subsetneq，如：$x \subsetneq y$
真子集运算，符号：\supseteq，如：$x \supseteq y$
非真子集运算，符号：\supsetneq，如：$x \supsetneq y$
非子集运算，符号：\not\subset，如：$x \not\subset y$
非子集运算，符号：\not\supset，如：$x \not\supset y$
并集运算，符号：\cup，如：$x \cup y$
交集运算，符号：\cap，如：$x \cap y$
差集运算，符号：\setminus，如：$x \setminus y$
同或运算，符号：\bigodot，如：$x \bigodot y$
同与运算，符号：\bigotimes，如：$x \bigotimes y$
实数集合，符号：\mathbb{R}，如：\mathbb{R}

自然数集合，符号：\mathbb{Z}，如：\mathbb{Z}

空集，符号：\emptyset，如：$\emptyset$

数学符号

无穷，符号：\infty，如：$\infty$
虚数，符号：\imath，如：$\imath$
虚数，符号：\jmath，如：$\jmath$
数学符号，符号\hat{a}，如：$\hat{a}$
数学符号，符号\check{a}，如：$\check{a}$
数学符号，符号\breve{a}，如：$\breve{a}$
数学符号，符号\tilde{a}，如：$\tilde{a}$
数学符号，符号\bar{a}，如：$\bar{a}$
矢量符号，符号\vec{a}，如：$\vec{a}$
数学符号，符号\acute{a}，如：$\acute{a}$
数学符号，符号\grave{a}，如：$\grave{a}$
数学符号，符号\mathring{a}，如：$\mathring{a}$
一阶导数符号，符号\dot{a}，如：$\dot{a}$
二阶导数符号，符号\ddot{a}，如：$\ddot{a}$
上箭头，符号：\uparrow，如：$\uparrow$
上箭头，符号：\Uparrow，如：$\Uparrow$
下箭头，符号：\downarrow，如：$\downarrow$
下箭头，符号：\Downarrow，如：$\Downarrow$
左箭头，符号：\leftarrow，如：$\leftarrow$
左箭头，符号：\Leftarrow，如：$\Leftarrow$
右箭头，符号：\rightarrow，如：$\rightarrow$
右箭头，符号：\Rightarrow，如：$\Rightarrow$
底端对齐的省略号，符号：\ldots，如：$1,2,\ldots,n$
中线对齐的省略号，符号：\cdots，如：$x_1^2 + x_2^2 + \cdots + x_n^2$
竖直对齐的省略号，符号：\vdots，如：$\vdots$
斜对齐的省略号，符号：\ddots，如：$\ddots$

作者：DanielGavin
链接：https://www.jianshu.com/p/e74eb43960a1
来源：简书
简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。