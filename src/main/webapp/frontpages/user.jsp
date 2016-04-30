<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
      <a href="#" class="navbar-brand">${user.userName }</a></div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <!--<li><a href="#home" class="smoothScroll">主页</a></li>-->
        <li><a href="#announcement" class="smoothScroll">提示</a></li>
        <li><a href="#service" class="smoothScroll">操作</a></li>
        <li><a href="#price" class="smoothScroll">充值和提现</a></li>
        <li><a href="#contact" class="smoothScroll">反馈</a></li>
      </ul>
    </div>
  </div>
</div>
<section id="announcement">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 title">
        <h4>欢迎回来，${User.username }</h4>
        <h2>这是你的个人中心</h2>
        <hr>
        <p>在这里可以进行相应的个人操作</p>
      </div>
    </div>
  </div>
</section>

<section id="service">
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-4 title">
        <h2>操作</h2>
        <hr>
        <p>在这里您可以进行对自己相关的信息操作与修改</p>
      </div>
      <div class="col-md-8 col-sm-8">
        	<div id=""  class="col-md-6 col-sm-6 bg-black"> 
        		<a href="/carmanage/userUpdate.action?id=${User.userid}"><i class="fa fa-user"></i>
          		<h3>修改个人信息</h3></a>
        		
        	</div>
        	<div class="col-md-6 col-sm-6 bg-red"> 
        		<a href="/carmanage/userinfo.action?id=${User.userid}"><i class="fa fa-cloud"></i>
          		<h3>查看个人信息</h3></a>
        	</div>
        	<div class="col-md-6 col-sm-6 bg-red"> <a href="reser.action"><i class="fa fa-car"></i>
         		 <h3>预订车位/取消</h3></a>
        	</div>
        <div class="col-md-6 col-sm-6 bg-black"> <a href="pay.action"><i class="fa fa-globe"></i>
          <h3>账户额度管理</h3></a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- <section id="team">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 title">
        <h2>Our team</h2>
        <hr>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoree.</p>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-6 wow fadeIn" data-wow-delay="0.9s"><img src="images/team1.jpg" class="img-responsive" alt="team img">
        <div class="team-des">
          <h4>Tracy</h4>
          <h3>Designer</h3>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-6 wow fadeIn" data-wow-delay="1.3s"><img src="images/team2.jpg" class="img-responsive" alt="team img">
        <div class="team-des">
          <h4>Linda</h4>
          <h3>Manager</h3>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-6 wow fadeIn" data-wow-delay="1.6s"><img src="images/team3.jpg" class="img-responsive" alt="team img">
        <div class="team-des">
          <h4>Mary</h4>
          <h3>Developer</h3>
        </div>
      </div>
    </div>
  </div>
</section> -->

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
        <button class="btn btn-warning" onclick="location.href='/carmanage/userPay.action?id=${User.userid}'">开始进行</button>
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
        <button class="btn btn-warning" onclick="location.href='/carmanage/userPay.action?id=${User.userid}'">开始进行</button>
      </div>
    </div>
    <!-- <div class="col-md-4 col-sm-6">
      <div class="plan wow bounceIn" data-wow-delay="0.9s">
        <div class="plan_title">
          <h3>Professional</h3>
        </div>
        <div class="plan_sub_title">
          <h2>$ 75</h2>
          <small>per month</small> </div>
        <ul>
          <li>20 ACCOUNTS</li>
          <li>100 GB SPACE</li>
          <li>60 PRO THEMES</li>
        </ul>
        <button class="btn btn-warning">Get started</button>
      </div>
    </div>
  </div> -->
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
          <li><a href="#" class="fa fa-facebook wow bounceIn" data-wow-delay="0.3s"></a></li>
          <li><a href="#" class="fa fa-twitter wow bounceIn" data-wow-delay="0.6s"></a></li>
          <li><a href="#" class="fa fa-behance wow bounceIn" data-wow-delay="0.9s"></a></li>
          <li><a href="#" class="fa fa-dribbble wow bounceIn" data-wow-delay="0.9s"></a></li>
          <li><a href="#" class="fa fa-github wow bounceIn" data-wow-delay="0.9s"></a></li>
          <li><a href="#" class="fa fa-android wow bounceIn" data-wow-delay="0.9s"></a></li>
          <li><a href="#" class="fa fa-phone wow bounceIn" data-wow-delay="0.9s"></a></li>
        </ul>
      </div>
      
    </div>
  </div>
</footer>
</body>
</html>