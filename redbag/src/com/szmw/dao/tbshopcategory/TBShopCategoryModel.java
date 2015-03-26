package com.szmw.dao.tbshopcategory;

/**
 * 
 * @author Administrator
 * 菜品类型分类
 */
public class TBShopCategoryModel {

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getParentid() {
		return parentid;
	}

	public void setParentid(int parentid) {
		this.parentid = parentid;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	private int id;
	private int parentid;
	private String categoryname;
	private int weight;
}
