<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bbs 管理中心</title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
<%@include file="public/header.jsp" %>
<%@include file="public/menu.jsp" %> 
 <div id="dcMain"> <!-- 当前位置 -->
<div id="urHere">bbs 管理中心</div>  <div id="index" class="mainBox" style="padding-top:18px;height:auto!important;height:550px;min-height:550px;">
    
   <div id="douApi"></div>
      <div class="indexBox">
    <div class="boxTitle">单页面快速管理</div>
    <ul class="ipage">
     <a href="javascript:void(0)">公司简介</a> 
     <a href="javascript:void(0)" class="child1">企业荣誉</a> 
     <a href="javascript:void(0)" class="child1">发展历程</a> 
     <a href="javascript:void(0)" class="child1">联系我们</a> 
     <a href="javascript:void(0)">人才招聘</a> 
     <a href="javascript:void(0)">营销网络</a> 
     	<div class="clear"></div>
    </ul>
   </div>
   <table width="100%" border="0" cellspacing="0" cellpadding="0" class="indexBoxTwo">
    <tr>
     <td width="65%" valign="top" class="pr">
      <div class="indexBox">
       <div class="boxTitle">网站基本信息</div>
       <ul>
        <table width="100%" border="0" cellspacing="0" cellpadding="7" class="tableBasic">
         <tr>
          <td width="120">单页面数：</td>
          <td><strong>6</strong></td>
          <td width="100">文章总数：</td>
          <td><strong>10</strong></td>
         </tr>
         <tr>
          <td>商品总数：</td>
          <td><strong>15</strong></td>
          <td>系统语言：</td>
          <td><strong>zh_cn</strong></td>
         </tr>
         <tr>
          <td>URL 重写：</td>
          <td><strong>关闭<a href="system.php" class="cueRed ml">（点击开启）</a> 
           </strong></td>
          <td>编码：</td>
          <td><strong>UTF-8</strong></td>
         </tr> 
        </table>
       </ul>
      </div>
     </td>
     <td valign="top" class="pl">
      <div class="indexBox">
       <div class="boxTitle">管理员  登录记录</div>
       <ul>
        <table width="100%" border="0" cellspacing="0" cellpadding="7" class="tableBasic">
         <tr>
          <th width="45%">IP地址</th>
          <th width="55%">操作时间</th>
         </tr>
                  <tr>
          <td align="center">127.0.0.1</td>
          <td align="center">2016-02-25 23:29:08</td>
         </tr>
                  <tr>
          <td align="center">127.0.0.1</td>
          <td align="center">2016-02-25 13:48:48</td>
         </tr>
                  <tr>
          <td align="center">127.0.0.1</td>
          <td align="center">2013-10-16 09:43:01</td>
         </tr>
                  <tr>
          <td align="center">127.0.0.1</td>
          <td align="center">2013-10-16 09:42:58</td>
         </tr>
                 </table>
       </ul>
      </div>
     </td>
    </tr>
   </table>
   <div class="indexBox">
    <div class="boxTitle">系统开发</div>
    <ul>
     <table width="100%" border="0" cellspacing="0" cellpadding="7" class="tableBasic">
      <tr>
       <td width="100px"> 贡献者： </td>
       <td>Jiaojia</td>
      </tr>
      <tr>
       <td> 系统使用协议： </td>
       <td><a href="javascript:;" target="_blank">个人作品</a></td>
      </tr>
     </table>
    </ul> 
   </div>
    
  </div>
 </div>
 <%@ include file="public/footer.jsp" %>
<div class="clear"></div> </div>
</body>
</html>