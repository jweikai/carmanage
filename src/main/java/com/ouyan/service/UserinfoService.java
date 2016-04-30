package com.ouyan.service;

import com.ouyan.dao.BaseDao;
import com.ouyan.model.Userinfo;

public interface UserinfoService extends BaseDao<Userinfo>{

	Userinfo findByName(String userName);

	Userinfo login(String userName, String userPassword);

}
