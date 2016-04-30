package com.ouyan.interceptor;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.ouyan.Const;
import com.ouyan.model.Userinfo;

//
//import java.lang.reflect.Method;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.struts2.ServletActionContext;
//
//import com.jj.Const;
//import com.jj.model.vo.UserVO;
//import com.opensymphony.xwork2.ActionInvocation;
//import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
//
///**
// * @author hadoop
// *
// */
public class SessionInterceptor extends AbstractInterceptor{
//	
//	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String nameSpace = invocation.getProxy().getNamespace();
		Method method = null;
		try {
			method = invocation.getAction().getClass().getDeclaredMethod(invocation.getProxy().getMethod());
		}catch (Exception e) {
			request.setAttribute("error", "找不到内容了");
			return "errorInfo";
		}
		String actionName = invocation.getProxy().getActionName();
		if ( actionName.toLowerCase().contains("enter") ) {
			return invocation.invoke();
		}
		Userinfo user = (Userinfo) request.getSession().getAttribute(Const.LOGIN_USER_SESSION_KEY);		
		if ( user == null ) {
			if ( "/admin".equals(nameSpace) ) {
				return "adminLogin";
			}
		}
		return invocation.invoke();
	}
}
