package com.szmw.interceptor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import weibo4j.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AdminLoginInterceptor implements Interceptor {

	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation invocation) throws Exception {
		// 获取session
		Logger log = Logger.getLogger(invocation.getAction().getClass()
				.getSimpleName());

		Map<String, Object> sessionMap = ActionContext.getContext()
				.getSession();
		User loginUser = (User) sessionMap.get("USERINFO");

		ActionSupport actionSupport = (ActionSupport) invocation.getAction();
		List<String> errList = new ArrayList<String>();

		String sActionName = invocation.getProxy().getActionName();// 获得action名字
		String sMethod = invocation.getProxy().getMethod();// 获得调用action里的方法名
		String sFullName = sActionName + "!" + sMethod;

		String result = "";
		// 判断session是否存在，不存在则跳转至错误页面
	//if (loginUser == null) {
		if (false) {
			// 用户直接输入登录后的地址，自动跳转到首页
			if ("base!toMode".equals(sFullName)) {
				try {
					result = invocation.invoke();
				} catch (Exception e) {
					// 捕获异常并跳转至错误页面
					e.printStackTrace();
					log.error(e);
					errList.add(invocation.getAction().getClass().getSimpleName()
							+ ">>" + sMethod + ":" + e.toString());
					actionSupport.setActionErrors(errList);
					result = "errorControl";
				}
				return result;
			}
			result = "login";
		} else {
			try {
				result = invocation.invoke();
			} catch (Exception e) {
				// 捕获异常并跳转至错误页面
				e.printStackTrace();
				log.error(e);
				errList.add(invocation.getAction().getClass().getSimpleName()
						+ ">>" + sMethod + ":" + e.toString());
				actionSupport.setActionErrors(errList);
				result = "errorControl";
			}
		}
		return result;
	}

	public void destroy() {

	}

	public void init() {

	}
}
