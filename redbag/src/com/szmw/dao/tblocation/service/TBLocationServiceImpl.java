package com.szmw.dao.tblocation.service;

import java.util.List;
import java.util.Map;

import com.szmw.dao.tblocation.TBLocationDAO;
import com.szmw.dao.tblocation.TBLocationModel;

public class TBLocationServiceImpl implements TBLocationService {

	private TBLocationDAO dao;
	
	public int deleteTBLocation(TBLocationModel tbLocation) {
		return this.dao.deleteTbLocation(tbLocation);
	}

	public int insertTBLocation(TBLocationModel tbLocation) {
		return this.dao.insertTbLocation(tbLocation);
	}

	public int queryCount(Map<String, Object> params) {
		return this.dao.queryCount(params);
	}

	public TBLocationModel queryTBLocationModel(TBLocationModel tbLocation) {
		return this.dao.queryTbLocationModel(tbLocation);
	}

	public List<TBLocationModel> queryTBLocationModelList(
			Map<String, Object> params) {
		return this.dao.queryTbLocationModelList(params);
	}

	public int updateTBLocation(TBLocationModel tbLocation) {
		return this.dao.updateTbLocation(tbLocation);
	}

	public TBLocationDAO getDao() {
		return dao;
	}

	public void setDao(TBLocationDAO dao) {
		this.dao = dao;
	}

	public List<TBLocationModel> queryTBLocationModeProvincelList(
			Map<String, Object> params) {
		return this.dao.queryTBLocationModeProvincelList(params);
	}

	public List<TBLocationModel> queryTBLocationModelCityList(
			Map<String, Object> params) {
		return this.dao.queryTBLocationModelCityList(params);
	}

	public List<TBLocationModel> queryTBLocationModelCountyList(
			Map<String, Object> params) {
		return this.dao.queryTBLocationModelCountyList(params);
	}
	
}
