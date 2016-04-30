<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS 管理中心 - 操作记录 </title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
 <%@include file="../public/header.jsp" %>
 <%@include file="../public/menu.jsp" %>
 <div id="dcMain">
   <!-- 当前位置 -->
<div id="urHere">DouPHP 管理中心<b>></b><strong>操作记录</strong> </div>   <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
    <h3>操作记录</h3>
    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
     <tr>
      <th width="30" align="center">编号</th>
      <th width="150" align="left">操作时间</th>
      <th width="100" align="center">操作者</th>
      <th width="120" align="center">访问路径</th>
      <th align="left">操作记录</th>
      <th width="100" align="center">IP地址</th>
     </tr>
     <s:iterator value="recordList" var="e">
	     <tr>
	      <td align="center">${e.id }</td>
	      <td>${e.time }</td>
	      <td align="center">${e.userRealName }</td>
	      <td align="center">${e.url }</td>
	      <td align="left">${e.doing }</td>
	      <td align="center">${e.ip }</td>
	     </tr>
     </s:iterator>
    </table>
    <%@ include file="../public/pageView.jsp" %>
 </div>
 <%@ include file="../public/footer.jsp" %>
<div class="clear"></div> </div>
</div>
</body>
</html>