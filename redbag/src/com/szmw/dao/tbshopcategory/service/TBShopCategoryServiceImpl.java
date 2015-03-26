package com.szmw.dao.tbshopcategory.service;

import java.util.List;
import java.util.Map;

import com.szmw.dao.tbshopcategory.TBShopCategoryDAO;
import com.szmw.dao.tbshopcategory.TBShopCategoryModel;

/**
 * 
 * @author Administrator 获取所有的餐饮类型分类
 */
public class TBShopCategoryServiceImpl implements TBShopCategoryService {
	private TBShopCategoryDAO dao;

	public int deleteTBShopCategory(TBShopCategoryModel tbShopCategory) {
		return this.dao.deleteTBShopCategory(tbShopCategory);
	}

	public int insertTBShopCategory(TBShopCategoryModel tbShopCategory) {
		return this.dao.insertTBShopCategory(tbShopCategory);
	}

	public int queryCount(Map<String, Object> params) {
		return this.queryCount(params);
	}

	public TBShopCategoryModel queryTBShopCategory(
			TBShopCategoryModel tbShopCategory) {
		return this.dao.queryTBShopCategory(tbShopCategory);
	}

	public List<TBShopCategoryModel> queryTBShopCategoryList(
			Map<String, Object> params) {
		return this.queryTBShopCategoryList(params);
	}

	public int updateTBShopCategory(TBShopCategoryModel tbShopCategory) {
		return this.dao.updateTBShopCategory(tbShopCategory);
	}
	
	
	public TBShopCategoryDAO getDao() {
		return dao;
	}

	public void setDao(TBShopCategoryDAO dao) {
		this.dao = dao;
	}

	public List<TBShopCategoryModel> queryTBShopECategory(
			Map<String, Object> params) {
		return this.dao.queryTBShopECategory(params);
	}

	public List<TBShopCategoryModel> queryTBShopYCategory(
			Map<String, Object> params) {
		return this.dao.queryTBShopYCategory(params);
	}

}
