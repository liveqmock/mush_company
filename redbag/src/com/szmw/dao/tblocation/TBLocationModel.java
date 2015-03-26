package com.szmw.dao.tblocation;


/**
 * 地理位置实体类
 * @author mush
 */
public class TBLocationModel {

	private int id;          //id
	private String name;     //位置名称
	private String fullname; //全拼
	private String pinyin;   //拼音
	private String lat;      //纬度
	private String lng;      //经度
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getPinyin() {
		return pinyin;
	}
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
}
