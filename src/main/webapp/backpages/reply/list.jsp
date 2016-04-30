<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS 管理中心 - 回复列表 </title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/backpages/js/jquery.autoTextarea.js"></script>
</head>
<body>
<div id="dcWrap">
  <%@include file="../public/header.jsp" %>
 <%@include file="../public/menu.jsp" %>
 <div id="dcMain">
   <!-- 当前位置 -->
<div id="urHere">BBS 管理中心<b>></b><strong>回复列表</strong> </div>   <div class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
        <h3>商品列表</h3>
    <div class="filter">
    <form action="product.php" method="post">
     <select name="cat_id">
      <option value="0">未分类</option>
       <option value="1"> 电子数码</option>
             <option value="4">- 智能手机</option>
             <option value="5">- 平板电脑</option>
             <option value="2"> 家居百货</option>
             <option value="3"> 母婴用品</option>
      </select>
     <input name="keyword" type="text" class="inpMain" value="" size="20" />
     <input name="submit" class="btnGray" type="submit" value="筛选" />
    </form>
    <span>
    <a class="btnGray" href="product.php?rec=re_thumb">更新商品缩略图</a>
        <a class="btnGray" href="product.php?rec=sort">开始筛选首页商品</a>
        </span>
    </div>
        <div id="list">
    <form name="action" method="post" action="product.php?rec=action">
    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
      <tr>
        <th width="22" align="center"><input name='chkall' type='checkbox' id='chkall' onclick='selectcheckbox(this.form)' value='check'></th>
        <th width="40" align="center">编号</th>
        <th align="left">商品名称</th>
        <th width="150" align="center">商品分类</th>
       <th width="80" align="center">添加日期</th>
        <th width="80" align="center">操作</th>
      </tr>
    <s:iterator value="replies" var="reply">
      <tr>
        <td align="center"><input type="checkbox" name="checkbox[]" value="15" /></td>
        <td align="center">15</td>
        <td><a href="product.php?rec=edit&id=15">亨氏Heinz金装粒粒面鳕鱼胡萝卜面</a></td>
        <td align="center"><a href="product.php?cat_id=3">母婴用品</a></td>
        <td align="center">2013-06-26</td>
        <td align="center">
                  <a href="product.php?rec=edit&id=15">编辑</a> | <a href="product.php?rec=del&id=15">删除</a>
        </td>
      </tr>
    </s:iterator>
    </table>
    <div class="action">
     <select name="action" onchange="douAction()">
      <option value="0">请选择...</option>
      <option value="del_all">删除</option>
      <option value="category_move">移动分类至</option>
     </select>
     <input name="submit" class="btn" type="submit" value="执行" />
    </div>
    </form>
    </div>
    <div class="clear"></div>
    <%@ include file="../public/pageView.jsp" %>
 </div>
  <%@ include file="../public/footer.jsp" %>
<div class="clear"></div> </div>
</div>
<script type="text/javascript">

onload = function()
{
 document.forms['action'].reset();
}

function douAction()
{
 var frm = document.forms['action'];
 frm.elements['new_cat_id'].style.display = frm.elements['action'].value == 'category_move' ? '' : 'none';
}

</script>
</body>
</html>
