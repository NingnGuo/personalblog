<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script src="js/jquery-2.1.4.min.js"></script>
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="./css/header.css" rel="stylesheet">
    <link href="./css/a.css" rel="stylesheet">
    <link href="./css/content.css" rel="stylesheet">
    <link href="./css/breadbar.css" rel="stylesheet">
  <link rel="stylesheet"   href="./css/album.css" />
</head>
<body>
  
     
     
                
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
             

            
            
             <input type="hidden" value="" id="pid">
               <input type="hidden" value="" id="userid">
          
            <script type="text/javascript">
         /*  var pid=$("#pid").val(); */
          var pid=1;
   $(function(){
	   select();
   });
    		function select(){
    			 $.ajax({
    	 		        type:"GET",
    	 		        cache:false,
    	 		        async:false, 
    	 		        url:"findCommentByPid",
    	 		        data:{"pid":pid},
    	 		        dataType:"json",
    	 		        success : function(data){
    	 		        	$(".comment-info").html('');
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
    									'<header><img src="'+user.touxiang+'" width="70px" height="70px" alt="..." class="img-circle"></header>'
    				                      +'<div class="comment-right">'
    				                       + '<h5>'+user.username+'</h5>'
    				                     +' <div class="comment-content-header"><span><i class="glyphicon glyphicon-time"></i>'+ data[index].savetime.substring(0,19)+'</span></div>'
    				                      +' <p >'+data[index].content+'</p>'
    				                       +'  <div class="comment-content-footer">'
    				                         +' <div class="row">'
    				                            +'<div class="col-md-2"><span class="reply-btn">回复</span></div>'
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
    	 					alert("评论失败！");
    	 				 }
    	 		        }); 
    		}
           
            
            
      $("#comment").click(function(){
	var content=$("#textarea").val();
	 /*  var pid=$("#pid").val(); */
	  /*  var userid=$("#userid").val(); */
	var userid=4;
	var pid=1;
	
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
 						
 				            select();
 					}
 				},
 				error:function(data){
 					alert("评论失败！");
 				 }
 		        }); 
      });
      
      </script>
            
            
         
</html>