<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="blog" />
<meta name="description" content="blog" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">


<link href="css/base.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/comm.js"></script>



<title>首页-宁静致远个人博客</title>
<!-- 给网页标题前添加一个小图标 -->
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">



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
           <a href="about.jsp" >${ulist[0].username }</a>
           <ul class="sub">
             <li><a href="#">我的关注</a></li>
             <li><a href="getUserCollect?uid=${ulist[0].id }">我的收藏</a></li>
             <li><a href="#">我的博客</a></li>
             <li><a href="userCenter.jsp">账号设置</a></li>
             <li><a href="#">登录记录</a></li>
             <li><a href="login.jsp" onClick="if(!confirm('是否确认退出？'))return false;">退出</a></li>
           </ul>
        </li> 
        
        
        <%-- <li>
           <a href="about.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${ulist[0].username }</a>
           <ul class="sub dropdown-menu dropdown-menu-left">
             <li><a href="#">我的关注</a></li>
             <li><a href="#">我的收藏</a></li>
             <li><a href="#">我的博客</a></li>
             <li><a href="#" data-toggle="modal" data-target="#seeUserInfo">账号设置</a></li>
             <li><a href="#" data-toggle="modal" data-target="#seeUserLoginlog">登录记录</a></li>
             <li><a href="login.jsp" onClick="if(!confirm('是否确认退出？'))return false;">退出</a></li>
           </ul>
        </li> --%>
        
        
        
        
        
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
    <!--banbox begin-->
    <div class="banbox">
      <div class="banner">
        <div id="banner" class="fader">
          <li class="slide" ><a href="/" target="_blank"><img src="images/1.jpg"></a></li>
          <li class="slide" ><a href="/" target="_blank"><img src="images/2.jpg"></a></li>
          <li class="slide" ><a href="/" target="_blank"><img src="images/3.jpg"></a></li>
          <li class="slide" ><a href="/" target="_blank"><img src="images/4.jpg"></a></li>
          <div class="fader_controls">
            <div class="page prev" data-target="prev"></div>
            <div class="page next" data-target="next"></div>
            <ul class="pager_list">
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!--banbox end--> 
    <!--headline begin-->
    <div class="headline">
      <ul>
        <li><a href="PgetById?id=${8}" title="Bootstrap"><img src="images/h1.jpg" alt="Bootstrap"><span>Bootstrap</span></a></li>
        <li><a href="PgetById?id=${6}" title="Spring的核心机制"><img src="images/h2.jpg" alt="Spring的核心机制"><span>Spring的核心机制</span></a></li>
      </ul>
    </div>
    <!--headline end-->
    <div class="clearblank"></div>
    <div class="tab_box whitebg">
      <div class="tab_buttons">
        <ul>
          <li class="newscurrent">个人博客</li>
          <li>工作日记</li>
          <li>心路历程</li>
          <li>我的博客</li>
          <li>前端技术</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <div class="newspic">
            <ul>
              <li><a href="PgetById?id=${4}"><img src="images/2.jpg"><span>黑盒测试</span></a></li>
              <li><a href="PgetById?id=${9}"><img src="images/4.jpg"><span>Java Web</span></a></li>
            </ul>
          </div>
          
          
           <ul class="newslist">
          	 	<li><a href="PgetById?id=${1}">Java集合对象</a><p>在使用Java的时候，我们都会遇到使用集合（Collection）的时候，但是Java API提供了多种集合的实现，我在使用和面试的时候频频遇到这样的“抉择” 。 :）（主要还是面试的时候）久而久之，也就有了一点点的心得体会，写出来以供大家讨论 。
