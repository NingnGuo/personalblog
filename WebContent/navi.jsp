<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" type="image/x-icon" href="img/84.png">

<title>欢迎界面</title>
		<link href="https://fonts.googleapis.com/css?family=Nunito:400,700|Chewy" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="pater/pater.css" />
		<script>document.documentElement.className = 'js';</script>
</head>   
<body class="demo-3 loading">
		<svg class="hidden">
			<symbol id="icon-arrow" viewBox="0 0 24 24">
				<title>arrow</title>
				<polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
			</symbol>
			<symbol id="icon-drop" viewBox="0 0 24 24">
				<title>drop</title>
				<path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
			</symbol>
			<symbol id="icon-github" viewBox="0 0 32.6 31.8">
				<title>github</title>
				<path d="M16.3,0C7.3,0,0,7.3,0,16.3c0,7.2,4.7,13.3,11.1,15.5c0.8,0.1,1.1-0.4,1.1-0.8c0-0.4,0-1.4,0-2.8c-4.5,1-5.5-2.2-5.5-2.2c-0.7-1.9-1.8-2.4-1.8-2.4c-1.5-1,0.1-1,0.1-1c1.6,0.1,2.5,1.7,2.5,1.7c1.5,2.5,3.8,1.8,4.7,1.4c0.1-1.1,0.6-1.8,1-2.2c-3.6-0.4-7.4-1.8-7.4-8.1c0-1.8,0.6-3.2,1.7-4.4C7.4,10.7,6.8,9,7.7,6.8c0,0,1.4-0.4,4.5,1.7c1.3-0.4,2.7-0.5,4.1-0.5c1.4,0,2.8,0.2,4.1,0.5c3.1-2.1,4.5-1.7,4.5-1.7c0.9,2.2,0.3,3.9,0.2,4.3c1,1.1,1.7,2.6,1.7,4.4c0,6.3-3.8,7.6-7.4,8c0.6,0.5,1.1,1.5,1.1,3c0,2.2,0,3.9,0,4.5c0,0.4,0.3,0.9,1.1,0.8c6.5-2.2,11.1-8.3,11.1-15.5C32.6,7.3,25.3,0,16.3,0z"/>
			</symbol>
		</svg>
		<main>
			<div class="content content--intro">
				<div class="content__inner">
					<h2 class="content__title">宁静致远个人博客系统</h2>
					<h3 class="content__subtitle">欢迎界面</h3>
					<a href="#" class="enter">点此处进入</a>
				</div>
				<div class="shape-wrap">
					<svg class="shape" width="100%" height="100vh" preserveAspectRatio="none" viewBox="0 0 1440 800" xmlns:pathdata="http://www.codrops.com/">
						<path d="M 73.3,178.6 C 101.7,363.8 76.38,735 118.7,813.8 161,892.7 327.3,946.7 381.1,853.3 434.9,759.9 427.2,488.9 436.8,341.5 443.3,241.3 447.3,33.05 516.1,36.19 574.9,38.88 611.6,214.9 622.3,429.7 633,644.6 614.7,796.1 688.1,849 761.6,901.8 860.7,873.7 897.6,850 982.3,795.5 951.2,639.3 961.1,506.1 970.9,372.9 958.5,43.53 1023,43.47 1063,43.43 1085,173.6 1095,370.7 1105,567.8 1082,804.3 1165,842.6 1197,857.5 1304,901 1342,833 1380,765 1354,413.7 1379,156.2 1407,-137.5 1719,-12.96 1719,-12.96 L -53.5,-44.66 C -53.5,-44.66 44.91,-6.65 73.3,178.6 Z" pathdata:id="M 105.3,190.6 C 159.7,353.8 143.2,774.2 149.1,779.5 155,784.8 159.4,782 164.8,778.2 170.2,774.4 168.9,242.8 240.3,125 311.7,7.205 430.7,2.307 564.2,13.56 707.9,25.67 806,166.3 800.5,376 804.7,587.3 801.2,773.9 807.1,782.7 813,791.4 816.8,792.7 821.4,786 826.4,778.8 819.4,566.3 820.3,498.1 821.2,429.9 781.4,95.51 992.5,74.58 1108,63.14 1235,166.4 1250,359.4 1265,552.4 1248,763.7 1271,781.4 1277,786 1281,786.2 1286,779.7 1292,773.2 1260,251.3 1355,103.9 1441,-30.35 1610,-117.6 1610,-117.6 L -110.1,-132.3 C -110.1,-132.3 50.91,27.35 105.3,190.6 Z"></path>
					</svg>
				</div>
			</div><!-- /content -->
			<div class="content content--fixed">
				<div class="content__inner">
					<nav class="menu">
						<a class="menu__item" href="getPassage" style="background: no-repeat 0% 44%/94% url(img/paint1.svg);"><span>进入首页</span></a>
						<!-- <a class="menu__item" href="login" style="background: no-repeat 0% 30%/94% url(img/paint2.svg);"><span>登录/注册</span></a> -->
					</nav>
				</div>
			</div>
			<script src="js/imagesloaded.pkgd.min.js"></script>
			<script src="js/charming.min.js"></script>
			<script src="js/anime.min.js"></script>
			<script src="js/demo3.js"></script>
		</main>
	</body>
</html>