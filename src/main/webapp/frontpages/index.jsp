<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>停车管理系统</title>
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
<!--<link rel="stylesheet" href="frontpages/css/extends.css" />-->
<!--
	作者：54418072@qq.com
	时间：2015-11-19
	描述：js
-->

<script type="text/javascript" src="frontpages/js/jquery.js" ></script>
<script type="text/javascript" src="frontpages/js/jquery.parallax.js" ></script>
<script type="text/javascript" src="frontpages/js/jquery.sticky.js" ></script>
<script type="text/javascript" src="frontpages/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="frontpages/js/nivo-lightbox.min.js" ></script>
<script type="text/javascript" src="frontpages/js/smoothscroll.js" ></script>
<script type="text/javascript" src="frontpages/js/wow.min.js" ></script>
<script type="text/javascript" src="frontpages/js/custom.js" ></script>
<script type="text/javascript">
	function regisert(){
		document.location.href="register.action";
	}
</script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">请进行登录</h4>
      </div>
      <form  action="${pageContext.request.contextPath }/login.action" method="post">
      <div class="modal-body">
      	 <div class="row">
      	 	<div class="col-lg-5 text-right" style="padding-right:0px">用户名：</div>
      	 	<div class="col-lg-6 text-left" style="padding-left:0px"><input type="text" name="userName" /></div>
      	 </div>
      	 <div class="row" style="margin-top:5px">
      	 	<div class="col-lg-5 text-right" style="padding-right:0px">密&nbsp;&nbsp;&nbsp;码：</div>
      	 	<div class="col-lg-6 text-left" style="padding-left:0px"><input type="password" name="userPassword" /></div>
      	 </div>
        <div class="row" style="margin-top:5px">
      	 	<div class="col-lg-2 col-lg-offset-2" style="padding:0px"> 用户<input type="radio" name="loginAccessation" value="0" checked="checked"/></div>
      	 	<div class="col-lg-4" style="padding:0px">管理员<input type="radio" name="loginAccessation" value="1"/></div>
      	 </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">登录</button>
        <button type="button" class="btn btn-success" onclick="regisert()">注册</button>
      </div>
      </form>
    </div>
  </div>
</div>

<div class="modal fade" id="myPay" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">你应付25元</h4>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="createConfirm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">请管理员操作:</h4>
      </div>
      <form  action="" method="post">
      <div class="modal-body">
      	 <div class="row">
      	 	<div class="col-lg-5 text-right" style="padding-right:0px">管理员名：</div>
      	 	<div class="col-lg-6 text-left" style="padding-left:0px"><input type="text" name="username" /></div>
      	 </div>
      	 <div class="row" style="margin-top:5px">
      	 	<div class="col-lg-5 text-right" style="padding-right:0px">密&nbsp;&nbsp;&nbsp;码：</div>
      	 	<div class="col-lg-6 text-left" style="padding-left:0px"><input type="password" name="userpwd" /></div>
      	 </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">生成</button>
        <button type="button" data-dismiss = "modal" class="btn btn-success">取消</button>
      </div>
      </form>
    </div>
  </div>
</div>
	<div id="notClickDiv"></div>
<!-- preloader section -->
<div class="preloader">
  <div class="sk-spinner sk-spinner-rotating-plane"></div>
</div>
<!-- home section -->
<section id="home">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h1 class="wow bounceInDown rotate">Impulse</h1>
        <h2 class="wow bounce">停车场管理系统</h2>
        <a href="#announcement" class="btn btn-default smoothScroll">进入系统</a></div> 
    </div>
  </div>
</section>
<!-- navigation section -->
<div class="navbar navbar-default navbar-static-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span> </button>
      <a href="#" class="navbar-brand">Impulse</a></div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home" class="smoothScroll">主页</a></li>
        <li><a href="#announcement" class="smoothScroll">公告</a></li>
        <li><a href="#service" class="smoothScroll">服务</a></li>
        <!--<li><a href="#team" class="smoothScroll">TEAM</a></li>
        <li><a href="#portfolio" class="smoothScroll">PORTFOLIO</a></li>-->
        <li><a href="#price" class="smoothScroll">收费标准</a></li>
        <li><a href="#contact" class="smoothScroll">反馈</a></li>
      </ul>
    </div>
  </div>
</div>

<section id="announcement">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 title">
        <h4>公告</h4>
        <h2>标题</h2>
        <hr>
        <p>内容：请在停车场玩得开心，多玩会儿再出去吧^_^</p>
      </div>
    </div>
  </div>
