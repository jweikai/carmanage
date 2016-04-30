<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>注册</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
		<link href="frontpages/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="frontpages/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="frontpages/css/jquery.js"></script>
		<script type="text/javascript" src="frontpages/css/bootstrap.min.js"></script>
		<script type="text/javascript" >
			var month_big = new Array("1", "3", "5", "7", "8", "10", "12"); //包含所有大月的数组
			var month_small = new Array("4", "6", "9", "11"); //包含所有小月的数组 
			//页面加载时调用的初始化select控件的option的函数
			function init() {
				var select_year = document.getElementById("year"); //获取id为"year"的下拉列表框
				var select_month = document.getElementById("month"); //获取id为"month"的下拉列表框
				var select_day = document.getElementById("day"); //获取id为"day"的下拉列表框
				//将年份选项初始化，从1980到2000
				for (var i = 1970; i <= 2000; i++) {
					select_year_option = new Option(i, i);
					select_year.options.add(select_year_option);
				}
				//将月份选项初始化，从1到12
				for (var i = 1; i <= 12; i++) {
					select_month_option = new Option(i, i);
					select_month.options.add(select_month_option);
				}
				//调用swap_day函数初始化日期  
				swap_day();
			}
			//判断数组array中是否包含元素obj的函数，包含则返回true，不包含则返回false
			function array_contain(array, obj) {
				for (var i = 0; i < array.length; i++) {
					if (array[i] === obj) {
						return true;
					}
				}
				return false;
			}
			//根据年份和月份调整日期的函数
			function swap_day() {
				var select_year = document.getElementById("year"); //获取id为"year"的下拉列表框
				var select_month = document.getElementById("month"); //获取id为"month"的下拉列表框
				var select_day = document.getElementById("day"); //获取id为"day"的下拉列表框
				select_day.options.length = 0; //在调整前先清空日期选项里面的原有选项
				var month = select_month.options[select_month.selectedIndex].value; //获取被选中的月份month
				//如果month被包含在month_big数组中，即被选中月份是大月，则将日期选项初始化为31天
				if (array_contain(month_big, month)) {
					for (var i = 1; i <= 31; i++) {
						select_day_option = new Option(i, i);
						select_day.options.add(select_day_option);
					}
				}
				//如果month被包含在month_small数组中，即被选中月份是小月，则将日期选项初始化为30天
				else if (array_contain(month_small, month)) {
					for (var i = 1; i <= 30; i++) {
						select_day_option = new Option(i, i);
						select_day.options.add(select_day_option);
					}
				}
				//如果month为2，即被选中的月份是2月，则调用initFeb()函数来初始化日期选项
				else {
					initFeb();
				}
			}
			//判断年份year是否为闰年，是闰年则返回true，否则返回false
			function isLeapYear(year) {
				var a = year % 4;
				var b = year % 100;
				var c = year % 400;
				if (((a == 0) && (b != 0)) || (c == 0)) {
					return true;
				}
				return false;
			}
			//根据年份是否闰年来初始化二月的日期选项
			function initFeb() {
				var select_year = document.getElementById("year"); //获取id为"year"的下拉列表框
				var select_day = document.getElementById("day"); //获取id为"day"的下拉列表框
				var year = parseInt(select_year.options[select_year.selectedIndex].value); //获取被选中的年份并转换成Int
				//如果是闰年，则将日期选项初始化为29天
				if (isLeapYear(year)) {
					for (var i = 1; i <= 29; i++) {
						select_day_option = new Option(i, i);
						select_day.options.add(select_day_option);
					}
				}
				//如果不是闰年，则将日期选项初始化为28天
				else {
					for (var i = 1; i <= 28; i++) {
						select_day_option = new Option(i, i);
						select_day.options.add(select_day_option);
					}
				}
			}
			//验证用户注册信息
			function chkreginfo(form, mark, edit) {
				if (mark == 0 || mark == "all") {
					if (form.username.value == "") {
						nameRemind.innerHTML = "请输入用户名";
						form.username.style.backgroundColor = "#FF0000";
						return false;
					} else {
						$.ajax({
							type: 'post',
							url: '', //action url
							data: {
								name: form.username.value
							},
							dataType: 'json',
							success: function(resp) { //resp json 对象
							}
						})
					}
				}
				if (mark == 1 || mark == "all") {
					if (form.userpwd.value == "") {
						pwdRemind.innerHTML = "请输入密码";
						form.userpwd.style.backgroundColor = "#FF0000";
						return false;
					} else if (!checkregpwd(form.userpwd.value)) {
						pwdRemind.innerHTML = "密码格式不正确，需要开头为字母，总共长度为6-18位";
						form.userpwd.style.backgroundColor = "#FF0000";
						return false;
					} else {
						pwdRemind.innerHTML = "";
						form.userpwd.style.backgroundColor = "#FFFFFF";
					}
				}
				if (mark == 2 || mark == "all") {
					if (form.userCarname.value == "") {
						carnameRemind.innerHTML = "请输入车的型号";
						form.userCarname.style.backgroundColor = "#FF0000";
						return false;
					} else {
						carnameRemind.innerHTML = "";
						form.userCarname.style.backgroundColor = "#FFFFFF";
					}
				}
				if (mark == 3 || mark == "all") {
					if (form.usercarboardNum.value == "") {
						carboardRemind.innerHTML = "请输入车牌号码";
						form.usercarboardNum.style.backgroundColor = "#FF0000";
						return false;
					} else if (!checkboardname(form.usercarboardNum.value)) {
						carboardRemind.innerHTML = "车牌号码格式不对";
					} else {
						carboardRemind.innerHTML = "";
						form.usercarboardNum.style.backgroundColor = "#FFFFFF";
					}
				}
				if (mark == 4 || mark == "all") {
					if (form.usertel.value == "") {
						
					} else if (!checkregtel(form.usertel.value)) {
						telRemind.innerHTML = "手机号码输入不对";
					} else {
						telRemind.innerHTML = "";
						form.usertel.style.backgroundColor = "#FFFFFF";
					}
				}
			}

			function checkregpwd(reg) {
				var str = reg;
				var Expression = /^[a-zA-Z]\w{5,17}$/; //以字母开头，长度在6-18之间，只能包含字符、数字和下划线。
				var objExp = new RegExp(Expression);
				if (objExp.test(str) == true) {
					return true;
				} else {
					return false;
				}
			}

			function checkboardname(reg) {
				var str = reg;
				var Expression = /^[A-Z][A-Z0-9]{2}\d{3}$/; 
				var objExp = new RegExp(Expression);
				if (objExp.test(str) == true) {
					return true;
				} else {
					return false;
				}
			}

			function checkregtel(reg) {
				var str = reg;
				var Expression = /^13(\d{9})$|^15[89](\d{8})$/;
				var objExp = new RegExp(Expression);
				if (objExp.test(str) == true) {
					return true;
				} else {
					return false;
				}
			}
		</script>
	</head>

	<body onload="init()">

		<!----------start sign_up----------->
		<div class="sign_up">
			<div>
				<h1>用户注册</h1>
			</div>
			<div>
				<!----------start form----------->
				<form name="form_reg" class="sign" action="${pageContext.request.contextPath }/re.action" method="post" >
					<table>
						<tr>
							<td>
								<h2>必填信息</h2>
								<hr />
							</td>
						</tr>
						<tr>
							<td>
								用户名：
								<input type="text" name="userName"  />
								<div id="nameRemind" style="color:#FF0000 ;"></div>
								<hr />
							</td>
						</tr>
						<tr>
							<td>
								密&nbsp;&nbsp;码：
								<input type="password" name="userPassword" />
								<div id="pwdRemind" style="color:#FF0000 ;"></div>
								<hr />
							</td>
						</tr>
						<tr>
							<td>
								性别：男
								<input type="radio" name="userSex" checked="checked" value="0" /> 女
								<input type="radio" name="userSex" value="1" />
								<hr />
							</td>
						</tr>
						<tr>
							<td>
								所&nbsp;有&nbsp;车&nbsp;名：
								<input type="text" name="userCarName" />
								<div id="carnameRemind" style="color:#FF0000 ;"></div>
							</td>
						</tr>
						<tr>
							<td>
								所有车牌号：
								<input type="text" name="userCarBoardNum" />
								<div id="carboardRemind" style="color:#FF0000 ;"></div>
							</td>
						</tr>
						<tr>
							<td>
								生&nbsp;&nbsp;&nbsp;日：
								<select id="year" name="userbiryear" onchange="swap_day()"></select>年
								<select id="month" name="userbirmonth" onchange="swap_day()"></select>月
								<select id="day" name="userbirday"></select>日
							</td>
						</tr>
						<tr>
							<td>
								<h2>可填信息</h2>
								<hr />
							</td>

						</tr>
						<tr>
							<td>
								手机号码：
								<input type="text" name="userTel" />
								<div id="telRemind" style="color:#FF0000 ;"></div>
							</td>
						</tr>
					</table>
					<hr />
					<div align="center">
						<input type="submit" class="btn btn-success" align="center" value="注册用户" />
					</div>
				</form>
			</div>
			<!----------end form----------->
		</div>
	</body>

</html>
