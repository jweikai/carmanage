<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>停车场 管理中心 - 添加用户 </title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
  <%@include file="../public/header.jsp" %>
 	<%@include file="../public/menu.jsp" %>	
 <div id="dcMain">
   <!-- 当前位置 -->
	<div id="urHere">停车场 管理中心<b>></b><strong>添加用户</strong> </div>   <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
    <h3><a href="user_list.action" class="actionBtn">返回列表</a>添加用户</h3>
            <s:form action="user_%{userId == null ? 'add' : 'edit' }" method="post">
            <s:hidden name="userId"></s:hidden>
            <s:hidden name="userJurisdiction" value="0"></s:hidden>
     <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
      <tr>
       <td width="100" align="right">用户名称</td>
       <td>
        <s:textfield type="text" name="userName" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>      
      <s:if test="%{userId == null}">
      <tr>
       <td align="right">密码</td>
       <td>
        <s:password name="userPassword" size="40" cssClass="inpMain"></s:password>
       </td>
      </tr>
      </s:if>
      <tr>
       <td width="100" align="right">用户生日</td>
       <td>
        <s:textfield type="text" name="userBirthday" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>      
      <tr>
       <td width="100" align="right">用户电话</td>
       <td>
        <s:textfield type="text" name="userTel" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>
      <tr>
       <td width="100" align="right">车名</td>
       <td>
        <s:textfield type="text" name="userCarName" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>
      <tr>
       <td width="100" align="right">车牌号</td>
       <td>
        <s:textfield type="text" name="userCarBoardNum" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>
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