<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>停车场 管理中心 - 网站管理员 </title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
 <%@include file="../public/header.jsp" %>
 <%@include file="../public/menu.jsp" %>
 <div id="dcMain">
   <!-- 当前位置 -->
<div id="urHere">停车场 管理中心<b>></b><strong>网站管理员</strong> </div>  
 <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px; ">
    <h3><a href="root_addUI.action" class="actionBtn">添加管理员</a>网站管理员</h3>
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic" style="font-size:12px;"> 
     <tr>
      <th width="30" align="center">编号</th>
      <th align="left">管理员名称</th>
      <th align="center">电话</th>
      <th align="center">操作</th>
     </tr>
     <s:iterator value="recordList" var="user">
      	<tr>
	      <td align="center">${user.userId}</td>
	      <td>${user.userName}</td>
	      <td align="center">${user.userTel }</td>
     	 <td align="center"><a href="root_editUI.action?userId=${user.userId }">编辑</a> | <a href="root_delete.action?userId=${user.userId }">删除</a></td>
     	</tr>
     </s:iterator>
         </table>
	</div>
	<%@ include file="../public/pageView.jsp" %>
 </div>
 <%@ include file="../public/footer.jsp" %>
<div class="clear"></div> </div>
</body>
</html>