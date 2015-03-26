package com.szmw.dao.tblocation.service;

import java.util.List;
import java.util.Map;

import com.szmw.dao.tblocation.TBLocationModel;

public interface TBLocationService {
	
	public int insertTBLocation(TBLocationModel tbLocation);
	
	public int deleteTBLocation(TBLocationModel tbLocation);
	
	public int updateTBLocation(TBLocationModel tbLocation);
	
	public int queryCount(Map<String,Object> params);
	
	public TBLocationModel queryTBLocationModel(TBLocationModel tbLocation);

	public List<TBLocationModel> queryTBLocationModelList(Map<String,Object> params);
	/**
	 * 查询省
	 * @param params
	 * @return
	 */
	public List<TBLocationModel> queryTBLocationModeProvincelList(Map<String,Object> params);
	
	/**
	 * 查询市
	 * @param params
	 * @return
	 */
	public List<TBLocationModel> queryTBLocationModelCityList(Map<String,Object> params);
	/**
	 * 查询县，区
	 * @param params
	 * @return
	 */
	public List<TBLocationModel> queryTBLocationModelCountyList(Map<String,Object> params);
	
}
