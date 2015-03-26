package com.szmw.sign.model;

import weibo4j.http.Response;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

public class WXJSAPITicketModel extends WXBaseModel {

	public long getExpires_in() {
		return expires_in;
	}

	public void setExpires_in(long expires_in) {
		this.expires_in = expires_in;
	}

	public String getTicket() {
		return ticket;
	}

	public void setTicket(String ticket) {
		this.ticket = ticket;
	}

	public String ticket;
	public long expires_in;

	public WXJSAPITicketModel() {
		super();
	}

	public WXJSAPITicketModel(Response res) throws WeiboException {
		super(res);
		JSONObject json = res.asJSONObject();
		try {
			ticket = json.getString("ticket");
			expires_in = json.getLong("expires_in");
			
		} catch (JSONException je) {
			throw new WeiboException(je.getMessage() + ":" + json.toString(),
					je);
		}
	}
}
