<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>停车场 管理中心 - 操作记录 </title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
 <%@include file="../public/header.jsp" %>
 <%@include file="../public/menu.jsp" %>
 <div id="dcMain">
   <!-- 当前位置 -->
<div id="urHere">停车场 管理中心<b>></b><strong>删除操作记录</strong> </div>   <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
    <h3>删除操作记录</h3>
    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
     <tr>
      <th width="30" align="center">编号</th>
      <th width="150" align="left">删除类型</th>
      <th width="100" align="center">删除内容</th>
     </tr>
     <s:iterator value="recordList" var="info">
	     <tr>
	      <td align="center">${info.deleteId }</td>
	      <td>${info.deleteKind}</td>
	      <td align="center">${info.deleteContent}</td>
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