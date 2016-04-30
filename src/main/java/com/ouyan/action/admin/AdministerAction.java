package com.ouyan.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ouyan.action.base.BaseAction;
import com.ouyan.model.Userinfo;
import com.ouyan.page.PageBean;
import com.ouyan.service.UserinfoService;
import com.ouyan.utils.QueryHelper;

@Controller
@Scope("prototype")
public class AdministerAction extends BaseAction<Userinfo>{
	@Autowired
	private UserinfoService adminService;
	public String list() {
		QueryHelper helper = new QueryHelper(Userinfo.class, "u").addCondition("u.userJurisdiction=?", 1);
		PageBean pageBean = adminService.getPageBean(pageNum, pageSize, helper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list";
	}
	
	public String editUI() {
		Userinfo user = adminService.getById(model.getUserId());
		ActionContext.getContext().getValueStack().push(user);
		return "saveUI";
	}
	
	public String addUI() {
		return "saveUI";
	}
	public String edit() {
		Userinfo user = adminService.getById(model.getUserId());		
		user.setUserName(model.getUserName());
		user.setUserBirthday(model.getUserBirthday());
		user.setUserTel(model.getUserTel());
		user.setUserCarName(model.getUserCarName());
		user.setUserCarBoardNum(model.getUserCarBoardNum());
		user.setUserJurisdiction(1);
		adminService.update(user);
		return "toList";
	}
	public String add() {
		adminService.save(model);
		return "toList"; 
	} 
	public String delete() {
		adminService.delete(model.getUserId());
		return "toList";
	}
}
