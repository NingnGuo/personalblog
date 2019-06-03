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
   
</head>
<body>
<div id="zan">
<span id="dianzan" class="glyphicon glyphicon-thumbs-up">赞</span>
</div>
（<span id="zannum"></span>）
</body>
<script type="text/javascript">

var uid=1;//用户id
var pid=1;//文章id
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
    		$("#zan").html('<span id="qxdianzan" class="glyphicon glyphicon-thumbs-down">取消赞</span>');
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
    		$("#zannum").html(data.length);
    	}
    }
});
}
$('#zan').on('click', "#dianzan", function(){

	var num=1;
	
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
	
	$.ajax({
	    type:"post",
	    async:false,
	    cache:false,
	    url:"deletePraise",
	    data:{"uid":uid,"pid":pid},
	    dataType:"json",
	    success:function(data){
	    	if(data==1){
	    		$("#zan").html('<span id="dianzan" class="glyphicon glyphicon-thumbs-up">赞</span>');
	    		select();
	    	}
	    }
	});
});
</script>
</html>