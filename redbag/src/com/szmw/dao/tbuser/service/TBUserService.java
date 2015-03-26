package com.szmw.dao.tbuser.service;

import com.szmw.dao.tbuser.TBUserModel;

public interface TBUserService {
	/**
	 * 注册
	 * 
	 * @param model
	 * @return
	 */
	public boolean register(TBUserModel model);

	/**
	 * 重置密码
	 * 
	 * @param model
	 */
	public boolean resetPassword(TBUserModel model);

	/**
	 * 查询用户登录信息，通过用户名和密码
	 * 
	 * @param model
	 * @return
	 */
	public TBUserModel login(TBUserModel model);

	/**
	 * 是否存在该用户
	 * 
	 * @param mobile
	 * @return TBUserModel
	 */
	public TBUserModel isExistUser(TBUserModel model);
}
