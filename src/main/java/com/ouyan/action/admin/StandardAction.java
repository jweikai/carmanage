package com.ouyan.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ouyan.action.base.BaseAction;
import com.ouyan.model.Standardinfo;
import com.ouyan.model.Userinfo;
import com.ouyan.page.PageBean;
import com.ouyan.service.StandardInfoService;
import com.ouyan.utils.QueryHelper;

@Controller
@Scope("prototype")
public class StandardAction extends BaseAction<Standardinfo>{
	@Autowired
	private StandardInfoService standardInfoService;
	public String list() {
		List<Standardinfo> standardinfos = standardInfoService.findAll();
		ActionContext.getContext().put("standards", standardinfos);
		return "list";
	}
	
	public String editUI() {
		Standardinfo standardinfo = standardInfoService.getById(model.getStandardId());
		ActionContext.getContext().getValueStack().push(standardinfo);
		return "saveUI";
	}
	
	public String addUI() {
		return "saveUI";
	}
	public String edit() {
		Standardinfo standardinfo = standardInfoService.getById(model.getStandardId());		
		standardinfo.setStandardCard(model.getStandardCard());
		standardinfo.setStandardFree(0);
		standardinfo.setStandardJurisdiction(-1);
		standardinfo.setStandardNormal(model.getStandardNormal());
		standardInfoService.update(standardinfo);
		return "toList";
	}
	public String add() {
		model.setStandardFree(0);
		model.setStandardJurisdiction(-1);
		standardInfoService.save(model);
		return "toList"; 
	} 
	public String delete() {
		standardInfoService.delete(model.getStandardId());
		return "toList";
	}
}
