<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    Date date = new Date();
    String nowDate = sdf.format(date);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>留言- 宁静致远博客管理系统</title>
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="editormd/editormd.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

<link rel="apple-touch-icon-precomposed" href="images/icon/icon.jpg">
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">
<script src="js/jquery-2.1.4.min.js"></script>
<!--[if gte IE 9]>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>

<body class="user-select">
<section class="container-fluid">
  <header>
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand" href="/">宁静致远</a> </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="">消息 <span class="badge">1</span></a></li>
            <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">admin <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left">
                <li><a title="查看或修改个人信息" data-toggle="modal" data-target="#seeUserInfo">个人信息</a></li>
                <li><a title="查看您的登录记录" data-toggle="modal" data-target="#seeUserLoginlog">登录记录</a></li>
              </ul>
            </li>
            <li><a href="login.html" onClick="if(!confirm('是否确认退出？'))return false;">退出登录</a></li>
            <li><a data-toggle="modal" data-target="#WeChat">帮助</a></li>
          </ul>
          <form action="" method="post" class="navbar-form navbar-right" role="search">
            <div class="input-group">
              <input type="text" class="form-control" autocomplete="off" placeholder="键入关键字搜索" maxlength="15">
              <span class="input-group-btn">
              <button class="btn btn-default" type="submit">搜索</button>
              </span> </div>
          </form>
        </div>
      </div>
    </nav>
  </header>
	<div class="row">
		 <aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
      <ul class="nav nav-sidebar">
        <li class="active"><a href="adminIndex.jsp">报告</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="getAllPassage" name="getAllPassage">文章</a></li>
        <li><a href="notice.jsp">公告</a></li>
        <li><a href="comment.jsp">评论</a></li>
        <li><a href="getAllMessage">留言</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="getAllType" name="getAllType">栏目</a></li>
        <li><a class="dropdown-toggle" id="otherMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">其他</a>
          <ul class="dropdown-menu" aria-labelledby="otherMenu">
            <li><a href="flink.html">友情链接</a></li>
            <li><a data-toggle="modal" data-target="#areDeveloping">访问记录</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a class="dropdown-toggle" id="userMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">用户</a>
          <ul class="dropdown-menu" aria-labelledby="userMenu">
          
            <li><a href="member_user.jsp">管理用户</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="loginlog.jsp">管理登录日志</a></li>
          </ul>
        </li>
        <li><a class="dropdown-toggle" id="settingMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">设置</a>
          <ul class="dropdown-menu" aria-labelledby="settingMenu">
            <li><a href="setting.html">基本设置</a></li>
            <li><a href="readset.html">阅读设置</a></li>
            <li role="separator" class="divider"></li>
            <li><a data-toggle="modal" data-target="#areDeveloping">安全配置</a></li>
            <li role="separator" class="divider"></li>
            <li class="disabled"><a>扩展菜单</a></li>
          </ul>
        </li>
      </ul>
    </aside>




		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
			<!-- 留言的表单 -->
			<form class="layui-form" action="addMessage" method="post">
				<input name="username" value="${user1.getUsername()}" hidden="hidden" />
				<input name="fdate" value="${user1.fdate}" hidden="hidden" /> 
				<input name="lw_for_article_id" value="${article.r_id}" hidden="hidden" />
				<div class="layui-input-block" style="margin-left: 0;">
				<textarea id="lw_content" name="lw_content" placeholder="请输入你的留言" class="layui-textarea" style="height: 150px;"></textarea>
		</div>
				<br/>
	    <div class="layui-input-block" style="text-align: left; margin-left: 0;">
		<input type="submit" class="layui-btn" value="添加留言">
		</div>
			  </form>
			<br />
			
			
			<!-- 留言信息列表展示 -->
			<div>
				<ul>
					<!-- 先遍历留言信息（一条留言信息，下面的全是回复信息） -->
					<c:forEach items="${mlist}" var="msg">
						<!-- 如果留言信息是在本文章下的才显示 -->
					<%-- 	<c:if test="${msg.pid eq p.id}"> --%>
							<li style="border-top: 1px dotted #01AAED"><br />
								<div style="text-align: left; color: #444">
									<div>
										<span style="color: #01AAED">${msg.fid}</span>
									</div>
									<div>${msg.fcontent}</div>
								</div>
								<div>
									<div class="comment-parent"
										style="text-align: left; margin-top: 7px; color: #444">
										<span> ${msg.fdate}</span> &nbsp;&nbsp;&nbsp;&nbsp;
										<p>
											<a href="javascript:;" style="text-decoration: none;"
												onclick="btnReplyClick(this)">回复</a>
										</p>
										<hr style="margin-top: 7px;" />
									</div>


									<!-- 回复表单默认隐藏 -->
									<div class="replycontainer layui-hide"
										style="margin-left: 61px;">
										<form action="replyMessage" method="post" class="layui-form">
											<%-- <input name="lr_for_article_id" id="lr_for_article_id" value="${article.r_id}" hidden="hidden" />  --%>
											<input name="lr_name" id="lr_name" value="${sessionScope.name}" hidden="hidden" /> 
											<input name="lr_date" id="lr_date" value="<%=nowDate%>" hidden="hidden" />
											<input name="lr_for_name" id="lr_for_name" value="${words.lw_name}" hidden="hidden" />
											<input name="lr_for_words" id="lr_for_words" value="${words.lw_id}" hidden="hidden" />	
											<input name="lr_for_reply" id="lr_for_reply" value="${reply.lr_id}" hidden="hidden" />
											<div class="layui-form-item">
												<textarea name="lr_content" id="lr_content" lay-verify="replyContent" placeholder="请输入回复内容"
													class="layui-textarea" style="min-height: 80px;">
												</textarea>
											</div>
											<div class="layui-form-item">
												<button id="replyBtn" class="layui-btn layui-btn-mini"
													lay-submit="formReply" lay-filter="formReply">提交</button>
											</div>
										</form>
									</div>
								</div> 
								<!-- 以下是回复信息 --> 
								<c:forEach items="${requestScope.lr_list}" var="reply">
									<!-- 每次遍历出来的留言下存在回复信息才展示（本条回复信息是本条留言下的就显示在当前留言下）--> 
									<c:if test="${reply.lr_for_article_id eq article.r_id && reply.lr_for_words eq words.lw_id}">
										<div style="text-align: left; margin-left: 61px; color: #444">
											<div>
												<span style="color: #5FB878">${reply.lr_name}&nbsp;&nbsp;</span>
											</div>
											<div>@${reply.lr_for_name}:&nbsp;&nbsp;
												${reply.lr_content}</div>
										</div>
										<div>
											<div class="comment-parent"
												style="text-align: left; margin-top: 7px; margin-left: 61px; color: #444">
												<span>${reply.lr_date} </span> &nbsp;&nbsp;&nbsp;&nbsp;
												<p>
													<a href="javascript:;" style="text-decoration: none;"
														onclick="btnReplyClick(this)">回复</a>
												</p>
												<hr style="margin-top: 7px;" />
											</div>
											<!-- 回复表单默认隐藏 -->
											<div class="replycontainer layui-hide" style="margin-left: 61px;">
												<form action="<%=basePath%>/article/saveReply.do" method="post" class="layui-form">
													<input name="lr_for_article_id" id="lr_for_article_id" value="${article.r_id}" hidden="hidden" />
													<input name="lr_name" id="lr_name" value="${sessionScope.name}" hidden="hidden" /> 	
													<input name="lr_date" id="lr_date" value="<%=nowDate%>" hidden="hidden" />
													<input name="lr_for_name" id="lr_for_name" value="${words.lw_name}" hidden="hidden" /> 
													<input name="lr_for_words" id="lr_for_words" value="${words.lw_id}" hidden="hidden" /> 
													<input name="lr_for_reply" id="lr_for_reply" value="${reply.lr_id}" hidden="hidden" />
													<div class="layui-form-item">
														<textarea name="lr_content" id="lr_content" lay-verify="replyContent" placeholder="请输入回复内容" class="layui-textarea" style="min-height: 80px;">
                                                             @${words.lw_name}:&nbsp;&nbsp;                                      
                                                         </textarea>
													 </div>
													<div class="layui-form-item">
														<button id="replyBtn" class="layui-btn layui-btn-mini"
															lay-submit="formReply" lay-filter="formReply">提交</button>
													</div>
												</form>
											</div>
										</div>
									</c:if>
								</c:forEach></li>
					<%-- 	</c:if> --%>
					</c:forEach>
				</ul>
			</div>
		</div>
		<br /> <br /> <br /> <br /> <br />
	</div>












	</div>
  </div>
