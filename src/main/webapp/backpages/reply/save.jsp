<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS 管理中心 - 添加主题</title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
 <%@include file="../public/header.jsp" %>
 <%@include file="../public/menu.jsp" %>
 <div id="dcMain">
   <!-- 当前位置 -->
<div id="urHere">BBS 管理中心<b>></b><strong>添加主题</strong> </div>   <div class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
            <h3><a href="posts_list.action" class="actionBtn">主题列表</a>添加主题</h3>
    <s:form action="posts_%{id == null?'add':'edit'}" method="post">
    	<s:hidden name="id"></s:hidden>
     <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
      <tr>
       <td width="80" align="right">分类名称</td>
       <td>
        <s:textfield type="text" name="name" value="" size="40" cssClass="inpMain"></s:textfield>
       </td>
      </tr>
      <tr>
       <td align="right">图片</td>
       <td>
        <input type="file" name="image" /> 
       </td>
      </tr>
      <tr>
       <td align="right">简单描述</td>
       <td>
        <s:textarea name="desciption" cols="60" rows="4" cssClass="textArea"></s:textarea>
       </td>
      </tr>
      <tr>
       <td align="right">排序</td>
       <td>
        <s:select list="{1,2,3,4,5,6,7,8,9,10}" name="top" headerKey="0" headerValue="0" theme="simple"></s:select>
       </td>
      </tr>
      <tr>
       <td></td>
       <td>
        <input name="submit" class="btn" type="submit" value="提交" />
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