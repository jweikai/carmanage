<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>用户页面</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
	<meta charset="utf-8"/>
<!-- STYLESHEET CSS FILES -->
<link rel="stylesheet" href="frontpages/css/bootstrap.min.css">
<link rel="stylesheet" href="frontpages/css/animate.min.css">
<link rel="stylesheet" href="frontpages/css/font-awesome.min.css">
<link rel="stylesheet" href="frontpages/css/nivo-lightbox.css">
<link rel="stylesheet" href="frontpages/css/nivo_themes/default/default.css">
<link rel="stylesheet" href="frontpages/css/global.css">
<link rel="stylesheet" href="frontpages/css/modal.css">
	<link rel="stylesheet" type="text/css" href="frontpages/css/useralert.css"/>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50" >
	<!-- preloader section -->
	<div class="preloader">
		<div class="sk-spinner sk-spinner-rotating-plane"></div>
	</div>
	<!-- navigation section -->
	<div class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">${User.userName }</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/carmanage/returnuser.action?id=${User.userId}" class="smoothScroll">返回</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- work section -->
	<section id="service">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4 title">
				<h2>HaHa1</h2>
				<hr>
				<p>您的个人信息如旁所示：</p>
			</div>
			<div class="col-md-8 col-sm-8 ">
				<form id="myform" class="form-horizontal" action="/carmanage/update.action" method="post">
  						<div class="form-group bg-black">
    						<label for="inputEmail3" class="col-sm-2 control-label">用户名:</label>
    						<div class="col-sm-4">
    							<input name="userId" type="hidden" value="${User.userId }">
      							<input type="text" name="UserInfo.username" class="form-control" id="inputEmail3" value="${User.userName}" data-type="用户名">
    						</div>
    						<label for="inputPassword3" class="col-sm-2 control-label">密码:</label>
   							<div class="col-sm-4">
      							<input type="password" name="UserInfo.userpwd" class="form-control verifyText required" id="inputPassword3" value="${User.userPassword }" data-type="密码">
    						</div>
  						</div>
  						<div class="form-group bg-red">
    						<label for="inputEmail3" class="col-sm-2 control-label">生日:</label>
    						<div class="col-sm-4">
      							<input type="date" name="UserInfo.userbirthday" class="form-control requird verifyText" id="inputEmail3" value="${User.userBirthday }" data-type="生日">
    						</div>
    						<label for="inputPassword3" class="col-sm-2 control-label">性别:</label>
   							<div class="col-sm-2">
      							<input type="radio" class="form-control radio-inline" ${User.userSex==1 ? '' : 'checked' } name="UserInfo.usersex" style="width: 15px;" id="inputPassword3" value="0"><span>男</span>
    						</div>
    						<div class=" col-sm-2">
    							<input type="radio" class="form-control radio-inline" ${User.userSex==1 ? 'checked' : '' } name="UserInfo.usersex" style="width: 15px;" id="inputPassword3" value="1"><span>女</span>
    						</div>
  						</div>
  						<div class="form-group bg-black">
    						<label for="inputEmail3" class="col-sm-2 control-label">手机号码:</label>
    						<div class="col-sm-4">
      							<input type="text" name="UserInfo.usertel" class="form-control telPhone required" id="inputEmail3" data-type="手机号码" value="${User.userTel }">
    						</div>
    						<label for="inputPassword3" class="col-sm-2 control-label">拥有车车名:</label>
   							<div class="col-sm-4">
      							<input type="text" name="UserInfo.usercarname" class="form-control required verifyText" id="inputPassword3" data-type="拥有车车名" value="${User.userCarName }">
    						</div>
  						</div>
  						<div class="form-group bg-red">
    						<label for="inputEmail3" class="col-sm-2 control-label">拥有车牌号:</label>
    						<div class="col-sm-4">
      							<input type="text" name="UserInfo.usercarboardnum" class="form-control verifyText required" id="inputEmail3" data-type="拥有车牌号" value="${User.userCarBoardNum }">
    						</div>
  						</div>
  						<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-6">
      							<a id="aa"  class="btn btn-default btn-submit">提&nbsp;&nbsp;&nbsp;&nbsp;交</a>
    						</div>
  						</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<!-- team section -->
	<!-- footer section -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 copyright">
				<p>Copyright</p>
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
	<script src="frontpages/js/verify.js"></script>
	<script src="frontpages/js/useralert.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>