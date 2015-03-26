package com.szmw.dao.tbshop.service;

import java.util.List;
import java.util.Map;

import com.szmw.dao.tbshop.TBShopModel;

public interface TBShopService {
	
	public int insertTbShop(TBShopModel tbShop);
	
	public int deleteTbShop(TBShopModel tbShop);
	
	public int updateTbShop(TBShopModel tbShop);
	
	public int queryCount(Map<String,Object> params);
	
	public TBShopModel queryTbShopModel(TBShopModel tbShop);

	public List<TBShopModel> queryTbShopModelList(Map<String,Object> params);
	
}
