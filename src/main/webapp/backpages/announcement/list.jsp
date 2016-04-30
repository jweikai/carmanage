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
<div id="urHere">停车场 管理中心<b>></b><strong>公告信息管理</strong> </div>  
 <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px; ">
    <h3><a href="anno_addUI.action" class="actionBtn">添加公告信息管理</a>公告信息管理</h3>
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic" style="font-size:12px;"> 
     <tr>
      <th width="30" align="center">编号</th>
      <th align="left">标题</th>
      <th align="center">内容</th>
      <th align="center">操作</th>
     </tr>
     <s:iterator value="#annos" var="s">
      	<tr>
	      <td align="center">${s.announcementId}</td>
	      <td align="center">${s.announcementTilte }</td>
	      <td align="center">${s.announcementContent }</td>
     	 <td align="center"><a href="anno_editUI.action?announcementId=${s.announcementId }">编辑</a> | <a href="anno_delete.action?announcementId=${s.announcementId }">删除</a></td>
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