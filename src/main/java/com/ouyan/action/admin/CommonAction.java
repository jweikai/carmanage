package com.ouyan.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ouyan.Const;
import com.ouyan.action.base.BaseAction;
import com.ouyan.model.Userinfo;
import com.ouyan.page.Json;
import com.ouyan.service.UserinfoService;

@Controller
@Scope("prototype")
public class CommonAction extends BaseAction<Userinfo>{
	@Autowired
	private UserinfoService userService;
	public String login() {
		Userinfo user = getCurrentUser();
		if ( user != null ) {
			return "reIndex";
		}
		return "login";
	}
	public void enterSearch() {
		Json json = new Json();
		Userinfo user = userService.findByName(model.getUserName());
		Userinfo userVO = null;
		if ( user != null ) {
			json.setSuccess(true);
		}
		json.setObj(userVO);
		writeJson(json);
	}
	
	public void enter() {
		Json json = new Json();
		if ( getCurrentUser() != null ) {
			json.setSuccess(true);
		}else {
			Userinfo user = userService.login(model.getUserName(), model.getUserPassword());
			if ( user != null ) {
				json.setSuccess(true);				
				getSession().setAttribute(Const.LOGIN_USER_SESSION_KEY, user);
			}else {
				json.setSuccess(false);
				json.setMsg("帐号或密码错误");
			}
		}
		writeJson(json);
	}	
	public String logout() {
		getSession().removeAttribute(Const.LOGIN_USER_SESSION_KEY);
		return "logout";
	}
	public String index() {
		return "index";
	}
}
