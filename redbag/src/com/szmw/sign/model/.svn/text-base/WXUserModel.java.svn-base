package com.szmw.sign.model;

import weibo4j.http.Response;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

public class WXUserModel extends WXBaseModel {
	public int getSubscribe() {
		return subscribe;
	}

	public void setSubscribe(int subscribe) {
		this.subscribe = subscribe;
	}

	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getHeadimgurl() {
		return headimgurl;
	}

	public void setHeadimgurl(String headimgurl) {
		this.headimgurl = headimgurl;
	}

	public long getSubscribe_time() {
		return subscribe_time;
	}

	public void setSubscribe_time(long subscribe_time) {
		this.subscribe_time = subscribe_time;
	}

	public int subscribe;
	public String openid;
	public String nickname;
	public int sex;
	public String language;
	public String city;
	public String province;
	public String country;
	public String headimgurl;
	public long subscribe_time;

	public WXUserModel() {
		super();
	}

	public WXUserModel(Response res) throws WeiboException {
		super(res);
		JSONObject json = res.asJSONObject();
		try {
			subscribe = json.getInt("subscribe");
			openid = json.getString("openid");
			nickname = json.getString("nickname");
			sex = json.getInt("sex");
			language = json.getString("language");
			city = json.getString("city");
			province = json.getString("province");
			country = json.getString("country");
			headimgurl = json.getString("headimgurl");
			subscribe_time = json.getLong("subscribe_time");
		} catch (JSONException je) {
			throw new WeiboException(je.getMessage() + ":" + json.toString(),
					je);
		}
	}
}
