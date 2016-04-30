package com.ouyan.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ouyan.action.base.BaseAction;
import com.ouyan.model.Deleteinfo;
import com.ouyan.page.PageBean;
import com.ouyan.service.DeleteInfoService;
import com.ouyan.utils.QueryHelper;

@Controller
@Scope("prototype")
public class DeleteInfoAction extends BaseAction<Deleteinfo>{
	@Autowired
	private DeleteInfoService deleteInfoService;
	public String list() {
		QueryHelper helper = new QueryHelper(Deleteinfo.class, "d");
		PageBean pageBean = deleteInfoService.getPageBean(pageNum, pageSize, helper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list";
	}
}
