<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
   .modal-content {
    position: relative;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #999;
    border: 1px solid rgba(0, 0, 0, .2);
    border-radius: 0;
}
.modal-header {
    min-height: 16.42857143px;
    padding: 2em;
    border-bottom: 0px solid #e5e5e5;
}
.login-form input[type="text"], .login-form input[type="password"] {
    width: 400px;
    padding:10px;
    font-size: 0.8em;
    margin-top: 10px;
    outline: none;
    color: #212121;
    border: 1px solid #999;
    letter-spacing: 1px;
    text-align: center;
}
.login-form input[type="submit"] {
    outline: none;
    padding: 0.9em 0;
    width: 420px;
    text-align: center;
    font-size: 16px;
    margin-top: 1em;
    margin-left: 10%;
    border: none;
    color: black;
    cursor: pointer;
    background: buttonface;
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);
    border-radius:50px;

}
.login-form input[type="submit"]:hover{
    background:#3399ff;
         
}
.modal-header h4 {
    font-size: 2em;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 1px;
	color:#0c0d0d;
}
   
</style>
</head>

<body>
<ul>
    <li  data-toggle="modal" data-target="#myModal4"><a href="#">登录</a></li>
 </ul>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" >

		<div class="modal-dialog">
		<!-- Modal content-->
		   <div class="modal-content">
		     <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</NOtton>
			<h4>读者登录</h4>
		     <div class="login-form">
			<form action="#" method="post">
                            <p><span class="add-on" style="font-size: 16px;">账号：</span><input type="text" name="yhm" placeholder="电话号码或读者编号" required="" width="500px;"></p>
                            <p><span class="add-on" style="font-size: 16px;">密码：</span><input type="password" name="psw" placeholder="密码" required=""></p>
			<div class="tp">
                            <p class="mysub">
                            <input type="submit" value="确认登录"></p>
			</div>
			
			</form>
                         
		     </div>
		     </div>
		  </div>
		</div>
	</div>

</body>
</html>