# Chrome 开发者工具中文文档

> [使用 Console(控制台) - Chrome 开发者工具中文文档 - html中文网](https://www.html.cn/doc/chrome-devtools/console/)  
> [chrome console API 参考 - jinxu的博客 - CSDN博客](https://blog.csdn.net/u013028034/article/details/78824143)  
> [google chrome web](https://developers.google.com/web/tools/chrome-devtools/)

## 使用Chrome console提取页面数据

![](images/JS-console命令使用详解（Chrome控制台日志技巧）+2019-11-19-16-55-55.png)

![](images/JS-console命令使用详解（Chrome控制台日志技巧）+2019-11-19-16-56-07.png)

```js
var ip = document.getElementsByClassName('link-tit');
var str = "";
for(var i=0;i<ip.length;i++){
	var node = ip[i];
	str+="\n"+node.getElementsByTagName("a")[0].href;   //该句可做如下改动
}
console.log(str);
```

```js
str+="\n"+node.firstElementChild;   //提取网址
str+="\n"+node.getElementsByTagName("a")[0];   //同上
str+="\n"+node.innerText;   //提取标题：使用Chrome console提取页面数据 - 随风浪子的博客 - 博客园
str+="\n"+node.innerHTML;   //提取a标签：<a target="_blank" href="https://www.cnblogs.com/liun1994/p/7265828.html">提取标题和网址：使用Chrome console提取页面数据 - 随风浪子的博客 - 博客园</a>
str+="\n"+node.innerText+":"+node.firstElementChild;
```

```js
var tag = document.getElementsByClassName("link-tit")[0];
var re = new RegExp();
var str = tag.innerHTML; 
var re = /\d+\.\d+\.\d+\.\d+/g;
var arr = str.match(re);
console.log(arr);
```

![](images/JS-console命令使用详解（Chrome控制台日志技巧）+2019-11-19-16-56-17.png)

[Chrome 控制台console的用法 - qq_30599553的博客 - CSDN博客](https://blog.csdn.net/qq_30599553/article/details/86300610)

[chrome开发者工具（2）之console的使用 - 指尖的星光的博客 - CSDN博客](https://blog.csdn.net/qq_39111325/article/details/96182803)

![](images/JS-console命令使用详解（Chrome控制台日志技巧）+132239377465002.gif)

## 通过chrome console 快速获取网页连接

[通过chrome console 快速获取网页连接 - weixin_34289454的博客 - CSDN博客](https://blog.csdn.net/weixin_34289454/article/details/86018705)

```js
var ip = document.getElementsByClassName("jDesc");
var str = "";
for(var i=0;i<ip.length;i++)
{
    var node = ip[i];
    str+="\n"+node.getElementsByTagName("a")[0].href;
}
console.log(str);
```

[Git三大特色之Stage(暂存区)](https://blog.csdn.net/qq_32452623/article/details/78417609)
