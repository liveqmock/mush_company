package com.szmw.api;

import com.szmw.sign.model.WXAccessTokenModel;
import com.szmw.sign.model.WXGloblAccessTokenModel;
import com.szmw.sign.model.WXJSAPITicketModel;
import com.szmw.sign.model.WXUserModel;

import weibo4j.http.HttpClient;
import weibo4j.model.WeiboException;

public class API {

	//获得微信授权基地址
	public static String getWXAuth2BaseURL(String appKey, String callbackURL) {
		return "https://open.weixin.qq.com/connect/oauth2/authorize?appid="
				+ appKey
				+ "&redirect_uri="
				+ callbackURL
				+ "&response_type=code&scope=snsapi_userinfo&state=1#wechat_redirect";
	}

	//获得用户accessToken
	public static WXAccessTokenModel getWXAccessToken(String appKey,
			String appSecret, String code) {
		HttpClient client = new HttpClient();
		WXAccessTokenModel atModel = null;
		try {
			atModel = new WXAccessTokenModel(
					client.get("https://api.weixin.qq.com/sns/oauth2/access_token?appid="
							+ appKey
							+ "&secret="
							+ appSecret
							+ "&code="
							+ code
							+ "&grant_type=authorization_code"));
		} catch (WeiboException e) {
			e.printStackTrace();
		}
		return atModel;
	}

	//获得global accessToken
	public static WXGloblAccessTokenModel getGlobalWXAccessToken(String appKey,
			String appSecret) {
		HttpClient client = new HttpClient();
		WXGloblAccessTokenModel gatModel = null;
		try {
			gatModel = new WXGloblAccessTokenModel(
					client.get("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
							+ appKey + "&secret=" + appSecret));
		} catch (WeiboException e) {
			e.printStackTrace();
		}
		return gatModel;
	}
	
	//获得全局的globalToken
	public static WXJSAPITicketModel getGlobalWXJSAPITicket(String access_token) {
		HttpClient client = new HttpClient();
		WXJSAPITicketModel ticketModel = null;
		try {
			ticketModel = new WXJSAPITicketModel(
					client.get("https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="
							+ access_token + "&type=jsapi"));
			System.out.println(ticketModel.getTicket());
		} catch (WeiboException e) {
			e.printStackTrace();
		}
		return ticketModel;
	}

	//获得用户基本信息
	public static WXUserModel getWXUserInfo(String accessToken, String openId) {
		HttpClient client = new HttpClient();
		WXUserModel uModel = null;
		try {
			uModel = new WXUserModel(
					client.get("https://api.weixin.qq.com/sns/userinfo?access_token="
							+ accessToken + "&openid=" + openId));
		} catch (WeiboException e) {
			e.printStackTrace();
		}
		return uModel;
	}
}
