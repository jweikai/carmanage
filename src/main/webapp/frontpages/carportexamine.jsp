<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
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
	<link rel="stylesheet" type="text/css" href="frontpages/css/carportexmaine.css"/>
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
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
	<!-- Modal -->
	<!--<div class="modal fade" id="myModal">
  			<div class="modal-dialog" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
       					 <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        				<h4 class="modal-title" id="myModalLabel">请选择高管姓名:</h4>
     				</div>
      			<div class="modal-body">
        			<table id="timsontable" class="table">
        					<tr>
        						<td>客户编号</td>
        						<td>客户名称</td>
        						<td>证件编号</td>
        						<td>证件类型</td>
        					</tr>
        					<tr class="personList_el">
        						<td>1</td>
        						<td>蒋文祥</td>
        						<td>012</td>
        						<td>其它证件</td>
        					</tr>
        					<tr class="personList_el">
        						<td>2</td>
        						<td>欧阳文兵</td>
        						<td>014</td>
        						<td>其它证件</td>
        					</tr>
        				</table>
        			<div class="text-center" >
        				<div id="pageCount" class="pageCount">
						    	<span>1</span>/
						    	<span>10</span>
						</div>
						
						
					</div>
        			<div class="text-center mt30" id="paginationMenu">
        				
						<button class="btn frame-button">上一页</button>		
						<button class="btn frame-button">下一页</button>	
						
					</div>
     			 </div>
      			<div class="modal-footer">
       				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       				<button type="button" class="btn btn-pri">确认</button>
      			</div>
    			</div>
  			</div>
		</div>-->
	<div id="notClickDiv"></div>
<!-- preloader section -->
<div class="preloader">
  <div class="sk-spinner sk-spinner-rotating-plane"></div>
</div>

<!-- navigation section -->
<div class="navbar navbar-default navbar-static-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span> </button>
      <a href="#" class="navbar-brand">Impulse</a></div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#announcement" class="smoothScroll">提示</a></li>
        <li><a href="#AreaA" class="smoothScroll">A区</a></li>
        <li><a href="#AreaB" class="smoothScroll">B区</a></li>
        <!--<li><a href="#team" class="smoothScroll">TEAM</a></li>
        <li><a href="#portfolio" class="smoothScroll">PORTFOLIO</a></li>-->
        <li><a href="#AreaC" class="smoothScroll">C区</a></li>
        <li><a href="#AreaD" class="smoothScroll">D区</a></li>
        <li><a href="#">返回</a></li>
      </ul>
    </div>
  </div>
</div>

<section id="announcement">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 title">
        <h4>查看车位</h4>
        <h2>说明</h2>
        <hr>
        <p>这是我们本停车场所能有的车位，您可以掌握本停车场的停车状况</p>
        <p>停车场分为A、B、C、D,可根据右上导航快速切换查看区域</p>
        <p>可用刷新按钮刷新信息</p>
      </div>
    </div>
  </div>
</section>
<section id="AreaA">
  <div class="container">
    <div class="row bg-black">
         	<a href="javascript:;" data-toggle='modal' data-target='#myModal' >
        		<i class="fa fa-car"></i>
        		<h3>A区</h3>
        		<button class="btn btn-primary">刷新</button>
        	</a>
    </div>
    <div class="table-responsive">
    	<table class="table table-hover">
    	<c:forEach items="${a }" var="carport" varStatus="status" step="1">
			<c:if test="${ status.index%5==0}">
				<tr>
			</c:if>
    			<td>${carport.carportLocation }</td>
   				<c:if test="${ status.index%5==4}">
    		</tr>
    </c:if>
    	</c:forEach>
    	</table>
    </div>
  </div>
</section>
<section id="AreaB">
	<div class="container">
        <div class="row bg-red">
        	<a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        		<i class="fa fa-car"></i>
          		<h3>B区</h3>
          		<button class="btn btn-primary">刷新</button>
        	</a> 
        </div>
        <div class="table-responsive">
    	<table class="table table-hover">
    	<c:forEach items="${b }" var="carportb" varStatus="statusb">
    		<c:if test="${statusb.index%5==0}">
    			<tr>
    		</c:if>
    			<td>${carportb.carportLocation}</td>
    		<c:if test="${statusb.index%5==4}">
    			</tr>
    		</c:if>
    	</c:forEach>
    	</table>
    </div>
	</div>
</section>
<section id="AreaC">
	<div class="container">
		<div class="row bg-red">
        <a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        	<i class="fa fa-car"></i>
          	<h3>C区</h3>
          	<button class="btn btn-primary">刷新</button>
        </a>
    </div>
    <div class="table-responsive">
    	<table class="table table-hover">
    		<c:forEach items="${c }" var="carportc" varStatus="statusc">
    		<c:if test="${statusc.index%5==0}">
    			<tr>
    		</c:if>
    			<td>${carportc.carportLocation}</td>
    		<c:if test="${statusc.index%5==4}">
    			</tr>
    		</c:if>
    		</c:forEach>
    	</table>
    </div>	
	</div>
	
</section>
<section id="AreaD">
	<div class="container">
		<div class="row bg-black">
        <a href="javascript:;" data-toggle='modal' data-target='#myModal'>
        	<i class="fa fa-car"></i>
          	<h3>D区</h3>	
          	<button class="btn btn-primary">刷新</button>
        </a>
    </div>
    <div class="table-responsive">
    	<table class="table table-hover">
    	<c:forEach items="${d }" var="carportd" varStatus="statusd">
    		<c:if test="${statusd.index%5==0}">
    			<tr>
    		</c:if>
    		
    			<td>${carportd.carportLocation}</td>
    		<c:if test="${statusd.index%5==4}">
    			</tr>
    		</c:if>	
    		
    	</c:forEach>
    	</table>
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
<script type="text/javascript">
	$.ajax({
		type:'post',
		url:'${pageContex.request.contextPath}/requestJson.action',
		contentType:'application/json;charset=utf-8',
		data:'',
		success:function(data){
			alert(data);
		}
	});
</script>
</body>
</html>
