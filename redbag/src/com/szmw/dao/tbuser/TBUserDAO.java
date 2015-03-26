package com.szmw.dao.tbuser;

/**
 * 
 * @author Administrator 操作商家登录的DAO方法
 */
public interface TBUserDAO {
	/**
	 * 注册
	 * 
	 * @param model
	 * @return
	 */
	public int register(TBUserModel model);

	/**
	 * 重置密码
	 * 
	 * @param model
	 */
	public int resetPassword(TBUserModel model);

	/**
	 * 查询用户登录信息，通过用户名和密码
	 * 
	 * @param model
	 * @return
	 */
	public TBUserModel queryUserInfo(TBUserModel model);
	
	/**
	 * 是否存在该用户
	 * @param mobile
	 * @return TBUserModel
	 */
	public TBUserModel isExistUser(String mobile);
}
