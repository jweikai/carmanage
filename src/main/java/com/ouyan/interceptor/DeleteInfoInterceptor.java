package com.ouyan.interceptor;

import java.util.Map;

import org.springframework.http.HttpRequest;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class DeleteInfoInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		String actionName = invocation.getProxy().getActionName();
		Map<String, Object> map = invocation.getInvocationContext().getParameters();
		System.out.println(map);
		if ( actionName.contains("delete") ) {
			
		}
		return invocation.invoke();
	}
	
}
