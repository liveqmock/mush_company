package com.szmw.common.utils;

import weibo4j.http.HttpClient;
import weibo4j.http.Response;
import weibo4j.model.PostParameter;
import weibo4j.model.WeiboException;

public class Utils {

	public static boolean sendSms(String url, PostParameter[] params){
		boolean flag = false;
		HttpClient client = new HttpClient();
		try {
			Response response = client.get(url, params);
			if(response!=null){
				if(response.asString().contains("成功")){
					flag = true;
				}
			}
		} catch (WeiboException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public static boolean send(String content, String mobile) {
		// PostParameter[] params = new PostParameter[4];
		// PostParameter postParameter0 = new
		// PostParameter("sn","SDK-YIB-010-00030");
		// PostParameter postParameter1 = new PostParameter("pwd","013871");
		// PostParameter postParameter2 = new PostParameter("mobile",mobile);
		// PostParameter postParameter3 = new
		// PostParameter("content",content+" [爱点餐]");
		// params[0] = postParameter0;
		// params[1] = postParameter1;
		// params[2] = postParameter2;
		// params[3] = postParameter3;
		String url = "http://sdk1.entinfo.cn:8060/webservice.asmx/SendSMS";
		boolean flag = Utils.sendSms(url, new PostParameter[] {
				new PostParameter("sn", "SDK-YIB-010-00030"),
				new PostParameter("pwd", "013871"),
				new PostParameter("mobile", mobile),
				new PostParameter("content", content + " [爱点餐]") });
		return flag;
	}
	
	public static void main(String[] args) {
		boolean flag = Utils.send("爱点餐测试", "15010594110");
		System.out.println(flag);
	}
}
