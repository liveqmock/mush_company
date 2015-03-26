package com.szmw.sign.model;

import weibo4j.http.Response;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

public class WXAccessTokenModel extends WXBaseModel{
	// {"access_token":"OezXcEiiBSKSxW0eoylIeLV5N3-NO0FH9iyX9P-uj9bH_xLjuQThq9o898KH0dDU6ChhZYEQPB_HZnfUzzb7ddrJ3SHM7X0YdPtztCnJ_Dlb7M1mx0GTYPESPe5yFjWoadODILPs1pfwRW3T7isGXQ",
	// "expires_in":7200,"refresh_token":"OezXcEiiBSKSxW0eoylIeLV5N3-NO0FH9iyX9P-uj9bH_xLjuQThq9o898KH0dDUljAX734VHll2FwSm7La6xAXCwth1VOptTdyGDl747zNz-7gGlJtb_uL1kKzlFT3B18qOcEQtcIAEF4TMOQ_zVQ","openid":"o6ekvt8A6t_AGoHFfm8VF40pRIrc","scope":"snsapi_userinfo"}

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

	public String getRefresh_token() {
		return refresh_token;
	}

	public void setRefresh_token(String refresh_token) {
		this.refresh_token = refresh_token;
	}

	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	public String getScope() {
		return scope;
	}

	public void setScope(String scope) {
		this.scope = scope;
	}
	public String access_token;
	public long expires_in;
	public String refresh_token;
	public String openid;
	public String scope;

	public WXAccessTokenModel()
	{
		super();
	}
	
	public WXAccessTokenModel(Response res) throws WeiboException {
		super(res);
		JSONObject json = res.asJSONObject();
		try {
			access_token = json.getString("access_token");
			expires_in = json.getLong("expires_in");
			refresh_token = json.getString("refresh_token");
			openid = json.getString("openid");
			scope = json.getString("scope");
		} catch (JSONException je) {
			throw new WeiboException(je.getMessage() + ":" + json.toString(),
					je);
		}
	}
}