</section>
<section id="service">
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-4 title">
        <h2>服务</h2>
        <hr>
        <p>这是我们本网站所能提供的服务</p>
      </div>
      <div class="col-md-8 col-sm-8">
        <div class="col-md-6 col-sm-6 bg-black"> <a href="javascript:;" data-toggle='modal' data-target='#myModal' role="button"  ><i class="fa fa-user"></i>
          <h3>登录和注册</h3>
          </a>
        </div>
        <div class="col-md-6 col-sm-6 bg-red"><a href="/carmanage/carport.action?authorty=0"> <i class="fa fa-car"></i>
          <h3>查看车位</h3></a>
        </div>
        <div class="col-md-6 col-sm-6 bg-red"><a data-toggle='modal' data-target = "#createConfirm"> <i class="fa fa-link"></i>
          <h3>生成停车记录</h3>
          </a>
        </div>
        <div class="col-md-6 col-sm-6 bg-black"><a href=""><i class="fa fa-globe"></i>
          <h3>找回密码</h3>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- team section -->
<!--<section id="team">
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
</section>-->
<!-- portfolio section -->
<!--<div id="portfolio">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 title">
        <h2>Portfolio</h2>
        <hr>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoree.</p>
      </div>
      <div class="col-md-12 col-sm-12"></div>
      <div class="col-md-3 col-sm-3 wow fadeIn" data-wow-delay="0.6s"><a href="images/portfolio-img1.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img1.jpg" alt="portfolio img"></a></div>
      <div class="col-md-3 col-sm-3 wow fadeIn" data-wow-delay="0.6s"><a href="images/portfolio-img2.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img2.jpg" alt="portfolio img"></a></div>
      <div class="col-md-3 col-sm-3 wow fadeIn" data-wow-delay="0.6s"><a href="images/portfolio-img3.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img3.jpg" alt="portfolio img"></a></div>
      <div class="col-md-3 col-sm-3 wow fadeIn" data-wow-delay="0.6s"><a href="images/portfolio-img4.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img4.jpg" alt="portfolio img"></a></div>
      <div class="col-md-3 col-sm-3 wow fadeIn" data-wow-delay="0.6s"><a href="images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img5.jpg" alt="portfolio img"></a></div>
      <div class="col-md-3 col-sm-3 wow fadeIn" data-wow-delay="0.6s"><a href="images/portfolio-img6.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img6.jpg" alt="portfolio img"></a></div>
      <div class="col-md-3 col-sm-3 wow fadeIn" data-wow-delay="0.6s"><a href="images/portfolio-img7.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img7.jpg" alt="portfolio img"></a></div>
      <div class="col-md-3 col-sm-3 wow fadeIn" data-wow-delay="0.6s"><a href="images/portfolio-img8.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img8.jpg" alt="portfolio img"></a></div>
    </div>
  </div>
</div>-->
<!-- price section -->
<div id="price">
  <div class="container">
    <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 title">
      <h2>收费标准</h2>
      <hr>
      <p>本网站严格遵守相关部门所规定的标准进行计费，并且将展示相应的收费标准</p>
    </div>
    <div class="col-md-4 col-sm-6">
      <div class="plan wow bounceIn" data-wow-delay="0.3s">
        <div class="plan_title">
          <h3>普通车辆</h3>
        </div>
        <div class="plan_sub_title">
          <h2>25元</h2>
          <small>每半个小时</small> </div>
        <ul>
          <li>普通车辆包括</li>
          <li>临时出入停车场的车辆</li>
          <li>非公司内部车辆</li>
        </ul>
        <button class="btn btn-warning" data-target="#myPay" data-toggle="modal">付费</button>
      </div>
    </div>
    <div class="col-md-4 col-sm-6">
      <div class="plan wow bounceIn" data-wow-delay="0.6s">
        <div class="plan_title">
          <h3>用户车辆</h3>
        </div>
        <div class="plan_sub_title">
          <h2>15元</h2>
          <small>半个小时</small> </div>
        <ul>
          <li>用户车辆包括</li>
          <li>网上注册用户车辆</li>
          <li>公司内部员工车辆</li>
        </ul>
        <button class="btn btn-warning" data-target="#myPay" data-toggle="modal">付费</button>
      </div>
    </div>
    <div class="col-md-4 col-sm-6">
      <div class="plan wow bounceIn" data-wow-delay="0.9s">
        <div class="plan_title">
          <h3>免费车辆</h3>
        </div>
        <div class="plan_sub_title">
          <h2>0</h2>
          <small>半个小时</small> </div>
        <ul>
          <li>免费车辆包括</li>
          <li>政府部门机关车辆</li>
          <li>公司部门高层车辆</li>
        </ul>
        <button class="btn btn-warning" data-target="#myPay" data-toggle="modal">付费</button>
      </div>
    </div>
  </div>
</div>
<!-- contact section -->
<section id="contact">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 title">
        <h2>反馈</h2>
        <hr>
        <p>在这可以写下对我们的意见和建议</p>
      </div>
      <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 contact-form wow fadeInUp" data-wow-delay="0.9s">
        <form action="#" method="post">
          <input type="text" class="form-control" placeholder="Name">
          <input type="email" class="form-control" placeholder="Email">
          <textarea class="form-control" placeholder="Message" rows="6"></textarea>
          <input type="submit" class="form-control" value="SEND EMAIL">
        </form>
      </div>
    </div>
  </div>
</section>
<!-- google map section -->
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
