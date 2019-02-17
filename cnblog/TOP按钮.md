## 博客园页面添加返回顶部TOP按钮

进入网页管理->设置
1. 在"页面定制CSS代码"中添加如下css样式，当然你可以改为自己喜欢的样式

<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190217124004268-194312892.jpg" width="50%" />
</center>

此处可以将背景色`background-color`改为:

`background:url(http://images.cnblogs.com/cnblogs_com/gitwow/1393973/o_o_o_toTop.png) no-repeat -70px top;`


2. 在"页脚Html代码"中添加如下代码，可以将文字改为图片

<center>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190217123954027-2088378717.jpg" width="60%" />
</center>

* 此处`<a href="#top">`改为:`#_labelTop`,我的博客园好像没有`#top`
* <a id = "1">#1</a>文字TOP必须留着,才能跳转到锚点`#_labelTop`,而且也不知道怎么将文字改为图片??

点击保存按钮
这样就在自己的页面添加了回到顶部的Top按钮

## 利用jQuery制作带动画版本的TOP跳转

* 首先需要在顶部添加如下html元素：
    <center>
    <img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190217125156128-576084718.jpg" width="80%" />
    </center>
    其中a标签指向锚点top，可以在顶部放置一个`<a name="top"></a>`的锚点，这样在浏览器不支持js时也可以实现返回顶部的效果了。([#1](#1))

* css样式

    要想让返回顶部的图片显示在右侧，还需要一些css样式，如下(`页面定制CSS代码`)：

<div class="cnblogs_Highlighter">
<pre class="brush:css;gutter:true;">
#back-to-top {
    background:transparent url(http://images.cnblogs.com/cnblogs_com/gitwow/1393973/o_o_o_toTop.png) no-repeat -70px top;
    width:57px;
    height:57px;
    overflow:hidden;
    position:fixed;
    right:0px;
    bottom:0px;
    cursor:pointer;
}
</pre>
</div>

* 页脚Html代码

<div class="cnblogs_Highlighter">
<pre class="brush:html;gutter:true;">
<span style="font-size:14px"><p id="back-to-top"><a href="#_labelTop"><span></span></a></p></span>
<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
<script>
$(function(){
        //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
        $(function () {
            $(window).scroll(function(){
                if ($(window).scrollTop()>100){
                    $("#back-to-top").fadeIn(1500);
                }
                else
                {
                    $("#back-to-top").fadeOut(1500);
                }
            });

            //当点击跳转链接后，回到页面顶部位置
            $("#back-to-top").click(function(){
                //$('body,html').animate({scrollTop:0},1000);
        if ($('html').scrollTop()) {
                $('html').animate({ scrollTop: 0 }, 1000);
                return false;
            }
            $('body').animate({ scrollTop: 0 }, 1000);
                 return false;            
           });       
     });    
});
</script>
</pre>
</div>

## JavaScript自动生成博文目录导航

> 参考:[JavaScript自动生成博文目录导航 - 孤傲苍狼 - 博客园  ](https://www.cnblogs.com/xdp-gacl/p/3718879.html)

### 1.JavaScript实现方式:

> 实现原理：首先通过调用DOM方法，判断出浏览器滚动条（scroll bar）的当前位置，记为currentPos；然后计算出目标标题（target title）的距页面顶端的距离，记为finalPos；最后通过一定的算法实现平滑过度。

### 2.源代码

　　下面是这个JS工具的相关源代码：

    2.1 js代码,页首Html代码

<div class="cnblogs_Highlighter">
<pre class="brush:javascript;gutter:true;">
<script type="text/javascript">
/*
    功能：生成博客目录的JS工具
    测试：IE8，火狐，google测试通过
    孤傲苍狼
    2014-5-11
*/
var BlogDirectory = {
    /*
        获取元素位置，距浏览器左边界的距离（left）和距浏览器上边界的距离（top）
    */
    getElementPosition:function (ele) {        
        var topPosition = 0;
        var leftPosition = 0;
        while (ele){              
            topPosition += ele.offsetTop;
            leftPosition += ele.offsetLeft;        
            ele = ele.offsetParent;     
        }  
        return {top:topPosition, left:leftPosition}; 
    },

    /*
    获取滚动条当前位置
    */
    getScrollBarPosition:function () {
        var scrollBarPosition = document.body.scrollTop || document.documentElement.scrollTop;
        return  scrollBarPosition;
    },
    
    /*
    移动滚动条，finalPos 为目的位置，internal 为移动速度
    */
    moveScrollBar:function(finalpos, interval) {

        //若不支持此方法，则退出
        if(!window.scrollTo) {
            return false;
        }

        //窗体滚动时，禁用鼠标滚轮
        window.onmousewheel = function(){
            return false;
        };
          
        //清除计时
        if (document.body.movement) { 
            clearTimeout(document.body.movement); 
        } 

        var currentpos =BlogDirectory.getScrollBarPosition();//获取滚动条当前位置

        var dist = 0; 
        if (currentpos == finalpos) {//到达预定位置，则解禁鼠标滚轮，并退出
            window.onmousewheel = function(){
                return true;
            }
            return true; 
        } 
        if (currentpos < finalpos) {//未到达，则计算下一步所要移动的距离
            dist = Math.ceil((finalpos - currentpos)/10); 
            currentpos += dist; 
        } 
        if (currentpos > finalpos) { 
            dist = Math.ceil((currentpos - finalpos)/10); 
            currentpos -= dist; 
        }
        
        var scrTop = BlogDirectory.getScrollBarPosition();//获取滚动条当前位置
        window.scrollTo(0, currentpos);//移动窗口
        if(BlogDirectory.getScrollBarPosition() == scrTop)//若已到底部，则解禁鼠标滚轮，并退出
        {
            window.onmousewheel = function(){
                return true;
            }
            return true;
        }
        
        //进行下一步移动
        var repeat = "BlogDirectory.moveScrollBar(" + finalpos + "," + interval + ")"; 
        document.body.movement = setTimeout(repeat, interval); 
    },
    
    htmlDecode:function (text){
        var temp = document.createElement("div");
        temp.innerHTML = text;
        var output = temp.innerText || temp.textContent;
        temp = null;
        return output;
    },

    /*
    创建博客目录，
    id表示包含博文正文的 div 容器的 id，
    mt 和 st 分别表示主标题和次级标题的标签名称（如 H2、H3，大写或小写都可以！），
    interval 表示移动的速度
    */
    createBlogDirectory:function (id, mt, st, interval){
         //获取博文正文div容器
        var elem = document.getElementById(id);
        if(!elem) return false;
        //获取div中所有元素结点
        var nodes = elem.getElementsByTagName("*");
        //创建博客目录的div容器
        var divSideBar = document.createElement('DIV');
        divSideBar.className = 'sideBar';
        divSideBar.setAttribute('id', 'sideBar');
        var divSideBarTab = document.createElement('DIV');
        divSideBarTab.setAttribute('id', 'sideBarTab');
        divSideBar.appendChild(divSideBarTab);
        var h2 = document.createElement('H2');
        divSideBarTab.appendChild(h2);
        var txt = document.createTextNode('目录导航');
        h2.appendChild(txt);
        var divSideBarContents = document.createElement('DIV');
        divSideBarContents.style.display = 'none';
        divSideBarContents.setAttribute('id', 'sideBarContents');
        divSideBar.appendChild(divSideBarContents);
        //创建自定义列表
        var dlist = document.createElement("dl");
        divSideBarContents.appendChild(dlist);
        var num = 0;//统计找到的mt和st
        mt = mt.toUpperCase();//转化成大写
        st = st.toUpperCase();//转化成大写
        //遍历所有元素结点
        for(var i=0; i<nodes.length; i++)
        {
            if(nodes[i].nodeName == mt|| nodes[i].nodeName == st)    
            {
                //获取标题文本
                var nodetext = nodes[i].innerHTML.replace(/<\/?[^>]+>/g,"");//innerHTML里面的内容可能有HTML标签，所以用正则表达式去除HTML的标签
                nodetext = nodetext.replace(/&nbsp;/ig, "");//替换掉所有的&nbsp;
                nodetext = BlogDirectory.htmlDecode(nodetext);
                //插入锚        
                nodes[i].setAttribute("id", "blogTitle" + num);
                var item;
                switch(nodes[i].nodeName)
                {
                    case mt:    //若为主标题 
                        item = document.createElement("dt");
                        break;
                    case st:    //若为子标题
                        item = document.createElement("dd");
                        break;
                }
                
                //创建锚链接
                var itemtext = document.createTextNode(nodetext);
                item.appendChild(itemtext);
                item.setAttribute("name", num);
                item.onclick = function(){        //添加鼠标点击触发函数
                    var pos = BlogDirectory.getElementPosition(document.getElementById("blogTitle" + this.getAttribute("name")));
                    if(!BlogDirectory.moveScrollBar(pos.top, interval)) return false;
                };            
                
                //将自定义表项加入自定义列表中
                dlist.appendChild(item);
                num++;
            }
        }
        
        if(num == 0) return false; 
        /*鼠标进入时的事件处理*/
        divSideBarTab.onmouseenter = function(){
            divSideBarContents.style.display = 'block';
        }
        /*鼠标离开时的事件处理*/
        divSideBar.onmouseleave = function() {
            divSideBarContents.style.display = 'none';
        }

        document.body.appendChild(divSideBar);
    }
    
};

window.onload=function(){
    /*页面加载完成之后生成博客目录*/
    BlogDirectory.createBlogDirectory("cnblogs_post_body","h2","h3",20);
}
</script>
</pre>
</div>

修改如下:([#2](#2))

<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190217222234626-1336110023.jpg" width="100%" />
</left>

    2.2. CSS样式代码<u>**页面定制CSS代码**</u>

<div class="cnblogs_Highlighter">
<pre class="brush:JavaScript;gutter:true;">
/*生成博客目录的CSS*/
#sideBar{
    font-size:12px;
    font-family:Arial, Helvetica, sans-serif;
    text-align:left;
    position:fixed;/*将div的位置固定到距离top:50px，right:0px的位置，这样div就会处在最右边的位置，距离顶部50px*/
    top:50px;
    right:0px;
    width: auto;
    height: auto; 
}
#sideBarTab{
    float:left;
    width:30px; 
    border:1px solid #e5e5e5;
    border-right:none;
    text-align:center;
    background:#ffffff;
}

#sideBarContents{
    float:left;
    overflow:auto; 
    overflow-x:hidden;!important;
    width:200px;
    min-height:108px;
    max-height:460px;
    border:1px solid #e5e5e5;
    border-right:none; 
    background:#ffffff;
}
#sideBarContents dl{
    margin:0;
    padding:0;
}

#sideBarContents dt{
    margin-top:5px;
    margin-left:5px;
}

