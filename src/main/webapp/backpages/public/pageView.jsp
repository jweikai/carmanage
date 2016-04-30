<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!-- 分页开始 -->
<nav>
	<form action="log_list.action" id="page-from">
		<s:hidden name="pageNum"></s:hidden>
		<s:hidden name="key"></s:hidden>
	</form>
	<style>
		ul.pager > li {
			display: inline-block;
		}
		ul.pager > li + li {
			margin-left: 15px;
		}
		ul.pager > li.disabled > a, ul.pager > li.active > a {
			cursor: default;
			text-decoration: none;
		}
		ul.pager > li.active > a {
			font-size: 16px;
			font-weight: bold;
			color: #222; 
		}
	</style>
  <ul id="pagev" class="pager" data-form="#page-from">
  	<li class="${currentPage==1?'disabled':'' }"><a data-page="1" href="javascript:;">首页</a></li>
    <li class="${currentPage-1<1?'disabled':'' }">
      <a href="javascript:;" data-page="${currentPage-1 }" aria-label="Previous">
        <span aria-hidden="true">上一页</span>
      </a> 
    </li>
    <s:iterator begin="%{beginPageIndex}" end="%{endPageIndex}" var="p">
    	<s:if test="#p==currentPage">
    		<li class="active"><a href="javascrip:;">${p }</a></li>	
    	</s:if>
    	<s:else>
    		<li><a href="javascript:;" data-page="${p }">${p }</a></li>	
    	</s:else>
    </s:iterator>
    <li class="${currentPage+1>pageCount?'disabled':'' }">
      <a data-page="${currentPage+1 }" href="javascript:;" aria-label="Next">
        <span aria-hidden="true">下一页</span>
      </a>
    </li>
    <li class="${currentPage>=pageCount?'disabled':'' }"><a data-page="${pageCount }" href="javascript:;">尾页</a></li>
  </ul>
</nav>
<!-- 分页结束  -->
<script>
$(function() {
	$("[data-page]").click(function() {
		if ( $(this).parent().hasClass('disabled') )	return ;
		var $pageNav = $("#pagev"),
			fdata = $pageNav.data("form");
		if ( fdata != null && fdata != '' ) {
			var $f = $(fdata);
			$f.find('[name=pageNum]').val($(this).data('page'));
			$f.submit();
		}else {
			window.location.href = "?pageNum=" + $(this).data("page");
		}
	});
});
</script>