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

 <script src="./js/jquery.min.js"></script>
 <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
 <script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>



    <link href="./css/header.css" rel="stylesheet">
    <link href="./css/a.css" rel="stylesheet">
    <link href="./css/content.css" rel="stylesheet">
    <link href="./css/breadbar.css" rel="stylesheet">
  <link rel="stylesheet"   href="./css/album.css" />

<!-- <link href="css/m.css" rel="stylesheet">
<script src="js/jquery-2.1.4.min.js"></script>
<link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="js/comm.js"></script> -->
<!--  <link rel="stylesheet" href="css/common1.css"/>  -->



<title>首页-宁静致远个人博客</title>
<!-- 给网页标题前添加一个小图标 -->
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">
<style type="text/css">
.comment-right {
    margin-top: -80px;
}
#mya{
    color: white;
    text-decoration: none;
}

#cishu{
  color:blue;
}
</style>

</head>
<body>
<!--top begin-->
<header id="header">
 <div class="navbox">
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <div class="logo"><a href="http://www.ning.com" id="mya">宁静致远个人博客</a></div>
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
 <!-- 文章展示处 -->
<article> 
  <!--lbox begin-->
  <div class="lbox">
    <div class="content_box whitebg">
      <h2 class="htitle">
     
       <span class="con_nav">您现在的位置是：<a href="/">首页</a>&nbsp;>&nbsp;<a href="/blog/">博客详情</a></span>博客详情</h2>
      <h1 class="con_tilte">${detailPsg.title}</h1>
      <p class="bloginfo"><i class="avatar"><img src="images/text05.jpg"></i><span></span><span>${detailPsg.cdate}</span><span>【${detailPsg.type.name}】</span><span>
        <span id="cishu">${detailPsg.readTimes}</span>人已围观</span></p>
      <p class="con_info"><b>简介</b>${detailPsg.summary }</p>
      <div class="con_text">
    
        <!--这里输出文章的内容，可输出带有图片的文章  -->
    
      ${detailPsg.content} <br /><br />
      
      
      <!--  -->
<!-- <img alt="" src="img/a.jpg" /><br /><br />每一套模板，我都是利用了一些碎片化的时间慢慢做的，前后大概持续了一周多的时间，因为每个人的逻辑思维方式不一样，我想要更简洁明了的代码，所以每一套模板我都是自己一个个用键盘敲出来的。<br /><br />
<img alt="" src="img/b.jpg" /><br /><br />对于个人博客模板，我一直坚持这样一个原则，那就是不仅漂亮，而且代码要少！因为要做出精美的个人博客模板是需要大量的时间投入的，没有一个人可以轻而易举的搞定一套个人博客模板，尤其是针对性（或专业性）极强的模板，一份好的模板，要求其代码在精炼的同时还要漂亮，后期内容上了，还要利于网站收录。<br /><br />个人博客模板除了布局，颜色选择，图片修饰都是需要花时间和精力的，其实，制作博客模板最花时间的不是提炼代码，而是页面的排版设计，这里包含了多个方面，分别是排版、配色、图片，在处理这么多问题的同时还要求突出重点，确保每一页只有一个中心论点，这对于本身功底差的人来说是一件困难的事情！<br /><br />
<img alt="" src="img/c.jpg" /><br /><br />很多人熬几个通宵，也还是做不出满意的作品，而我，对每一套个人博客模板，我都会经过反复的修改，测试兼容，寻找更简洁的写法。不是tu快，而是要更精美，实用！这也是为什么我设计的模板比较受欢迎的原因。好吧，我承认自己是个话唠，一开口就停不下来，但我更想说的是，只要你用的开心，就是我最大的收获！2018，杨青博客，原创个人博客模板，专业为你而来。<br /><br />关注杨青博客，更多精彩分享，敬请期待！<br />&nbsp;<p></p> -->
        <p>Tags：<a href="#" target="_blank">${detailPsg.type.name }</a></p>
        <b>转载：</b>
         <div class="bdsharebuttonbox share" data-tag="share_1">    
            <a href="#" class="bds_more" data-cmd="more"></a>
            <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
            <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
            <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
            <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
            <p>感谢您对宁静致远个人博客系统的认可，非常欢迎各位朋友分享到QQ或者朋友圈，但转载请说明文章出处“来源宁静致远个人博客”。 </p>
         </div>
         <input id="zannum" type="hidden" value="${detailPsg.praise }">
         
        <!-- 点赞 -->
       <p>
        <span class="diggit thumbs-button fa fa-thumbs-up">
        <a href="javascript:void(0);" id="zan"><span id="dianzan">很赞哦！</span>  </a>
         	（<span id="znum"></span>）
        </p> 
       <!--  <div id="zan">
        <p>
        <span class="diggit thumbs-button fa fa-thumbs-up">
        <a href="#" id="dianzan"> 很赞哦！ </a>(<b id="zannum">
        <script type="text/javascript" src="#"></script></b>)
        </span>
        </p> 
        </div> -->
        
       <!--  <div id="zan">
         <span id="dianzan" class="glyphicon glyphicon-thumbs-up">赞</span>
        </div>
                        （<span id="znum"></span>）
 -->
     
     <!-- 收藏 -->
     <div id="shoucang">
               收藏  <a id="sc" href="javascript:void(0);" class="glyphicon glyphicon-heart-empty" aria-hidden="true">  </a>
      </div>

    </div>
       
     
     
     <!-- 文章分页 -->
     <%-- <div class="nextinfo">
     <c:if test="${title2!=null}">
      <p>上一篇：<a href='PgetById?id=${detailPsg.id+1 }'>${title2 }</a></p>
      <p>下一篇：<a href='PgetById?id=${detailPsg.id-1 }'>${title1 }</a></p>
      </c:if>
      <c:if test="${title2==null }">
      <p>下一篇：<a href='PgetById?id=${detailPsg.id-1 }'>${title1 }</a></p>
      </c:if>
        </div> --%>
      </div>
    
    <div class="whitebg">
      <h2 class="htitle">相关文章</h2>
      <ul class="otherlink">

