<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS 管理中心 - 网站管理员 </title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
  <%@include file="../public/header.jsp" %>
 	<%@include file="../public/menu.jsp" %>	
 <div id="dcMain">
   <!-- 当前位置 -->
	<div id="urHere">BBS 管理中心<b>></b><strong>网站管理员</strong> </div>   <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
    <h3><a href="root_list.action" class="actionBtn">返回列表</a>网站管理员</h3>
            <s:form action="root_%{id == null ? 'add' : 'edit' }" method="post">
            <s:hidden name="id"></s:hidden>
     <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
      <tr>
       <td width="100" align="right">管理员名称</td>
       <td>
        <s:textfield type="text" name="name" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>
      <tr>
       <td width="100" align="right">E-mail地址</td>
       <td>
        <s:textfield type="text" name="email" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>
      <tr>
       <td width="100" align="right">是否为管理员</td>
       <td>
        <input type="checkbox" name="isAdmin" ${isAdmin ? 'checked':'' } /> 
       </td>
      </tr>
      <s:if test="%{id == null}">
      <tr>
       <td align="right">密码</td>
       <td>
        <s:password name="pass" size="40" cssClass="inpMain"></s:password>
       </td>
      </tr>
      </s:if>
      <tr>
       <td></td>
       <td>
        <s:submit name="submit" cssClass="btn" value="提交"></s:submit>
       </td>
      </tr>
     </table>
    </s:form>
                   </div>
 </div>
 <%@ include file="../public/footer.jsp" %>
<div class="clear"></div> </div>
</body>
</html>