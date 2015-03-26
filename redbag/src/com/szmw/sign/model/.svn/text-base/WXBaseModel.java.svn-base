package com.szmw.sign.model;

import weibo4j.http.Response;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONObject;

public class WXBaseModel {
	public String errmsg;

	public String getErrmsg() {
		return errmsg;
	}

	public void setErrmsg(String errmsg) {
		this.errmsg = errmsg;
	}

	public String getErrcode() {
		return errcode;
	}

	public void setErrcode(String errcode) {
		this.errcode = errcode;
	}

	public String errcode;

	public WXBaseModel(Response res) throws WeiboException {
		JSONObject json = res.asJSONObject();
		try {
			errmsg = json.getString("errmsg");
			errcode = json.getString("errcode");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public WXBaseModel() {

	}
}
