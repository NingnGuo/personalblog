<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的收藏</title>
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">
<meta name="keywords" content="宁静致远个人博客">
<meta name="description" content="宁静致远个人博客">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/comm.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">

<!--[if lt IE 9]>
<script src="/skin/jxhx/js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<!--top begin-->
<header id="header">
 <div class="navbox">
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <div class="logo"><a href="http://www.ning.com">宁静致远个人博客</a></div>
    <nav>
      <ul id="starlist">
        <li><a href="index.jsp">首页</a></li>
        <li><a href="list.jsp">个人博客日记</a></li>
        
         <li class="menu"><a href="AllType">博客类别</a>
           <!-- 遍历输出博客所有类别的名称 -->
                <ul class="sub">
                 <c:forEach var="mytype" items="${tt1 }">
                  <li>
                  <a href="getPP?tid=${mytype.id }">${mytype.name}</a>
                       <!--遍历输出每一种类型所对应的文章  -->
                        
                  </li>
                    </c:forEach> 
                </ul>
            
            
          <span></span>
         </li>
         
         
        <li><a href="liuyan.jsp">留言</a></li>
        <li><a href="about.jsp">关于博主</a></li>
        <li>
           <a href="about.jsp">${ulist[0].username }</a>
           <ul class="sub">
             <li><a href="#">我的关注</a></li>
             <li><a href="#">我的收藏</a></li>
             <li><a href="#">我的博客</a></li>
             <li><a href="#">账号设置</a></li>
             <li><a href="#">帮助</a></li>
             <li><a href="#">退出</a></li>
           </ul>
        </li>
      </ul>
    </nav>
    <div class="searchico"></div>
  </div>
</header>
<div class="searchbox">
   <!-- 搜索功能   按照标题的关键字搜索 -->
  <div class="search">
    <form action="getByKeyword" method="post">
      <input name="keyword" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
      <input name="show" value="title" type="hidden">
      <input name="tempid" value="1" type="hidden">
      <input name="tbname" value="news" type="hidden">
      <input name="Submit" class="input_submit" value="搜索" type="submit">
    </form>
  </div>
  <div class="searchclose"></div>
