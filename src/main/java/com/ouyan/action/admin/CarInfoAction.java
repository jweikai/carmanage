package com.ouyan.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ouyan.Const;
import com.ouyan.action.base.BaseAction;
import com.ouyan.model.Caraccessinfo;
import com.ouyan.model.Userinfo;
import com.ouyan.service.CarInfoService;
import com.ouyan.service.UserinfoService;

@Controller
@Scope("prototype")
public class CarInfoAction extends BaseAction<Caraccessinfo>{
	@Autowired
	private CarInfoService carInfoService;
	@Autowired
	private UserinfoService userinfoService;
	public String list() {
		List<Caraccessinfo> cars = carInfoService.findAll();
		ActionContext.getContext().put("cars", cars);
		return "list";
	}
	
	public String addUI() {
		List<Userinfo> users = userinfoService.findAll();
		ActionContext.getContext().put("users", users);
		return "saveUI";
	}
	private Integer userId;
	public String add() {
		model.setUserinfo(userinfoService.getById(userId));
		model.setCarAccessEnter(Const.getCurrentTimestamp());
		carInfoService.save(model);
		return "toList"; 
	} 
	public String catOut() {
		Caraccessinfo car = carInfoService.getById(model.getCarAccessId());
		car.setCarAccessExit(Const.getCurrentTimestamp());
		carInfoService.update(car);
		return "toList";
	}
	public String delete() {
		userinfoService.delete(model.getCarAccessId());
		return "toList";
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
}
