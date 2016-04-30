<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台登陆</title>
<script src="${pageContext.request.contextPath}/backpages/js/jquery.min.js" type="text/javascript" ></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/backpages/css/register.css"/>
</head>
<body>

<div class='signup_container'>
	<h1 class='signup_title'>用户登陆</h1>
	<img src='${pageContext.request.contextPath}/backpages/images/people.png' width="130" height="130" data-src='${pageContext.request.contextPath}/backpages/images/people.png' id='admin' />
	<div id="signup_forms" class="signup_forms clearfix"> 
		<form class="signup_form_form" id="signup_form" method="post" action="" data-secure-ajax-action="">
			<div class="form_row first_row">
				<label for="signup_email">请输入用户名</label><div id="errorTip" style="display: none;" class='tip error'></div>
				<input type="text" name="userName" placeholder="请输入用户名" id="signup_name" data-required="required">
			</div>
			<div class="form_row">
				<label for="signup_password">请输入密码</label><!-- <div class='tip error'></div> -->
				<input type="password" name="userPassword" placeholder="请输入密码" id="signup_password" data-required="required">
			</div>
		</form>
	</div>
	<div class="login-btn-set"> 
		<!-- <div class='rem'>记住我</div> --> 
		<a href='javascript:void(0)' class='login-btn'></a>
	</div>
	<p class='copyright'>版权所有</p>
</div>

</body>

<script type="text/javascript">

$(function(){

    $('.rem').click(function(){
        $(this).toggleClass('selected');
    });
    
    $("#signup_form").submit(function() {
    	$("#errorTip").hide();
    	$.ajax({
    		url: 'enter.action',
    		type: 'POST',
    		data: $(this).serialize(),
    		dataType: 'json',
    		success: function(resp) {
    			if ( resp.success ) {
    				window.location.href = 'index.action';
    			}else {
    				$("#errorTip").show();
    			}
    		}
    	});
    	return false;
    }); 
    $(".login-btn").click(function() {    	
    	$("#signup_form").submit();
    });        
    $("#signup_password").keydown(function(e) {
    	if (e.keyCode == 13 ) {
    		$(".login-btn").trigger('click');
    	}
    });   
})


</script>

</html>