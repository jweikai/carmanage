<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>预订/取消车位</title>
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
	<link rel="stylesheet" type="text/css" href="frontpages/css/reservation.css"/>
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
      <a href="#" class="navbar-brand">${User.username }</a></div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <!--<li><a href="#home" class="smoothScroll">主页</a></li>-->
        <li><a href="" class="smoothScroll">返回</a></li>
      </ul>
    </div>
  </div>
</div>

<section>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-4 title">
        	<ul class="nav nav-stacked">
        		<li class="active">
        			<a href="#reservse" data-toggle = "tab">预订</a>
        		</li>
        		<li>
        			<a href="#cancel" data-toggle = "tab">取消</a>
        		</li>
        	</ul>
      </div>
      <div class="col-md-8 col-sm-8 tab-content">
      	<div class="tab-pane active" id="reservse">
      		<div class="row">
    				<div class="row bg-black">
         			<a href="javascript:;" data-toggle='modal' data-target='#myModal' >
        			<i class="fa fa-car"></i>
        			<h3>A区</h3>
        			<button class="btn btn-primary">预订</button>
        			</a>
   					 </div>
    				<div class="table-responsive">
    				<table class="table table-hover">
    				<c:forEach items="${CarportsA }" var="carport" varStatus="status" step="1">
					<c:if test="${ status.index%5==0}">
						<tr>
					</c:if>
    				<td>${carport.carportlocation }</td>
   					 <c:if test="${ status.index%5==4}">
    				</tr>
    				</c:if>
    				</c:forEach>
    				</table>
    				</div>
  				</div>
        	<div class="row">
       			 <div class="row bg-red">
        				<a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        				<i class="fa fa-car"></i>
          				<h3>B区</h3>
          				<button class="btn btn-primary">预订</button>
        				</a> 
        		</div>
        		<div class="table-responsive">
    			<table class="table table-hover">
    				<c:forEach items="${CarportsB }" var="carportb" varStatus="statusb">
    				<c:if test="${statusb.index%5==0}">
    					<tr>
    				</c:if>
    				<td>${carportb.carportlocation}</td>
    				<c:if test="${statusb.index%5==4}">
    					</tr>
    				</c:if>
    				</c:forEach>
    			</table>
    			</div>
			</div>
        	<div class="row">
				<div class="row bg-red">
        		<a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        			<i class="fa fa-car"></i>
          			<h3>C区</h3>
          			<button class="btn btn-primary">预订</button>
        		</a>
    			</div>
    			<div class="table-responsive">
    				<table class="table table-hover">
    				<c:forEach items="${CarportsC }" var="carportc" varStatus="statusc">
    				<c:if test="${statusc.index%5==0}">
    					<tr>
    				</c:if>
    				<td>${carportc.carportlocation}</td>
    				<c:if test="${statusc.index%5==4}">
    					</tr>
    				</c:if>
    				</c:forEach>
    				</table>
    			</div>	
			</div>
        	<div class="row">
				<div class="row bg-black">
        			<a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        			<i class="fa fa-car"></i>
          			<h3>D区</h3>	
          			<button class="btn btn-primary">预订</button>
        			</a>
    			</div>
    			<div class="table-responsive">
    				<table class="table table-hover">
    				<c:forEach items="${CarportsD }" var="carportd" varStatus="statusd">
    				<c:if test="${statusd.index%5==0}">
    					<tr>
    				</c:if>
    		
    				<td>${carportd.carportlocation}</td>
    				<c:if test="${statusd.index%5==4}">
    					</tr>
    				</c:if>	
    				</c:forEach>
    				</table>
    			</div>
			</div>
      	</div>
        <div class="tab-pane" id="cancel">
      		<div class="row">
    				<div class="row bg-black">
         			<a href="javascript:;" data-toggle='modal' data-target='#myModal' >
        			<i class="fa fa-car"></i>
        			<h3>A区</h3>
        			<button class="btn btn-primary">取消</button>
        			</a>
   					 </div>
    				<div class="table-responsive">
    				<table class="table table-hover">
    				<c:forEach items="${CarportsA }" var="carport" varStatus="status" step="1">
					<c:if test="${ status.index%5==0}">
						<tr>
					</c:if>
    				<td>${carport.carportlocation }</td>
   					 <c:if test="${ status.index%5==4}">
    				</tr>
    				</c:if>
    				</c:forEach>
    				</table>
    				</div>
  				</div>
        	<div class="row">
       			 <div class="row bg-red">
        				<a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        				<i class="fa fa-car"></i>
          				<h3>B区</h3>
          				<button class="btn btn-primary">取消</button>
        				</a> 
        		</div>
        		<div class="table-responsive">
    			<table class="table table-hover">
    				<c:forEach items="${CarportsB }" var="carportb" varStatus="statusb">
    				<c:if test="${statusb.index%5==0}">
    					<tr>
    				</c:if>
    				<td>${carportb.carportlocation}</td>
    				<c:if test="${statusb.index%5==4}">
    					</tr>
    				</c:if>
    				</c:forEach>
    			</table>
    			</div>
			</div>
        	<div class="row">
				<div class="row bg-red">
        		<a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        			<i class="fa fa-car"></i>
          			<h3>C区</h3>
          			<button class="btn btn-primary">取消</button>
        		</a>
    			</div>
    			<div class="table-responsive">
    				<table class="table table-hover">
    				<c:forEach items="${CarportsC }" var="carportc" varStatus="statusc">
    				<c:if test="${statusc.index%5==0}">
    					<tr>
    				</c:if>
    				<td>${carportc.carportlocation}</td>
    				<c:if test="${statusc.index%5==4}">
    					</tr>
    				</c:if>
    				</c:forEach>
    				</table>
    			</div>	
			</div>
        	<div class="row">
				<div class="row bg-black">
        			<a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        			<i class="fa fa-car"></i>
          			<h3>D区</h3>	
          			<button class="btn btn-primary">取消</button>
        			</a>
    			</div>
    			<div class="table-responsive">
    				<table class="table table-hover">
    				<c:forEach items="${CarportsD }" var="carportd" varStatus="statusd">
    				<c:if test="${statusd.index%5==0}">
    					<tr>
    				</c:if>
    		
    				<td>${carportd.carportlocation}</td>
    				<c:if test="${statusd.index%5==4}">
    					</tr>
    				</c:if>	
    				</c:forEach>
    				</table>
    			</div>
			</div>
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