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
      <th align="center">生日</th>
      <th align="center">电话</th>
      <th align="center">车名</th>
      <th align="center">车牌号</th>
      <th align="center">操作</th>
     </tr>
     <s:iterator value="recordList" var="user">
      	<tr>
	      <td align="center">${user.userId}</td>
	      <td>${user.userName}</td>
	      <td align="center">${user.userBirthday }</td>
	      <td align="center">${user.userTel }</td>
	      <td align="center">${user.userCarName }</td>
	      <td align="center">${user.userCarBoardNum }</td> 
     	 <td align="center"><a href="user_editUI.action?id=${user.userId }">编辑</a> | <a href="user_delete.action?id=${user.userId }">删除</a></td>
     	</tr>
     </s:iterator>
         </table>
     </div>
     <%@ include file="../public/pageView.jsp" %>
 </div>
 <%@ include file="../public/footer.jsp" %>
<div class="clear"></div> </div>
<script type="text/javascript">
</script>
</body>
</html>