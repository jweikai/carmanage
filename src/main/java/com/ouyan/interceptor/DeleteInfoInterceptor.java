package com.ouyan.interceptor;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.ouyan.model.Deleteinfo;
import com.ouyan.service.DeleteInfoService;

public class DeleteInfoInterceptor extends AbstractInterceptor{
	@Autowired
	private DeleteInfoService deleteService;
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		String actionName = invocation.getProxy().getActionName();
		Map<String, Object> map = invocation.getInvocationContext().getParameters();
		
		if ( actionName.contains("delete") ) {
			Deleteinfo deleteinfo = new Deleteinfo();
			deleteinfo.setDeleteContent(JSON.toJSONString(map));
			deleteinfo.setDeleteKind(actionName);
			deleteService.save(deleteinfo);
		}
		return invocation.invoke();
	}
	
}