<li><a href="/xd/23.html" title="作为一个设计师,如果遭到质疑你是否能恪守自己的原则?">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></li><li><a href="/web/html/14.html" title="十条设计原则教你学会如何设计网页布局!">十条设计原则教你学会如何设计网页布局!</a></li><li><a href="/web/html/13.html" title="别让这些闹心的套路，毁了你的网页设计">别让这些闹心的套路，毁了你的网页设计</a></li><li><a href="/web/gj/9.html" title="Ui Parade免费的UI在线设计工具">Ui Parade免费的UI在线设计工具</a></li>

      </ul>
    </div>
    <div class="whitebg">
      <h2 class="htitle">随机图文</h2>
      <ul class="xiangsi">
        <li><a href="/blog/7.html" target="_blank"><i><img src="images/b02.jpg"></i>
          <p>安静地做一个爱设计的女子</p>
          <span>自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。每当看到自己喜欢的配色图片</span></a></li>
        <li><a href="/blog/4.html" target="_blank"><i><img src="images/4.jpg"></i>
          <p>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</p>
          <span>不管你是学前端的还是后端的，作为一个程序员，做一个自己的博客，那是必然的。咱们的圈子就这么大，想让更多的人了解你，看看你的技术多牛逼，扔一个博客地址就行了</span></a></li>
        <li><a href="/blog/6.html" target="_blank"><i><img src="images/2.jpg"></i>
          <p>电话以外的宁静</p>
          <span>电话很久没有响过了，我的QQ也很久没有在线了，消失了很多天，刚刚结识的朋友因为我身上又起了红疹，每天都发来消息询问我的情况，我做到了这么多天来的沉默，我相信，没有网络，我还是可以继续我自己的生活</span></a></li>
        <li><a href="/blog/3.html" target="_blank"><i><img src="images/2.jpg"></i>
          <p>个人博客，属于我的小世界！</p>
          <span>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</span></a></li>
 
     </ul>
    </div>
  
  
  
     <!-- 文章评论模块 -->
