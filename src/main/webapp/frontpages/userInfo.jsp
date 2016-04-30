<!--//<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
//<%
//String path = request.getContextPath();
//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//%>-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>用户页面</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8"/>
<!-- STYLESHEET CSS FILES -->
<link rel="stylesheet" href="frontpages/css/bootstrap.min.css">
<link rel="stylesheet" href="frontpages/css/animate.min.css">
<link rel="stylesheet" href="frontpages/css/font-awesome.min.css">
<link rel="stylesheet" href="frontpages/css/nivo-lightbox.css">
<link rel="stylesheet" href="frontpages/css/nivo_themes/default/default.css">
<link rel="stylesheet" href="frontpages/css/global.css">
<link rel="stylesheet" href="frontpages/css/UserInfo.css">
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
<!-- preloader section -->
<div class="preloader">
  <div class="sk-spinner sk-spinner-rotating-plane"></div>
</div>
<!-- home section -->
<!--<section id="home">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h1 class="wow bounceInDown rotate">Impulse</h1>
        <h2 class="wow bounce">停车场管理系统</h2>
        <a href="#intro" class="btn btn-default smoothScroll">现在启动</a></div>
    </div>
  </div>
</section>-->
<!-- navigation section -->
<div class="navbar navbar-default navbar-static-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span> </button>
      <a href="#" class="navbar-brand">${User.username }</a></div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/carmanage/returnuser.action?id=${User.userid}" class="smoothScroll">返回</a></li>
		<li><a href="/carmanage/useroperate.action?id=${User.userid}" class="smoothScroll">修改个人信息</a></li>        
      </ul>
    </div>
  </div>
</div>

<!-- work section -->
<section id="service">
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-4 title">
        <h2>${User.username }</h2>
        <hr>
        <p>您的个人信息如旁所示：</p>
      </div>
      <div class="col-md-8 col-sm-8 serviceChoice">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-lg-6 bg-black text-center">
					<h3>用户名：${User.username }</h3>
				</div>
				<div class="col-md-6 col-lg-6 col-sm-6 bg-red text-center">
					<h3>生日：${User.userbirthday }</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-lg-6 bg-black text-center">
					<h3>性别：${User.usersex }</h3>
				</div>
				<div class="col-md-6 col-lg-6 col-sm-6 bg-red text-center">
					<h3>手机号码：${User.usertel }</h3>
				</div>
			</div>
			<div class="row">
					<div class="col-md-6 col-sm-6 col-lg-6 bg-black text-center">
					<h3>拥有车名：${User.usercarname }</h3>
				</div>
				<div class="col-md-6 col-lg-6 col-sm-6 bg-red text-center">
					<h3>拥有车牌名：${User.usercarboardnum }</h3>
				</div>
			</div>


				<!-- <div class="col-md-6 col-sm-6 bg-black"> <i class="fa fa-globe"></i>
          <h3>SEO</h3>
        </div> -->
      </div>
    </div>
  </div>
</section>


<!-- google map section -->
<!-- footer section -->
<footer>
  <div class="container">
    <div class="row">
        <p>Copyright@By Owen </p>
    </div>
  </div>
</footer>
<!-- JAVASCRIPT JS FILES --> 
<script src="frontpages/js/jquery.js"></script> 
<script src="frontpages/js/bootstrap.min.js"></script> 
<script src="frontpages/js/nivo-lightbox.min.js"></script> 
<script src="frontpages/js/smoothscroll.js"></script> 
<script src="frontpages/js/jquery.sticky.js"></script> 
<script src="frontpages/js/jquery.parallax.js"></script> 
<script src="frontpages/js/wow.min.js"></script> 
<script src="frontpages/js/custom.js"></script>
</body>
</html>