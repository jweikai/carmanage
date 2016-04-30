package com.ouyan.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ouyan.action.base.BaseAction;
import com.ouyan.model.Announcementinfo;
import com.ouyan.service.AnnouncementInfoService;

@Controller
@Scope("prototype")
public class AnnouncementInfoAction extends BaseAction<Announcementinfo>{
	@Autowired
	private AnnouncementInfoService announcementInfoService;
	public String list() {
		List<Announcementinfo> annos = announcementInfoService.findAll();
		ActionContext.getContext().put("annos", annos);
		return "list";
	}
	
	public String editUI() {
		Announcementinfo announcementinfo = announcementInfoService.getById(model.getAnnouncementId());
		ActionContext.getContext().getValueStack().push(announcementinfo);
		return "saveUI";
	}
	
	public String addUI() {
		return "saveUI";
	}
	public String edit() {
		Announcementinfo announcementinfo = announcementInfoService.getById(model.getAnnouncementId());	
		announcementinfo.setAnnouncementContent(model.getAnnouncementContent());
		announcementinfo.setAnnouncementTilte(model.getAnnouncementTilte());
		announcementInfoService.update(announcementinfo);
		return "toList";
	}
	public String add() {
		announcementInfoService.save(model);
		return "toList"; 
	} 
	public String delete() {
		announcementInfoService.delete(model.getAnnouncementId());
		return "toList";
	}
}