#sideBarContents dd, dt {
    cursor: pointer;
}

#sideBarContents dd:hover, dt:hover {
    color:#A7995A;
}
</pre>
</div>

<a id="2">#2</a>`由于该css与原有的css部分同名冲突,故修改如下:`

> sideBar`--->`uprightsideBar  
> sideBarTab`--->`uprightsideBarTab  
> sideBarContents`--->`uprightsideBarContents

## 为博客园添加目录的配置总结

<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190217223830958-1394994599.png" width="100%" />
</left>

## 锚点

一般的Markdown编辑器如果我们想实现页内跳转可以这样做：
定义锚点：`<span id="des">destination</span>`
定义跳转：`[jump] (#des)`

> 现在以下方法也不能使用了。所以简书的小伙伴们，放弃吧

但这套做法在简书的Markdown上就行不通了，锚点定义部分会原样输出。
简书上利用a标签也能实现跳转，但是会打开新的页面，这就难以接受了。
在简书上实现页面内的锚点跳转方法：
定义跳转：`<a href="#label">点击跳转</a>`
中间是长长的一段，此处省略一万字.....
定义锚点：`<a id="label">跳到这里来</a>`

### 【锚点简介】

锚点是网页制作中超级链接的一种，又叫命名锚记。命名锚记像一个迅速定位器一样是一种页面内的超级链接，运用相当普遍。
英文名：anchor
使用命名锚记可以在文档中设置标记，这些标记通常放在文档的特定主题处或顶部。然后可以创建到这些命名锚记的链接，这些链接可快速将访问者带到指定位置。
创建到命名锚记的链接的过程分为两步。首先，创建命名锚记，然后创建到该命名锚记的链接。

### 【锚点用法】

* 建立一个跳转的连接：
`[说明文字](#jump)`
* 标记要跳转到的位置
`<span id = "jump">跳转到这里：</span>`

## dl,dt,dd标签的使用

> [dl,dt,dd标签的使用 - 都市烟火 - 博客园](https://www.cnblogs.com/duhuo/p/5656511.html)

定义和用法:

`<dl>标签定义了定义列表（definition list）。`

`<dl>标签用于结合<dt>（定义列表中的项目）和<dd>（描述列表中的项目）。`

> dl:定义列表应该是definition list的缩写
> dt:定义标题,所以应该是definition title的缩写
> dd:描述用的,所以应该是definition description的缩写

<left>
<img src="https://img2018.cnblogs.com/blog/1588269/201902/1588269-20190217213258018-865036842.jpg" width="80%" />
</left>