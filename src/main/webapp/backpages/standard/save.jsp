<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
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
	<div id="urHere">停车场 管理中心<b>></b><strong>费用</strong> </div>   <div id="manager" class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
    <h3><a href="standard_list.action" class="actionBtn">返回列表</a>费用</h3>
            <s:form action="standard_%{standardId == null ? 'add' : 'edit' }" method="post">
            <s:hidden name="standardId"></s:hidden>
     <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
      <tr>
       <td width="100" align="right">普通车辆费用</td>
       <td>
        <s:textfield type="text" name="standardNormal" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>
      <tr>
       <td width="100" align="right">打折卡扣费用</td>
       <td>
        <s:textfield type="text" name="standardCard" size="40" cssClass="inpMain"></s:textfield>
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