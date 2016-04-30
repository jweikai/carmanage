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
<div id="urHere">停车场 管理中心<b>></b><strong>停车记录管理</strong> </div>  
 <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px; ">
    <h3><a href="car_addUI.action" class="actionBtn">添加停车记录管理</a>停车记录管理</h3>
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic" style="font-size:12px;"> 
     <tr>
      <th width="30" align="center">编号</th>
      <th align="left">车主</th>
      <th align="center">进入时间</th>
      <th align="center">退出时间</th>
      <th align="center">状态</th>
      <th align="center">操作</th>
     </tr>
     <s:iterator value="#cars" var="c">
      	<tr>
	      <td align="center">${c.carAccessId}</td>
	      <td align="center">${c.userinfo.userId }</td>
	      <td align="center">${c.carAccessEnter }</td>
	      <td align="center">${c.carAccessExit }</td>
		<td align="center">
		${c.carAccessExit == null ? '正在停车':'历史停车' }
		</td>	      
     	 <td align="center"><a href="car_catOut.action?carAccessId=${c.carAccessId }">出车位</a> | <a href="car_delete.action?carAccessId=${c.carAccessId }">删除</a></td>
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