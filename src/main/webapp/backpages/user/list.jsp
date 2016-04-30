<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS 管理中心 - 用户列表 </title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
 <%@include file="../public/header.jsp" %>
 <%@include file="../public/menu.jsp" %>
 <div id="dcMain">
   <!-- 当前位置 -->
<div id="urHere">BBS 管理中心<b>></b><strong>用户列表</strong> </div>  
 <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px; ">
    <h3><a href="user_addUI.action" class="actionBtn">添加用户</a>用户列表</h3>
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic" style="font-size:12px;"> 
     <tr>
      <th width="30" align="center">编号</th>
      <th align="left">用户名称</th>
      <th align="center">E-mail地址</th>
      <th align="center">添加时间</th>
      <th align="center">最后登录时间</th>
      <th align="center">操作</th>
     </tr>
     <s:iterator value="#users" var="user">
      	<tr>
	      <td align="center">${user.id }</td>
	      <td>${user.name}</td>
	      <td align="center">${user.email }</td>
	      <td align="center">2016-02-25</td>
	      <td align="center">2016-02-26 20:53:17</td>
     	 <td align="center"><a class="originPassBtn" href="user_originPass.action?id=${user.id }">初使化密码</a> | <a href="user_editUI.action?id=${user.id }">编辑</a> | <a href="user_delete.action?id=${user.id }">删除</a></td>
     	</tr>
     </s:iterator>
         </table>
                       </div>
 </div>
 <%@ include file="../public/footer.jsp" %>
<div class="clear"></div> </div>
<script type="text/javascript">
$(function() {
	$(".originPassBtn").click(function() {
		$.ajax({
			type: 'POST',
			url: $(this).attr('href'),
			dataType: 'json',
			success: function(resp) {
				if ( resp.success ) {
					alert('修改密码为888888');
				}
			}
		})
		return false;
	});
});
</script>
</body>
</html>