</section>
<!--查看评论模态框-->
<div class="modal fade" id="seeComment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >查看评论</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">评论ID:</td>
                <td width="80%" class="see-comment-id"></td>
              </tr>
              <tr>
                <td wdith="20%">评论页面:</td>
                <td width="80%" class="see-comment-page"></td>
              </tr>
              <tr>
                <td wdith="20%">评论内容:</td>
                <td width="80%" class="see-comment-content"></td>
              </tr>
              <tr>
                <td wdith="20%">IP:</td>
                <td width="80%" class="see-comment-ip"></td>
              </tr>
              <tr>
                <td wdith="20%">所在地:</td>
                <td width="80%" class="see-comment-address"></td>
              </tr>
              <tr>
                <td wdith="20%">系统:</td>
                <td width="80%" class="see-comment-system"></td>
              </tr>
              <tr>
                <td wdith="20%">浏览器:</td>
                <td width="80%" class="see-comment-browser"></td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">朕已阅</button>
        </div>
      </div>
  </div>
</div>
<!--个人信息模态框-->
<div class="modal fade" id="seeUserInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <form action="" method="post">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >个人信息</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">姓名:</td>
                <td width="80%"><input type="text" value="王雨" class="form-control" name="truename" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">用户名:</td>
                <td width="80%"><input type="text" value="admin" class="form-control" name="username" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">电话:</td>
                <td width="80%"><input type="text" value="18538078281" class="form-control" name="usertel" maxlength="13" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">旧密码:</td>
                <td width="80%"><input type="password" class="form-control" name="old_password" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">新密码:</td>
                <td width="80%"><input type="password" class="form-control" name="password" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">确认密码:</td>
                <td width="80%"><input type="password" class="form-control" name="new_password" maxlength="18" autocomplete="off" /></td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<!--个人登录记录模态框-->
