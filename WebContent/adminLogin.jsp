<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录-后台管理系统</title>
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">
<link rel="icon" href="images/icon/icon.jpg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/mycss/style.css" />
<script src="javascript/jquery.js"></script>
<script src="javascript/public.js"></script>
<script src="javascript/plug-ins/customScrollbar.min.js"></script>
<script src="javascript/pages/login.js"></script>
<style type="text/css">
.login-contain{
margin-top: 300px;
}
</style>
</head>
<body class="login-page">
	<section class="login-contain">
		<header>
			<h1>后台管理系统</h1>
			<p>management system</p>
		</header>
		<form action="adminLogin" method="post">
		<div class="form-content">
			<ul>
				<li>
					<div class="form-group">
						<label class="control-label">管理员账号：</label>
						<input type="text" placeholder="管理员账号..." class="form-control form-underlined" id="adminName" name="uname"/>
					</div>
				</li>
				<li>
					<div class="form-group">
						<label class="control-label">管理员密码：</label>
						<input type="password" placeholder="管理员密码..." class="form-control form-underlined" id="adminPwd" name="pwd"/>
					</div>
				</li>
				<li>
					<label class="check-box">
						<input type="checkbox" />
						记住账号密码
					</label>
				</li>
				<li>
				    <input type="submit" class="btn btn-lg btn-block" align="center" value="登录" id="entry"/> 
					<!-- <button class="btn btn-lg btn-block" id="entry" type="submit">立即登录</button> -->
				</li>
				<li>
					<p class="btm-info">©Copyright 2019<a href="#" target="_blank" title="DeathGhost">宁静致远</a></p>
					<address class="btm-info">青岛理工大学琴岛学院</address>
				</li>
			</ul>
		</div>
		</form>
	</section>
<div class="mask"></div>
<div class="dialog">
	<div class="dialog-hd">
		<strong class="lt-title">弹框</strong>
		<a class="rt-operate icon-remove JclosePanel" title="关闭"></a>
	</div>
	<div class="dialog-bd">
		<!--start::-->
		<p>弹框的内容</p>
		<!--end::-->
	</div>
	<div class="dialog-ft">
		<button class="btn btn-info JyesBtn">确认</button>
		<button class="btn btn-secondary JnoBtn">关闭</button>
	</div>
	
</div>

</body>
</html>