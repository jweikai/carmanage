<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>Impulse Parallax Bootstrap Template</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<meta charset="utf-8" />
<!-- STYLESHEET CSS FILES -->
<link rel="stylesheet" href="frontpages/css/bootstrap.min.css">
<link rel="stylesheet" href="frontpages/css/animate.min.css">
<link rel="stylesheet" href="frontpages/css/font-awesome.min.css">
<link rel="stylesheet" href="frontpages/css/nivo-lightbox.css">
<link rel="stylesheet" href="frontpages/css/nivo_themes/default/default.css">
<link rel="stylesheet" href="frontpages/css/global.css">
<!--<link rel="stylesheet" href="frontpages/css/extends.css" />-->
<!--
	作者：54418072@qq.com
	时间：2015-11-19
	描述：js
-->
<script type="text/javascript" src="frontpages/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="frontpages/js/custom.js" ></script>
<script type="text/javascript" src="frontpages/js/jquery.js" ></script>
<script type="text/javascript" src="frontpages/js/jquery.parallax.js" ></script>
<script type="text/javascript" src="frontpages/js/jquery.sticky.js" ></script>
<script type="text/javascript" src="frontpages/js/nivo-lightbox.min.js" ></script>
<script type="text/javascript" src="frontpages/js/smoothscroll.js" ></script>
<script type="text/javascript" src="frontpages/js/wow.min.js" ></script>
<script type="text/javascript">
	function regisert(){
		document.location.href="register.jsp";
	}
</script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
	<!-- Modal -->

	
<!-- preloader section -->
<div class="preloader">
  <div class="sk-spinner sk-spinner-rotating-plane"></div>
</div>

<div class="navbar navbar-default navbar-static-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span> </button>
      <a href="#" class="navbar-brand">Impulse</a></div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/carmanage/index.action" class="smoothScroll">返回主页</a></li>
      </ul>
    </div>
  </div>
</div>
<!-- intro section -->
<section id="intro">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 title">
        
        <h1>登录用户名或密码错误，请重新登录</h1>
      </div>
    </div>
  </div>
</section>

<!-- footer section -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h2 class="wow fadeIn" data-wow-delay="0.9s">联系我们</h2>
        <ul class="social-icon">
          <li><a href="#" class="fa fa-facebook wow bounceIn" data-wow-delay="0.3s"></a></li>
          <li><a href="#" class="fa fa-twitter wow bounceIn" data-wow-delay="0.6s"></a></li>
          <li><a href="#" class="fa fa-behance wow bounceIn" data-wow-delay="0.9s"></a></li>
          <li><a href="#" class="fa fa-dribbble wow bounceIn" data-wow-delay="0.9s"></a></li>
          <li><a href="#" class="fa fa-github wow bounceIn" data-wow-delay="0.9s"></a></li>
          <li><a href="#" class="fa fa-android wow bounceIn" data-wow-delay="0.9s"></a></li>
          <li><a href="#" class="fa fa-phone wow bounceIn" data-wow-delay="0.9s"></a></li>
        </ul>
      </div>
      <div class="col-md-12 col-sm-12 copyright">
        <p></p>
      </div>
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
