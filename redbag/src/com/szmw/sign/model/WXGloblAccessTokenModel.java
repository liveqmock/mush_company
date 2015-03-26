package com.szmw.sign.model;

import weibo4j.http.Response;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

public class WXGloblAccessTokenModel extends WXBaseModel{

	public String getAccess_token() {
		return access_token;
	}

	public void setAccess_token(String access_token) {
		this.access_token = access_token;
	}

	public long getExpires_in() {
		return expires_in;
	}

	public void setExpires_in(long expires_in) {
		this.expires_in = expires_in;
	}

	public String access_token;
	public long expires_in;

	public WXGloblAccessTokenModel()
	{
		super();
	}
	
	public WXGloblAccessTokenModel(Response res) throws WeiboException {
		super(res);
		JSONObject json = res.asJSONObject();
		try {
			access_token = json.getString("access_token");
			expires_in = json.getLong("expires_in");
		} catch (JSONException je) {
			throw new WeiboException(je.getMessage() + ":" + json.toString(),
					je);
		}
	}
}