<div class="whitebg gbook">
       <div class="container">
                    <!-- 评论页眉 -->
                <div class="yemei">
                    <div class="textkuang">
                   
                    <span class="zxyy">
                            用户评论（<span id="yhpp">10</span>）
                    </span>
                </div>
                    <hr style="height:1px;border:none;border-top:1px solid #555555;" />
                </div>
                <!-- 评论 -->
                  <div class="commentbox">
                    <textarea cols="60" rows="5" placeholder="来说几句吧......" class="form-control" id="textarea"></textarea>
                    <div class="btn btn-info pull-right" id="comment">评论</div>
                  </div>
                  <div class="comment-list">
                    
                    <div class="comment-info">
                      <!-- <header><img src="./u=3220681365,3634029949&fm=27&gp=0.jpg" width="70px" height="70px" alt="..." class="img-circle"></header>
                      <div class="comment-right">
                        <h3>匿名</h3>
                        <div class="comment-content-header"><span><i class="glyphicon glyphicon-time"></i> 2017-10-17 11:42:53</span></div>
                        <p >mongodb 副本集配置副本集概念：就我的理解就是和主从复制 差不多，就是在主从复制的基础上多加了一个选举的机制。
                        复制集 特点：数据一致性 主是唯一的，没有Mysql 那样的双主结构大多数原则，集群存活节点小于二分之一是集群不可写，
                        只可读从库无法写入数据自动容灾通过下面的一个图来简单的了解下
                         配置过程：一、安装mongodb安装过程略，不懂得可以看前面的教程二、创建存储目录与配置文件创...</p>
                        <div class="comment-content-footer">
                          <div class="row">
                            <div class="col-md-2"><span class="reply-btn">回复</span></div>
                          </div>
                        </div>
                        
                      </div> -->
                    </div>
                   
                    
                    
                  </div>
                </div>
             

             <input type="hidden" value="${detailPsg.id }" id="pid">
             <input type="hidden" value="${ulist[0].id }" id="userid">
          
           
            
    </div>
    
    </div>
    
    
  </div>
  <!--lbox end-->
  <div class="rbox">
    <div class="whitebg paihang">
      <h2 class="htitle">点击排行</h2>
      <section class="topnews imgscale"><a href="/blog/7.html"><img src="images/b02.jpg"><span>安静地做一个爱设计的女子</span></a></section>
      <ul>
        <li><i></i><a href="/blog/4.html" title="个人网站做好了，百度不收录怎么办？来，看看他们怎么做的" target="_blank">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</a></li>
        <li><i></i><a href="/blog/3.html" title="个人博客，属于我的小世界！" target="_blank">个人博客，属于我的小世界！</a></li>
        <li><i></i><a href="/blog/6.html" title="电话以外的宁静" target="_blank">电话以外的宁静</a></li>
      </ul>
    </div>
    <div class="whitebg tuijian">
      <h2 class="htitle">本站推荐</h2>
      <section class="topnews imgscale"><a href="/blog/4.html"><img src="images/4.jpg"><span>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</span></a></section>
      <ul>

        <li><a href="/blog/3.html" title="个人博客，属于我的小世界！" target="_blank"><i><img src="images/2.jpg"></i>
          <p>个人博客，属于我的小世界！</p>
          </a></li>


      </ul>
    </div>
  <!--   <div class="ad whitebg imgscale">
      <ul>
        <a href='http://www.www.guoqq.com.com/download/div/917.html' target=_blank><img src='images/ad.jpg'></a>      </ul>
    </div> -->
    <div class="whitebg cloud">
      <h2 class="htitle">标签云</h2>
      <ul>
     
       <a href="getPP?tid=${1}" target="_blank">Java</a>  
       <a href="getPP?tid=${2}" target="_blank">前端</a> 
       <a href="getPP?tid=${3}" target="_blank">软件工程</a> 
       <a href="getPP?tid=${4}" target="_blank">操作系统</a> 
       <a href="getPP?tid=${5}" target="_blank">数据库</a> 
       <a href="getPP?tid=${6}" target="_blank">数据结构</a> 
       <a href="getPP?tid=${7}" target="_blank">前端技术</a> 
       <a href="getPP?tid=${8}" target="_blank">AngularJS</a> 
       <a href="getPP?tid=${9}" target="_blank">个人博客日记</a> 
     </ul>
    </div>
 
   <div class="whitebg wenzi">
      <h2 class="htitle">猜你喜欢</h2>
                  <ul>
                        <li><a target="_blank"  href="/blog/7.html">安静地做一个爱设计的女子</a></li>
                        <li><a target="_blank"  href="/blog/3.html">个人博客，属于我的小世界！</a></li>
                        <li><a target="_blank"  href="/blog/5.html">遇见一个未知的你</a></li>
                        <li><a target="_blank"  href="/blog/4.html">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</a></li>
                        <li><a target="_blank"  href="/blog/6.html">电话以外的宁静</a></li>
                   </ul>
    </div>
   
   <div class="whitebg tongji">
      <h2 class="htitle">站点信息</h2>
      <ul>
        <li><b>建站时间</b>：2019-04-01</li>
        <li><b>网站程序</b>：帝国CMS7.5</li>
        <li><b>文章统计</b>：${ppList.size() }条</li>
        <li><b>文章评论</b>：490条</li>
        <li><b>统计数据</b>：<a href="/">百度统计</a></li>
      </ul>
    </div>
  </div>
