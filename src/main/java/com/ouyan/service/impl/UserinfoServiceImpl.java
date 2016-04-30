package com.ouyan.service.impl;

import org.springframework.stereotype.Service;

import com.ouyan.dao.BaseDaoImpl;
import com.ouyan.model.Userinfo;
import com.ouyan.service.UserinfoService;

@Service
public class UserinfoServiceImpl extends BaseDaoImpl<Userinfo> implements UserinfoService{

	@Override
	public Userinfo findByName(String userName) {
		return (Userinfo) getSession().createQuery(
					"from Userinfo u where u.userName = ?")
					.setParameter(0, userName).uniqueResult();
	}

	@Override
	public Userinfo login(String userName, String userPassword) {
		return (Userinfo) getSession().createQuery(
					"from Userinfo u where u.userName = ? and u.userPassword = ?")
					.setParameter(0, userName)
					.setParameter(1, userPassword).uniqueResult();
	}
	
}
