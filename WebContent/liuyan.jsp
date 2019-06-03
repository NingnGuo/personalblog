<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言</title>
<meta name="keywords" content="留言">
<meta name="description" content="留言">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/comm.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">


 <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="./css/header.css" rel="stylesheet">
    <link href="./css/a.css" rel="stylesheet">
    <link href="./css/content.css" rel="stylesheet">
    <link href="./css/breadbar.css" rel="stylesheet">
  <link rel="stylesheet"   href="./css/album.css" />

<style type="text/css">
#mya{
    color: white;
    text-decoration: none;
}
.comment-right {
    margin-top: -80px;
}

</style>


<!--[if lt IE 9]>
<script src="/skin/jxhx/js/modernizr.js"></script>
<![endif]-->
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

<article>
   
   
   
  
  <div class="whitebg">
    <h2 class="htitle">留言</h2>
    <div class="news_infos m20">
      <div class="gbox">
        <form action="" method="post" name="form1" id="form1">
          <p> <strong>来说点儿什么吧...</strong></p>
         
         <div class="container">
                    <!-- 留言页眉 -->
                <div class="yemei">
                    <div class="textkuang">
                   
                    <span class="zxyy">
                            用户留言（<span id="yhpp">10</span>）
                    </span>
                </div>
                    <hr style="height:1px;border:none;border-top:1px solid #555555;" />
                </div>
                <!-- 留言 -->
                  <div class="commentbox">
                    <textarea cols="60" rows="5" placeholder="来说几句吧......" class="form-control" id="textarea"></textarea>
                    <input type="hidden" value="${ulist[0].id }" id="userid">
                    <div class="btn btn-info pull-right" id="comment">留言</div>
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
        </form>
      </div>
      
    
    </div>
    <!--newsinfo end--> 
    
  </div>

   
   
               
          
 <script type="text/javascript">
      /*   var pid=$("#pid").val();  */
        var userid=$("#userid").val(); 
          var pid=1;
   $(function(){
	   select();
   });
    		function select(){
    			 $.ajax({
    	 		        type:"GET",
    	 		        cache:false,
    	 		        async:false, 
    	 		   /*   url:"findCommentByPid",   */
    	 		       url:"getAllMessage",  
    	 		       /*   data:{"pid":pid},  */
    	 		     /*  data:{"mlist":mlist}, */
    	 		        dataType:"json",
    	 		        success : function(data){
    	 		        	
    	 		        	$(".comment-info").html('');
    	 					$(data).each(function(index){
    	 						/* alert(data[index].uid); */
    	 						$.ajax({
    	 			 		        type:"GET",
    	 			 		        cache:false,
    	 			 		        async:false, 
    	 			 		        url:"getUserById",
    	 			 		        data:{"id":data[index].uid},
    	 			 		        dataType:"json",
    	 			 		        success : function(user){
    	 			 		        	
    							$(".comment-info").prepend(
    									'<img src="'+user.touxiang+'" width="70px" height="70px" alt="..." class="img-circle">'
    				                      +'<div class="comment-right">'
    				                       + '<h5>'+user.username+'</h5>'
    				                     +' <div class="comment-content-header"><span><i class="glyphicon glyphicon-time"></i>'+ data[index].time.substring(0,19)+'</span></div>'
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
    	 					
    	 					$("#yhpp").html(data.length);
    	 				},
    	 				error:function(data){
    	 					alert("留言失败！");
    	 				 }
    	 		        }); 
    		}
           
            
            
      $("#comment").click(function(){
	var content=$("#textarea").val();
	  var pid=$("#pid").val(); 
	 var uid=$("#userid").val(); 
	/* var userid=4;
	var pid=1; */
	
          $.ajax({
 		        type:"POST",
 		        cache:false,
 		        async:false, 
 		        url:"addMessage",
 		        data:{"content":content,"uid":uid,"pid":pid},
 		        dataType:"json",
 		        success : function(data){
 					if(data==1){
 						$("#textarea").val('');
 						
 				            select();
 					}
 				},
 				error:function(data){
 					alert("留言失败！");
 				 }
 		        }); 
      });
      
      </script>
        
    
</article>

<footer>
   <p align="center">Copyright &copy; 2019.Allrights by qdc college.guoningning</p>
 </footer>
</body>
</html>