</article>
<footer>
   <p align="center">Copyright &copy; 2019.Allrights by qdc college.guoningning</p>
 </footer>
  
  
  <%-- <%=${detailPsg.title;}%> --%>
  <!-- 分享的功能实现 -->
  <script>
  //var title=${detailPsg.title};
  //var href="";
     /* var url=window.location.pathname; */
     window._bd_share_config = {
	    "common": {
		"bdSnsKey": {},
		//分享的标题
		//"bdText": "js实现第三方平台分享功能",
		
		//分享的摘要
		"bdDesc": "还不赶紧点击进来观看",
		//分享的Url地址
		"bdUrl": window.location.href,
		//下拉浮层中分享按钮的列数
		"bdMini": "2",
		//自定义下拉浮层中的分享按钮类型和排列顺序  
		"bdMiniList": false,
		"bdPic": '',    //分享的图片
		//显示风格和大小
		"bdStyle": "0",
		"bdSize": "32"
	     },
	     "share": {},
	     "image": {        
	         "viewList": ["weixin", "tsina", "qzone", "tqq"],
		 "viewText": "分享到：",
		 "viewSize": "16"
	      },
	     "selectShare": {
		  "bdContainerClass": null,
		  "bdSelectMiniList": ["weixin", "tsina", "qzone", "tqq"]
		}
};
     with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
</script>



</body>

<!-- 点赞 -->
<script type="text/javascript">

/* var uid=1;//用户id
var pid=1;//文章id */
var pid=$("#pid").val(); 
var uid=$("#userid").val(); 


$(function(){
	select();
});
function select(){
$.ajax({
    type:"post",
    async:false,
    cache:false,
    url:"getPraise",
    data:{"uid":uid,"pid":pid},
    dataType:"json",
    success:function(data){
    	if(data!=null){
    		/* $("#zan").html('<span id="qxdianzan" class="glyphicon glyphicon-thumbs-down">取消赞</span>'); */
    		$("#zan").html('<span id="qxdianzan">取消赞！</span>');
    	}
    }
});
$.ajax({
    type:"get",
    async:false,
    cache:false,
    url:"getPraisenum",
    data:{"pid":pid},
    dataType:"json",
    success:function(data){
    	if(data!=null){
    		
    		$("#znum").html(data.length);
    	}
    }
});
$.ajax({
    type:"get",
    async:false,
    cache:false,
    url:"getCollect",
    data:{"pid":pid,"uid":uid},
    dataType:"json",
    success:function(data){
    	if(data!=null){
    		$('#shoucang').html(' 已收藏<a id="qxsc" href="javascript:void(0);" class="glyphicon glyphicon-heart" style="color:red" aria-hidden="true">  </a>');
    		
    	}
    },error: function(data){
    	
    }
    
});
}
$('#zan').on('click', "#dianzan", function(){

	//var num=1;
	var num=$("#zannum").val();
	$.ajax({
	    type:"post",
	    async:false,
	    cache:false,
	    url:"addPraise",
	    data:{"num":num,"uid":uid,"pid":pid},
	    dataType:"json",
	    success:function(data){
	    	if(data==1){
	    		select();
	    	}
	    }
	});
});
$('#zan').on('click', "#qxdianzan", function(){
	var num=$("#zannum").val();
	$.ajax({
	    type:"post",
	    async:false,
	    cache:false,
	    url:"deletePraise",
	    data:{"uid":uid,"pid":pid},
	    dataType:"json",
	    success:function(data){
	    	if(data==1){
	    		$("#zan").html('<span id="dianzan" >很赞哦！</span>');
	    		select();
	    	}
	    }
	});
});



