package com.szmw.utils;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

public class RequestUtils {

	public static void setAttribute(String key, Object val) {
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute(key, val);
	}

	public static Object getAttribute(String key) {
		HttpServletRequest request = ServletActionContext.getRequest();
		return request.getAttribute(key);
	}
}
