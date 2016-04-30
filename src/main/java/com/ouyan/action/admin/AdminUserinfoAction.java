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
public class AdminUserinfoAction extends BaseAction<Userinfo>{
	@Autowired
	private UserinfoService userinfoService;
	public String list() {
		QueryHelper helper = new QueryHelper(Userinfo.class, "u");
		PageBean pageBean = userinfoService.getPageBean(pageNum, pageSize, helper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list";
	}
	
	public String editUI() {
		Userinfo user = userinfoService.getById(model.getUserId());
		ActionContext.getContext().getValueStack().push(user);
		return "saveUI";
	}
	
	public String addUI() {
		return "saveUI";
	}
	public String edit() {
		Userinfo user = userinfoService.getById(model.getUserId());
		userinfoService.update(user);
		return "toList";
	}
	public String add() {
		userinfoService.save(model);
		return "toList"; 
	} 
	public String delete() {
		userinfoService.delete(model.getUserId());
		return "toList";
	}
}
