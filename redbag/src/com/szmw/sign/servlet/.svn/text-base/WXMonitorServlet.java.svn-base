package com.szmw.sign.servlet;

import java.util.Timer;
import java.util.TimerTask;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import com.szmw.api.API;
import com.szmw.sign.model.WXGloblAccessTokenModel;
import com.szmw.sign.model.WXJSAPITicketModel;

public class WXMonitorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * 延迟一秒执行
	 */
	private static final long delay = 1000;
	/**
	 * 一个小时
	 */
	private static final long period = 3600 * 1000;
	// 微信封的APPkey和APPsecret
	private static String appKey = "wx1d8a4d104ec1c497";
	private static String appSecret = "64496a6a3ebe311a7c5558a2e80cc77f";
	private static WXGloblAccessTokenModel accessTokenModel;
	private static WXJSAPITicketModel ticketModel;

	// 返回全局对象
	public static WXJSAPITicketModel getGlobalJSTicket() {
		return ticketModel;
	}

	public static WXGloblAccessTokenModel getGlobalAccessToken() {
		return accessTokenModel;
	}

	@Override
	public void init() throws ServletException {
		Timer timer = new Timer();
		timer.schedule(new TimerTask() {
			@Override
			public void run() {
				try {
					accessTokenModel = API.getGlobalWXAccessToken(appKey,
							appSecret);
					ticketModel = API.getGlobalWXJSAPITicket(accessTokenModel
							.getAccess_token());
				} catch (Exception e) {
				}
			}
		}, delay, period);
	}
}
