package com.szmw.action;

import javax.annotation.Resource;

import org.apache.struts2.dispatcher.SessionMap;

import weibo4j.model.User;
import weibo4j.org.json.JSONObject;

import com.opensymphony.xwork2.ActionContext;
import com.szmw.common.utils.Constants;
import com.szmw.common.utils.RegUtils;
import com.szmw.dao.tbuser.TBUserModel;
import com.szmw.dao.tbuser.service.TBUserService;

public class TBUserAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Resource
	public TBUserService tbUserService;
	
	private String mobile;//手机号
	private String password;//密码
	private String newpassword;//新密码
	
	private TBUserModel userModel;
	
	/**
	 * 用户登录
	 * @return String json
	 */
	public String userLogin(){
		TBUserModel user = new TBUserModel();
		user.setMobile(mobile);
		user.setPassword(password);
		
		TBUserModel queryUser = this.tbUserService.login(user);
		if(queryUser!=null){
			if(password.equals(queryUser.getPassword())){
				resultInfo.setResultInfo(queryUser);
				ActionContext.getContext().getSession().put("USERINFO",queryUser);
			}else{
				setErrorResultInfo();
			}
		}else{
			setErrorResultInfo();
		}
		result = setResult(resultInfo);
		return Constants.RESULT;
	}

	private void setErrorResultInfo() {
		resultInfo.setResultCode("0");
		resultInfo.setResultInfo("帐号或密码错误");
	}
	
	/**
	 * 用户注册
	 * @return String
	 */
	public String userRegister(){
		if(userModel!=null){
			if(!"".equals(userModel.getMobile()) && userModel.getMobile()!=null){
				if(!RegUtils.isMobileNO(userModel.getMobile())){
					resultInfo.setResultCode("0");
					resultInfo.setResultInfo("手机号格式不正确");
					returnResult();
					return Constants.RESULT;
				}
			}
			if(!"".equals(userModel.getEmail()) && userModel.getEmail()!=null){
				if(!RegUtils.isEmail(userModel.getEmail())){
					resultInfo.setResultCode("0");
					resultInfo.setResultInfo("Email格式不正确");
					returnResult();
					return Constants.RESULT;
				}
			}
			insertUser();
		}
		result = new JSONObject(resultInfo).toString();
		return Constants.RESULT;
	}

	private void insertUser() {
		TBUserModel user = this.tbUserService.isExistUser(userModel);
		if(user == null){
			boolean flag = this.tbUserService.register(userModel);
			if(flag){
				resultInfo.setResultInfo("注册成功");
			}else{
				resultInfo.setResultCode("0");
				resultInfo.setResultInfo("注册失败");
			}
		}else{
			resultInfo.setResultCode("0");
			resultInfo.setResultInfo("该用户已存在,请换一个重试");
		}
	}
	
	private void returnResult(){
		result = new JSONObject(resultInfo).toString();
	}
	
	public String updatePassword(){
		TBUserModel user = new TBUserModel();
		TBUserModel userM = (TBUserModel) ActionContext.getContext().getSession().get("USERINFO");
		if(userM!=null){
			mobile = userM.getMobile();
		}
		user.setMobile(mobile);
		TBUserModel queryUser = this.tbUserService.login(user);
		if(queryUser!=null){
			if(password.equals(queryUser.getPassword())){
				user.setPassword(newpassword);
				if(this.tbUserService.resetPassword(user)){
					resultInfo.setResultInfo("修改密码成功");
				}else{
					resultInfo.setResultCode("0");
					resultInfo.setResultInfo("修改密码失败");
				}
			}else{
				resultInfo.setResultCode("0");
				resultInfo.setResultInfo("原密码不正确，请重新输入");
			}
		}else{
			resultInfo.setResultCode("0");
			resultInfo.setResultInfo("当前用户不存在");
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	
	
	public TBUserService getTbUserService() {
		return tbUserService;
	}

	public void setTbUserService(TBUserService tbUserService) {
		this.tbUserService = tbUserService;
	}


	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public TBUserModel getUserModel() {
		return userModel;
	}

	public void setUserModel(TBUserModel userModel) {
		this.userModel = userModel;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	
	
}
