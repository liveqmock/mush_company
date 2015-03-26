package com.szmw.utils;

import com.opensymphony.xwork2.ActionContext;

/**
 * 
 * @author Administrator 存储session数据
 */
public class SessionUtils {

	public static void put(String key, Object val) {
		ActionContext.getContext().getSession().put(key, val);
	}

	public static Object get(String key) {
		return ActionContext.getContext().getSession().get(key);
	}
}
