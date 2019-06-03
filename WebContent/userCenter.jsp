<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>关于我单页-宁静致远个人博客</title>
<meta name="keywords" content="blog" />
<meta name="description" content="blog" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
 
<script src="js/jquery-2.1.4.min.js"></script>
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

 <link href="./css/fileinput.css" rel="stylesheet">
    <script src="./js/fileinput.js"></script>

<script src="js/comm.js"></script>
<title>用户个人中心-宁静致远个人博客</title>
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
  <div class="whitebg about">
    
   
    
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">修改用户</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <input type="hidden" value="${ulist[0].id }" id="myuser">
              <tr>
                <td wdith="20%">用户名:</td>
                <td width="80%"><input type="text" value="" class="form-control" id="updatename" name="username" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">密码:</td>
                <td width="80%"><input type="password" class="form-control" id="updatepwd" maxlength="18" autocomplete="off" /></td>
              </tr>
             <tr>
                <td wdith="20%">头像</label>
                <td width="80%"><img src="" id="utouxiang" width="100" height="100"></td>
              </tr>
              <tr>
                <td wdith="20%">选择头像</lael>
                <td width="80%"><input type="file" id="updatetouxiang" class="file"></td>
   
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <input type="hidden" name="userid" value="" />
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" id="updateUser">提交</button>
        </div>
      </div>
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </div>
</article>
<footer>
   <p align="center">Copyright &copy; 2019.Allrights by qdc college.guoningning</p>
</footer>
<script>


	
	var userid=$("#myuser").val();
	
	
	$.ajax({
        type:"GET",
        cache:false,//页面无缓存
        async:false, //异步请求    true时同步请求
        data:{"id":userid},//传递到后台的参数
        url:"getUserById",//请求api接口
        dataType:"json",//以json方式返回到页面上
        success : function(user){//user是JSON对象    
        	
        	$("#updatename").val(user.username);//给id属性动态赋值       与实体类中的属性值一样
		$("#updatepwd").val(user.pwd);
		$("#updateId").val(user.id);
		$("#utouxiang").attr('src',user.touxiang);
			$("#seeUser").modal('show');
			
        }
 }); 

$("#updateUser").click(function(){
	var name=$("#updatename").val();
	var pwd=$("#updatepwd").val();
	var id=$("#myuser").val();
	
	var formData = new FormData();
    if($('#updatetouxiang')[0].files[0]!=null){
    	formData.append('touxiang', $('#updatetouxiang')[0].files[0]);
    }

    formData.append('username',name);
    formData.append('pwd',pwd);
    formData.append("id",id);

    $.ajax({
		 type:'post',
        dataType:'json',
        data:formData,
        cache: false, //上传文件不需要缓存
        url:'updateUserById',
        processData: false, // 告诉jQuery不要去处理发送的数据
        contentType: false, // 告诉jQuery不要去设置Content-Type请求头
        success:function(data1){
			if(data1==1){
			
					
				alert("您已修改成功！");
			window.open("index.jsp");
			}
				
		},
		error:function(data){
			alert("修改失败了！");
		 }

        });  
});	 


</script>
</body>
</html>