</div>
<!--top end-->

    
    <article> 
  <!--lbox begin-->
  <div class="lbox">
    <div class="whitebg lanmu"> <img src="img/c.jpg">
      <h1>${ttype.name }</h1>
      <p>欢迎访问宁静致远个人博客</p>
    </div>
    <div class="whitebg bloglist">
      <h2 class="htitle">最新博文</h2>
      <ul>

       <c:forEach var="mypass" items="${collectlist }">
            
       
        <li>
           <h3 class="blogtitle">
           <a href="PgetById?id=${mypass.id}" target="_blank">${mypass.title }</a></h3>
           <span class="blogpic imgscale">
             <i>
               <a href="#" target="_blank">${ttype.name }</a>
             </i>
            <a href="http://jxhx2.guoqq.com/web/html/14.html" title="${mypass.title }">
            <img src="img/blog1.jpg" alt="${mypass.title }">
           </a>
           </span>
          <p class="blogtext">${mypass.summary }</p>
          <p class="bloginfo">
          <i class="avatar"><script src="js/thea6.js.下载"></script>
          <a href="http://jxhx2.guoqq.com/about/" target="_blank">
          <img src="images/avatar.jpg" border="0" width="30" height="30" alt=""></a></i>
          <span>${mypass.cdate }</span><span>【<a href="http://jxhx2.guoqq.com/web/html/" target="_blank">${ttype.name }</a>】</span></p>
          <a href="PgetById?id=${mypass.id }" class="viewmore">阅读更多</a> <!-- 调用通过id获取文章详情方法 -->
        </li>
     </c:forEach>
        

      </ul>
      <!--pagelist-->
      <div class="pagelist"></div>
      <!--pagelist end--> 
    </div>
    <!--bloglist end--> 
  </div>



  
  <div class="rbox">
    <div class="whitebg paihang">
      <h2 class="htitle">点击排行</h2>
            <section class="topnews imgscale"><a href="http://jxhx2.guoqq.com/web/html/14.html"><img src="img/d.jpg"><span>十条设计原则教你学会如何设计网页布局!</span></a></section>
      <ul>
        <li><i></i><a href="http://jxhx2.guoqq.com/web/html/16.html" title="使用CSS3制作文字、图片倒影" target="_blank">使用CSS3制作文字、图片倒影</a></li>
        <li><i></i><a href="http://jxhx2.guoqq.com/web/html/17.html" title="【分享】css3侧边栏导航不同方向划出效果" target="_blank">【分享】css3侧边栏导航不同方向划出效果</a></li>
        <li><i></i><a href="http://jxhx2.guoqq.com/web/html/13.html" title="别让这些闹心的套路，毁了你的网页设计" target="_blank">别让这些闹心的套路，毁了你的网页设计</a></li>
        <li><i></i><a href="http://jxhx2.guoqq.com/web/html/15.html" title="三步实现滚动条触动css动画效果" target="_blank">三步实现滚动条触动css动画效果</a></li>
      </ul>
    </div>
    <div class="whitebg tuijian">
      <h2 class="htitle">本栏推荐</h2>
          <section class="topnews imgscale"><a href="http://jxhx2.guoqq.com/web/html/14.html"><img src="img/b.jpg"><span>十条设计原则教你学会如何设计网页布局!</span></a></section>
      <ul>

        <li><a href="http://jxhx2.guoqq.com/web/html/13.html" title="别让这些闹心的套路，毁了你的网页设计" target="_blank"><i><img src="img/c.jpg"></i>
          <p>别让这些闹心的套路，毁了你的网页设计</p>
          </a></li>


      </ul>
    </div>
    <div class="ad whitebg imgscale">
      <ul>
        <a href="http://www.guoqq.com/download/div/917.html" target="_blank"><img src="img/logo.jpg"></a>      </ul>
    </div>
    <div class="whitebg cloud">
      <h2 class="htitle">标签云</h2>
      <ul>
       <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E7%BD%91%E7%AB%99&amp;tempid=8" target="_blank">网站</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E6%B4%BB%E5%8A%A8&amp;tempid=8" target="_blank">活动</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E5%8D%9A%E5%AE%A2&amp;tempid=8" target="_blank">博客</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E9%98%BF%E9%87%8C%E4%BA%91&amp;tempid=8" target="_blank">阿里云</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E7%A9%BA%E9%97%B4&amp;tempid=8" target="_blank">空间</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E5%85%89%E5%B0%96%E5%AD%90&amp;tempid=8" target="_blank">光尖子</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E6%AF%94%E8%B5%9B&amp;tempid=8" target="_blank">比赛</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E7%BD%91%E7%AB%99%E5%88%B6%E4%BD%9C&amp;tempid=8" target="_blank">网站制作</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E4%B8%AA%E4%BA%BA%E5%8D%9A%E5%AE%A2&amp;tempid=8" target="_blank">个人博客</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E8%AE%BE%E8%AE%A1&amp;tempid=8" target="_blank">设计</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E8%A7%86%E9%A2%91%E6%95%99%E7%A8%8B&amp;tempid=8" target="_blank">视频教程</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E6%95%99%E7%A8%8B&amp;tempid=8" target="_blank">教程</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E7%99%BE%E5%BA%A6&amp;tempid=8" target="_blank">百度</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E9%87%91%E7%89%9B%E4%BA%91%E6%9C%8D&amp;tempid=8" target="_blank">金牛云服</a> <a href="http://jxhx2.guoqq.com/e/tags/?tagname=%E8%8A%82%E6%97%A5&amp;tempid=8" target="_blank">节日</a>      </ul>
    </div>
 
 
 
 
 
   <div class="whitebg wenzi">
      <h2 class="htitle">猜你喜欢</h2>
      <ul>
                        <li><a target="_blank" href="http://jxhx2.guoqq.com/web/html/14.html">十条设计原则教你学会如何设计网页布局!</a></li>
                        <li><a target="_blank" href="http://jxhx2.guoqq.com/web/html/13.html">别让这些闹心的套路，毁了你的网页设计</a></li>
                        <li><a target="_blank" href="http://jxhx2.guoqq.com/web/html/17.html">【分享】css3侧边栏导航不同方向划出效果</a></li>
                        <li><a target="_blank" href="http://jxhx2.guoqq.com/web/html/16.html">使用CSS3制作文字、图片倒影</a></li>
                        <li><a target="_blank" href="http://jxhx2.guoqq.com/web/html/15.html">三步实现滚动条触动css动画效果</a></li>
                   </ul>
    </div>
    <div class="ad whitebg imgscale">
      <ul>
        <a href="http://www.guoqq.com/download/div/917.html" target="_blank"><img src="img/bg3.jpg"></a>      </ul>
    </div>
   <div class="whitebg tongji">
      <h2 class="htitle">站点信息</h2>
      <ul>
        <li><b>建站时间</b>：2019-04-01</li>
        <li><b>文章统计</b>：${pass.size() }条</li>
        <li><b>统计数据</b>：<a href="#">百度统计</a></li>
      </ul>
    </div>
  </div>
</article>
<footer>
   <p align="center">Copyright &copy; 2019.Allrights by qdc college.guoningning</p>
 </footer>
</body>
</html>