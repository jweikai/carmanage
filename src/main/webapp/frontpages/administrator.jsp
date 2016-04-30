<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

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
	<link rel="stylesheet" type="text/css" href="frontpages/css/Administrator.css"/>
	<!--JAVASCRIPT JS FILES -->
	<script src="frontpages/js/jquery.js"></script>
	<script src="frontpages/js/bootstrap.min.js"></script>
	<script src="frontpages/js/nivo-lightbox.min.js"></script>
	<script src="frontpages/js/smoothscroll.js"></script>
	<script src="frontpages/js/jquery.sticky.js"></script>
	<script src="frontpages/js/jquery.parallax.js"></script>
	<script src="frontpages/js/wow.min.js"></script>
	<script src="frontpages/js/custom.js"></script>
	<script type="text/javascript">
	</script>
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
				<a href="#" class="navbar-brand">${Administrator.adminname }</a></div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<!--<li><a href="#home" class="smoothScroll">主页</a></li>-->
					<li><a href="#announcement" class="smoothScroll">提示</a></li>
					<li><a href="#operate" class="smoothScroll">操作</a></li>
					<!--<li><a href="#team" class="smoothScroll">TEAM</a></li>
        <li><a href="#portfolio" class="smoothScroll">PORTFOLIO</a></li>-->
					<li><a href="#price" class="smoothScroll">充值和提现</a></li>
					<li><a href="#contact" class="smoothScroll">反馈</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- intro section -->
	<section id="announcement">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 title">
					<h4>欢迎回来，${Administrator.adminname }</h4>
					<h2>这是你的管理中心</h2>
					<hr>
					<p>在这里可以进行相应的停车场管理操作</p>
				</div>
			</div>
		</div>
	</section>
	<!-- work section -->
	<section id="operate">
		<div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-4 title">
        <h2>操作</h2>
        <hr>
        <p>在这里您可以进行对自己相关的信息操作与修改</p>
      </div>
      <div class="col-md-8 col-sm-8">
        	<div id=""  class="col-md-6 col-sm-6 bg-black"> 
        		<a href="/carmanage/carport.action?authorty=0"><i class="fa fa-user"></i>
          		<h3>车位查询</h3></a>
        		
        	</div>
        <div class="col-md-6 col-sm-6 bg-black"> <a href="/carmanage/pay.action"><i class="fa fa-globe"></i>
          <h3>账户额度管理</h3></a>
        </div>
      </div>
    </div>
  </div>
	</section>
	
	
	<div id="price">
		<div class="container">
			<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 title">
				<h2>充值和提现</h2>
				<hr>
				<p>在这里可以进行您的账户的充值及提现</p>
			</div>
			<div class="col-md-6 col-sm-9">
				<div class="plan wow bounceIn" data-wow-delay="0.3s">
					<div class="plan_title">
						<h3>充值</h3>
					</div>
					<div class="plan_sub_title">
						<h2>额度：200</h2>
					</div>
					<ul>
						<li>说明：</li>
						<li>充值即将相应存储卡的钱</li>
						<li>存入您个人所在的用户</li>
					</ul>
					<button class="btn btn-warning" onclick="showPay()">开始进行</button>
				</div>
			</div>
			<div class="col-md-6 col-sm-9">
				<div class="plan wow bounceIn" data-wow-delay="0.6s">
					<div class="plan_title">
						<h3>提现</h3>
					</div>
					<div class="plan_sub_title">
						<h2>额度：100</h2>
					</div>
					<ul>
						<li>说明：</li>
						<li>提现即将您网站中账户的钱</li>
						<li>进行提取存入您其他银行账户中</li>
					</ul>
					<button class="btn btn-warning" onclick="showPay()">开始进行</button>
				</div>
			</div>
		</div>
	</div>
	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 title">
					<h2>反馈我们</h2>
					<hr>
					<p>请在这写下对我们网站的不足，我们将努力改善</p>
				</div>
				<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 contact-form wow fadeInUp" data-wow-delay="0.9s">
					<form action="#" method="post">
						<input type="text" class="form-control" placeholder="名字">
						<input type="email" class="form-control" placeholder="邮箱">
						<textarea class="form-control" placeholder="Message" rows="6"></textarea>
						<input type="button" class="form-control" value="发送邮箱">
					</form>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<h2 class="wow fadeIn" data-wow-delay="0.9s">加入我们</h2>
					<ul class="social-icon">
						<li>
							<a href="#" class="fa fa-facebook wow bounceIn" data-wow-delay="0.3s"></a>
						</li>
						<li>
							<a href="#" class="fa fa-twitter wow bounceIn" data-wow-delay="0.6s"></a>
						</li>
						<li>
							<a href="#" class="fa fa-behance wow bounceIn" data-wow-delay="0.9s"></a>
						</li>
						<li>
							<a href="#" class="fa fa-dribbble wow bounceIn" data-wow-delay="0.9s"></a>
						</li>
						<li>
							<a href="#" class="fa fa-github wow bounceIn" data-wow-delay="0.9s"></a>
						</li>
						<li>
							<a href="#" class="fa fa-android wow bounceIn" data-wow-delay="0.9s"></a>
						</li>
						<li>
							<a href="#" class="fa fa-phone wow bounceIn" data-wow-delay="0.9s"></a>
						</li>
					</ul>
				</div>
				<div class="col-md-12 col-sm-12 copyright">
					<p>Copyright © 2084 Company Name | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
				</div>
			</div>
		</div>
	</footer>
</body>

<<script type="text/javascript">
	function showPay() {
		window.location.href = "/carmanage/pay.action";
	}
</script>
</html>
