<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS 管理中心 - 主题分类 </title>
<meta name="Copyright" content="Douco Design." />
<%@ include file="../public/ref.jsp" %>
</head>
<body>
<div id="dcWrap">
  <%@include file="../public/header.jsp" %>
 <%@include file="../public/menu.jsp" %>
 <div id="dcMain">
   <!-- 当前位置 -->
<div id="urHere">BBS 管理中心<b>></b><strong>主题分类</strong> </div>   <div class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
        <h3><a href="topic_addUI.action" class="actionBtn add">添加主题</a>主题分类</h3>
    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
     <tr>
        <th width="120" align="left">主题名称</th>
        <th width="200">简单描述</th>
       <th width="120" align="center">图片位置</th>
       <th width="100" align="center">创建时间</th>
       <th width="60" align="center">排序</th>
        <th width="200" align="center">操作</th>
      </tr>
      <s:iterator value="topics" var="topic" status="st">
        <tr>
	        <td align="left">${topic.name }</td>
	        <td>${topic.desciption }</td>
	        <td>${topic.image }</td>
	        <td align="center">${topic.createTime }</td>
	        <td>${topic.orders }</td>
	        <td class="js-order-num" align="center" data-id="${topic.id }">${st.first ? '':'<a class="js-up-btn" href="topic_up.action">up</a> |' } ${st.last ? '' : '<a class="js-down-btn" href="topic_down.action">down</a> |' } <a href="topic_editUI.action?id=${topic.id }">编辑</a> | <a href="topic_delete.action?id=${topic.id }">删除</a></td>
      	</tr>
      </s:iterator>
     </table>
    </div>
 </div>
<%@ include file="../public/footer.jsp" %>
<div class="clear"></div> </div>
<script type="text/javascript">
	$(function() {
		$('.js-up-btn').click(function() {
			changeOrders($(this), true);
			return false;
		});
		$('.js-down-btn').click(function() {
			changeOrders($(this), false);
			return false;
		});
		function changeOrders($this, isup) {
			var obj = null;
			if ( isup ) {
				obj = $this.parents('tr').prev().find('.js-order-num').data('id');
			}else {
				obj = $this.parents('tr').next().find('.js-order-num').data('id');
			}			
			var url = ['topic_', isup ? 'up':'down', '.action'];
			var id = $this.parent().data('id'); 
			$.ajax({
				url: url.join(''),
				type: 'POST',
				data: {
					sibId: obj,
					id: id 
				},
				success: function(resp) {
					window.location.reload();
				}
			});
		}
	});
</script>
</body>
</html>