/* 收藏 */
 $('#shoucang').on('click', "#sc", function(){
	$.ajax({
	    type:"post",
	    async:false,
	    cache:false,
	    url:"addCollect",
	    data:{"uid":uid,"pid":pid},
	    dataType:"json",
	    success:function(data){
	    	if(data==1){
	    		
	    		select();
	    	}
	    }
	});
}); 
 $('#shoucang').on('click', "#qxsc", function(){
		$.ajax({
		    type:"post",
		    async:false,
		    cache:false,
		    url:"deleteCollect",
		    data:{"uid":uid,"pid":pid},
		    dataType:"json",
		    success:function(data){
		    	if(data==1){
		    		$('#shoucang').html(' 收藏<a id="sc" href="javascript:void(0);" class="glyphicon glyphicon-heart-empty" aria-hidden="true">  </a>');
		    		select();
		    	}
		    }
		});
	}); 
</script>
<!-- 评论功能的实现 -->
 <script type="text/javascript">
   var pid=$("#pid").val(); 
         // var pid=1;
   $(function(){
	   select1();
   });
    		function select1(){
    			 $.ajax({
    	 		        type:"GET",
    	 		        cache:false,
    	 		        async:false, 
    	 		        url:"findCommentByPid",
    	 		        data:{"pid":pid},
    	 		        dataType:"json",
    	 		        success : function(data){
    	 		        	$(".comment-info").html('');
    	 		        	$("#yhpp").html(data.length);
    	 					$(data).each(function(index){
    	 						
    	 						$.ajax({
    	 			 		        type:"GET",
    	 			 		        cache:false,
    	 			 		        async:false, 
    	 			 		        url:"getUserById",
    	 			 		        data:{"id":data[index].userid},
    	 			 		        dataType:"json",
    	 			 		        success : function(user){
    	 			 		        	
    							$(".comment-info").prepend(
    									'<img src="'+user.touxiang+'" width="70px" height="70px" alt="..." class="img-circle">'
    				                      +'<div class="comment-right">'
    				                       + '<h5>'+user.username+'</h5>'
    				                     +' <div class="comment-content-header"><span><i class="glyphicon glyphicon-time"></i>'+ data[index].savetime.substring(0,19)+'</span></div>'
    				                      +' <p >'+data[index].content+'</p>'
    				                       +'  <div class="comment-content-footer">'
    				                         +' <div class="row">'
    				                           /*  +'<div class="col-md-2"><span class="reply-btn">回复</span></div>' */
    				                          +'</div>'
    				                        +'</div>'
    				                        
    				                      +'</div>' 
    			                     );
    	 			 		        }
    	 						});
    							
    							  });
    	 					
    	 					
    	 				},
    	 				error:function(data){
    	 					alert("评论失败！");
    	 				 }
    	 		        }); 
    		}
           
            
            
      $("#comment").click(function(){
	var content=$("#textarea").val();
	  var pid=$("#pid").val(); 
	    var userid=$("#userid").val(); 
	/* var userid=4;
	var pid=1; */
	
          $.ajax({
 		        type:"POST",
 		        cache:false,
 		        async:false, 
 		        url:"saveComment",
 		        data:{"content":content,"userid":userid,"pid":pid},
 		        dataType:"json",
 		        success : function(data){
 					if(data==1){
 						$("#textarea").val('');
 						
 				            select1();
 					}
 				},
 				error:function(data){
 					alert("评论失败！");
 				 }
 		        }); 
      });
      
      </script>
</html>