总的说来，Java API中所用的集合类，都是实现了Collection接口，他的一个类继承结构如下：Collection<--List<--Vector<--StackCollect在使用Java的时候，我们都会遇到使用集合（Collection）</p></li>
          	 	<li><a href="PgetById?id=${2}">HTML基础知识入门</a></li>
          	 	<li><a href="PgetById?id=${3}">MySQL数据库的优化</a></li>
          	 	<li><a href="PgetById?id=${4}">黑盒测试</a></li>
          	    <li><a href="PgetById?id=${5}">二叉树的时间复杂度</a></li>
          	 	<li><a href="PgetById?id=${6}">Spring的核心机制</a></li>
          	 	<li><a href="PgetById?id=${7}">React简介</a></li>
          	 	<li><a href="PgetById?id=${8}">Bootstrap</a></li>
          	 	<li><a href="PgetById?id=${9}">Java Web</a></li>
          	    <li><a href="PgetById?id=${10}">前端</a></li>
          	 </ul> 
        </div>
      </div>
    </div>
    <!--tab_box end-->
    
        <!-- 精彩专题模块 -->
    <!-- <div class="zhuanti whitebg">
      <h2 class="htitle"><span class="hnav">
      </span>精彩专题</h2>
      <ul>
        <li> 
        <i class="ztpic">
           <a href="/" target="_blank"><img src="images/1.jpg"></a>
        </i> 
         <b>个人博客模板《今夕何夕》-响应式个人...</b>
         <span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span>
         <a href="" target="_blank" class="readmore">文章阅读</a> 
        </li>
        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/2.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>
        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/3.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>
        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/4.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>
        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/h2.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>
        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/h1.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>
      </ul>
    </div> -->
   <!--  <div class="ad whitebg"> <img src="images/longad.jpg"> </div> -->
   
   
   
   <!--这里输出所有的博客  -->
   
    <div class="whitebg bloglist">
      <h2 class="htitle">最新博文</h2>
      <ul>
                 <!--多图模式 置顶设计-->
        <li>
          <h3 class="blogtitle">
             <a href="/" target="_blank"><b>【顶】</b>别让这些闹心的套路，毁了你的网页设计!</a>
          </h3>
          <span class="bplist"><a href="/"> 
           <img src="images/b02.jpg" alt=""></a> 
           <a href="/"><img src="images/b03.jpg" alt=""></a> 
           <a href="/"><img src="images/b04.jpg" alt=""> </a>
           <a href="/"><img src="images/b05.jpg" alt=""> </a>
          </span>
          <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
          <p class="bloginfo">
           <i class="avatar">
           <img src="images/avatar.jpg">
           </i><span>宁静致远<!--作者 --></span><span>2019-04-01<!-- 时间 --></span><span>【<a href="/"><!--类别  -->Java</a>】</span>
           </p>
        </li>
        <!--单图-->
        <!--循环输出所有博客  -->
        <c:forEach var="bb" items="${ppList }">
        <li>
          <h3 class="blogtitle">
             <a href="/" target="_blank">【${bb.type.name }】${bb.title }</a></h3>
          <span class="blogpic imgscale"><i>
          <a href="/">${bb.type.name }</a></i><!-- 通过类型的名字获取所有类型的方法 -->
          <a href="/" title="">
          <img src="images/b01.jpg" alt=""></a><!-- 显示的博客最左边的图片 -->
          </span>
          <p class="blogtext">${bb.summary }</p>
          <p class="bloginfo">
          <i class="avatar"><img src="images/avatar.jpg"></i>
          <span>${bb.author }</span><span>${bb.cdate }</span><span>【<a href="/">${bb.type.name }</a>】</span></p>
          <a href="PgetById?id=${bb.id}" class="viewmore"><!-- 通过id获取文章详情 -->阅读更多</a> 
          
         </li>
        </c:forEach>
        
         
        <!--纯文字-->
      <!--   <li>
          <h3 class="blogtitle"><a href="/" target="_blank">别让这些闹心的套路，毁了你的网页设计!</a></h3>
          <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
          <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>宁静致远</span><span>2018-10-28</span><span>【<a href="/">原创模板</a>】</span></p>
          <a href="/" class="viewmore">阅读更多</a> 
         </li> -->
        
      </ul>
    </div>
    <!--bloglist end--> 
  </div>
  <div class="rbox">
    <div class="card">
      <h2>我的名片</h2>
      <p>网名：Distance | 柠檬脾气</p>
      <p>职业：学生</p>
      <p>现居：山东省-青岛市</p>
      <p>Email：hard123@456.com</p>
      <ul class="linkmore">
        <li><a href="http://www.guoqq.com" target="_blank" class="iconfont icon-zhuye" title="网站地址"></a></li>
        <li><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=HHh9cn95b3F1cHVye1xtbTJ-c3E" target="_blank" class="iconfont icon-youxiang" title="我的邮箱"></a></li>
        <li><a href="http://wpa.qq.com/msgrd?v=3&uin=476847113&site=qq&menu=yes" target="_blank" class="iconfont icon---" title="QQ联系我"></a></li>
        <li id="weixin"><a href="#" target="_blank" class="iconfont icon-weixin" title="关注我的微信"></a><i><img src="images/wx.png"></i></li>
      </ul>
    </div>
    <div class="whitebg notice">
      <h2 class="htitle">网站公告</h2>
      <ul>
        <li><a href="/">十条设计原则教你学会如何设计网页布局!</a></li>
        <li><a href="/">用js+css3来写一个手机栏目导航</a></li>
        <li><a href="/">6条网页设计配色原则,让你秒变配色高手</a></li>
        <li><a href="/">三步实现滚动条触动css动画效果</a></li>
      </ul>
    </div>
    <div class="whitebg paihang">
      <h2 class="htitle">点击排行</h2>
      
      <!-- 排行按照点击量的多少由高到低进行排序 输出 -->
      <section class="topnews imgscale">
      <a href="/">
          <img src="images/h1.jpg">
          <span>6条网页设计配色原则,让你秒变配色高手</span>
      </a>
      </section>
      
      
      
      <ul>
       <c:forEach var="ppp" items="${ppplist}" begin="1" end="8" step="1">
        <li><i></i> <a href="PgetById?id=${ppp.id}">${ppp.title }</a></li>
       </c:forEach>
      </ul>
      
      
      
      
    </div>
    <div class="whitebg tuijian">
      <h2 class="htitle">站长推荐</h2>
      <section class="topnews imgscale">
        <a href="PgetById?id=${2}"></a>
          <img src="images/h2.jpg">
          <span>HTML基础知识入门</span>
        </a>
      </section>
      <ul>
        <li><a href="PgetById?id=${10}"><i><img src="images/text01.jpg"></i>
          <p>前端</p>
          </a></li>
        <li><a href="PgetById?id=${8}"><i><img src="images/text02.jpg"></i>
          <p>Bootstrap</p>
          </a></li>
        <li><a href="PgetById?id=${5}"><i><img src="images/text03.jpg"></i>
          <p>二叉树的时间复杂度</p>
          </a></li>
        <li><a href="PgetById?id=${4}"><i><img src="images/text04.jpg"></i>
          <p>黑盒测试</p>
          </a></li>
        <li><a href="PgetById?id=${7}"><i><img src="images/text05.jpg"></i>
          <p>React简介</p>
          </a></li>
        <li><a href="PgetById?id=${6}"><i><img src="images/text06.jpg"></i>
          <p>Spring的核心机制</p>
          </a></li>
        <li><a href="PgetById?id=${1}"><i><img src="images/text07.jpg"></i>
          <p>Java集合对象</p>
          </a></li>
      </ul>
    </div>
   <!--  <div class="ad whitebg imgscale">
      <ul>
        <a href="/"><img src="images/ad.jpg"></a>
      </ul>
    </div> -->
    <div class="whitebg wenzi">
      <h2 class="htitle">猜你喜欢</h2>
      <ul>
                <li><a href="PgetById?id=${1}">Java集合对象</a></li>
          	 	<li><a href="PgetById?id=${2}">HTML基础知识入门</a></li>
          	 	<li><a href="PgetById?id=${3}">MySQL数据库的优化</a></li>
          	 	<li><a href="PgetById?id=${4}">黑盒测试</a></li>
          	    <li><a href="PgetById?id=${5}">二叉树的时间复杂度</a></li>
          	 	<li><a href="PgetById?id=${6}">Spring的核心机制</a></li>
          	 	<li><a href="PgetById?id=${7}">React简介</a></li>
          	 	<li><a href="PgetById?id=${8}">Bootstrap</a></li>
      </ul>
    </div>
    
    <div class="whitebg tongji">
      <h2 class="htitle">站点信息</h2>
      <ul>
        <li><b>建站时间</b>：2019-04-01</li>
        <li><b>文章统计</b>：${ppList.size() }条</li>
        <li><b>统计数据</b>：<a href="#">百度统计</a></li>
      </ul>
    </div>
    <div class="links whitebg">
      <h2 class="htitle"><span class="sqlink"><a href="/">申请链接</a></span>友情链接</h2>
      <ul>
        <li><a href="http://localhost:8080/Blog/getPassage" target="_blank">宁静致远个人博客</a></li>
      </ul>
    </div>
  </div>
</article>



<footer>
   <p align="center">Copyright &copy; 2019.All rights by qdc college.guoningning</p>
</footer>


</body>
<script type="text/javascript">
$(function(){
	$("#myModal").modal('show');
})
</script>






</html>