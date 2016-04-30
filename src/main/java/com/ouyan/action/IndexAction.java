package com.ouyan.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ouyan.action.base.BaseAction;
import com.ouyan.model.Carportinfo;
import com.ouyan.model.Userinfo;
import com.ouyan.service.CarportinfoService;
import com.ouyan.service.UserinfoService;
import com.ouyan.utils.QueryHelper;

/**
 * 界面跳转
 * 
 * @author Rizerugu
 *
 */
@Controller
@Scope("prototype")
public class IndexAction extends BaseAction<Userinfo> {

	private static final long serialVersionUID = 2313523283926933226L;

	private Integer userbiryear;
	private Integer userbirmonth;
	private Integer userbirday;
	private Integer loginAccessation;

	@Autowired
	private UserinfoService userinfoService;
	
	@Autowired
	private CarportinfoService carportinfoService;

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String index() {
		return "index";
	}

	public String login() {
		Userinfo userinfo = userinfoService.findByName(model.getUserName());
		if (userinfo == null) {
			return "loginerror";
		}
		if (!userinfo.getUserPassword().equals(model.getUserPassword())) {
			return "loginerror";
		}
		if (loginAccessation == 0) {
			return "user";
		} else if (loginAccessation == 1) {
			return "admin";
		}
		return "login";
	}

	/**
	 * 注册
	 * 
	 * @return
	 */
	public String register() {
		return "register";
	}

	public String re() {
		model.setUserBirthday(new Date(userbiryear, userbirmonth, userbirday));
		model.setUserJurisdiction(0);
		userinfoService.save(model);

		return "index";
	}

	/**
	 * 用户信息
	 * 
	 * @return
	 */
	public String user() {
		return "user";
	}

	/**
	 * 用户详细信息
	 * 
	 * @return
	 */
	public String userinfo() {
		return "userinfo";
	}

	/**
	 * 管理员
	 * 
	 * @return
	 */
	public String admin() {
		return "admin";
	}

	/**
	 * 查看车位
	 * 
	 * @return
	 */
	public String carport() {
		QueryHelper helper = new QueryHelper(Carportinfo.class, "c");
		helper.addCondition("carportLocation like 'A%'");
		List<Carportinfo> a = carportinfoService.findByQueryHelp(helper);
		
		helper.addCondition("carportLocation like 'B%'");
		List<Carportinfo> b = carportinfoService.findByQueryHelp(helper);
		
		helper.addCondition("carportLocation like 'C%'");
		List<Carportinfo> c = carportinfoService.findByQueryHelp(helper);
		
		helper.addCondition("carportLocation like 'D%'");
		List<Carportinfo> d = carportinfoService.findByQueryHelp(helper);
		
		ActionContext.getContext().put("a", a);
		ActionContext.getContext().put("b", b);
		ActionContext.getContext().put("c", c);
		ActionContext.getContext().put("d", d);
		
		return "carport";
	}

	/**
	 * 预定/取消车位
	 * 
	 * @return
	 */
	public String reser() {
		return "reser";
	}

	public String userUpdate() {
		return "userUpdate";
	}

	/**
	 * 个人账户选择
	 * 
	 * @return
	 */
	public String pay() {
		return "pay";
	}

	public void setUserbiryear(Integer userbiryear) {
		this.userbiryear = userbiryear;
	}

	public void setUserbirmonth(Integer userbirmonth) {
		this.userbirmonth = userbirmonth;
	}

	public void setUserbirday(Integer userbirday) {
		this.userbirday = userbirday;
	}

	public void setLoginAccessation(Integer loginAccessation) {
		this.loginAccessation = loginAccessation;
	}

}