<div class="modal fade" id="seeUserLoginlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" >登录记录</h4>
      </div>
      <div class="modal-body">
        <table class="table" style="margin-bottom:0px;">
          <thead>
            <tr>
              <th>登录IP</th>
              <th>登录时间</th>
              <th>状态</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>::1:55570</td>
              <td>2016-01-08 15:50:28</td>
              <td>成功</td>
            </tr>
            <tr>
              <td>::1:64377</td>
              <td>2016-01-08 10:27:44</td>
              <td>成功</td>
            </tr>
            <tr>
              <td>::1:64027</td>
              <td>2016-01-08 10:19:25</td>
              <td>成功</td>
            </tr>
            <tr>
              <td>::1:57081</td>
              <td>2016-01-06 10:35:12</td>
              <td>成功</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">朕已阅</button>
      </div>
    </div>
  </div>
</div>
<!--微信二维码模态框-->
<div class="modal fade user-select" id="WeChat" tabindex="-1" role="dialog" aria-labelledby="WeChatModalLabel">
  <div class="modal-dialog" role="document" style="margin-top:120px;max-width:280px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="WeChatModalLabel" style="cursor:default;">微信扫一扫</h4>
      </div>
      <div class="modal-body" style="text-align:center"> <img src="images/weixin.jpg" alt="" style="cursor:pointer"/> </div>
    </div>
  </div>
</div>
<!--提示模态框-->
<div class="modal fade user-select" id="areDeveloping" tabindex="-1" role="dialog" aria-labelledby="areDevelopingModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="areDevelopingModalLabel" style="cursor:default;">该功能正在日以继夜的开发中…</h4>
      </div>
      <div class="modal-body"> <img src="images/baoman/baoman_01.gif" alt="深思熟虑" />
        <p style="padding:15px 15px 15px 100px; position:absolute; top:15px; cursor:default;">很抱歉，程序猿正在日以继夜的开发此功能，本程序将会在以后的版本中持续完善！</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">朕已阅</button>
      </div>
    </div>
  </div>
</div>
<!--右键菜单列表-->
<div id="rightClickMenu">
  <ul class="list-group rightClickMenuList">
    <li class="list-group-item disabled">欢迎访问宁静致远博客</li>
    <li class="list-group-item"><span>IP：</span>172.16.10.129</li>
    <li class="list-group-item"><span>地址：</span>山东省青岛市</li>
    <li class="list-group-item"><span>系统：</span>Windows7 </li>
    <li class="list-group-item"><span>浏览器：</span>Chrome</li>
  </ul>
</div>
<script src="js/bootstrap.min.js"></script> 
<script src="js/admin-scripts.js"></script> 
<script>
$(function () {
    $("#main table tbody tr td a").click(function () {
        var name = $(this);
        var id = name.attr("rel"); //对应id   
        if (name.attr("name") === "see") {
            $.ajax({
                type: "POST",
                url: "/Comment/see",
                data: "id=" + id,
                cache: false, //不缓存此页面   
                success: function (data) {
                    var data = JSON.parse(data);
                    $('.see-comment-id').html(data.id);
                    $('.see-comment-page').html(data.page);
                    $('.see-comment-content').html(data.content);
                    $('.see-comment-ip').html(data.ip);
                    $('.see-comment-address').html(data.address);
                    $('.see-comment-system').html(data.system);
                    $('.see-comment-browser').html(data.browser);
                    $('#seeComment').modal('show');
                }
            });
        } else if (name.attr("name") === "delete") {
            if (window.confirm("此操作不可逆，是否确认？")) {
                $.ajax({
                    type: "POST",
                    url: "/Comment/delete",
                    data: "id=" + id,
                    cache: false, //不缓存此页面   
                    success: function (data) {
                        window.location.reload();
                    }
                });
            };
        };
        return false;
    });
});
</script>
</body>
</html>