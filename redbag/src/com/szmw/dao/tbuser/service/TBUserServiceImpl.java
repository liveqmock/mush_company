package com.szmw.dao.tbuser.service;

import com.szmw.dao.tbuser.TBUserDAO;
import com.szmw.dao.tbuser.TBUserModel;

public class TBUserServiceImpl implements TBUserService {

	public TBUserDAO getDao() {
		return dao;
	}

	public void setDao(TBUserDAO dao) {
		this.dao = dao;
	}

	public TBUserDAO dao;

	/**
	 * 注册
	 * 
	 * @param model
	 * @return
	 */
	public boolean register(TBUserModel model) {
		return dao.register(model) > 0;
	}

	/**
	 * 重置密码
	 * 
	 * @param model
	 */
	public boolean resetPassword(TBUserModel model) {
		return dao.resetPassword(model) > 0;
	}

	/**
	 * 查询用户登录信息，通过用户名和密码
	 * 
	 * @param model
	 * @return
	 */
	public TBUserModel login(TBUserModel model) {
		return dao.queryUserInfo(model);
	}

	public TBUserModel isExistUser(TBUserModel model) {
		return dao.queryUserInfo(model);
	}

}
