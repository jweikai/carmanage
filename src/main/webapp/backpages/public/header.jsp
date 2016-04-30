<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div id="dcHead"> 
 <div id="head"> 
  <div class="logo"><a href="index.action"><img src="${pageContext.request.contextPath}/backpages/images/dclogo.gif" alt="logo"></a></div>
  <div class="nav">
   <ul class="navRight">
    <li class="M noLeft"><a href="JavaScript:void(0);">您好，${LOGIN_USER_SESSION_KEY.name }</a>  
     <div class="drop mUser">
      <a href="manager.php?rec=edit&id=1">编辑我的个人资料</a>
     </div>
    </li>
    <li><a href="${pageContext.request.contextPath}/index.action">返回前台</a></li>
    <li class="noRight"><a href="logout.action">退出</a></li>
   </ul>
  </div>
 </div>
</div>
<!-- dcHead 结束 -->