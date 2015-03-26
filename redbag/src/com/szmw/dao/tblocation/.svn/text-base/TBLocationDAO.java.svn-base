package com.szmw.dao.tblocation;

import java.util.List;
import java.util.Map;

public interface TBLocationDAO {
	
	public int insertTbLocation(TBLocationModel tbLocation);
	
	public int deleteTbLocation(TBLocationModel tbLocation);
	
	public int updateTbLocation(TBLocationModel tbLocation);
	
	public int queryCount(Map<String,Object> params);
	
	public TBLocationModel queryTbLocationModel(TBLocationModel tbLocation);

	public List<TBLocationModel> queryTbLocationModelList(Map<String,Object> params);
	
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
