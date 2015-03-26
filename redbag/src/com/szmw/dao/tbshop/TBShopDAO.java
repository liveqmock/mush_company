package com.szmw.dao.tbshop;

import java.util.List;
import java.util.Map;

public interface TBShopDAO {
	
	public int insertTbShop(TBShopModel tbShop);
	
	public int deleteTbShop(TBShopModel tbShop);
	
	public int updateTbShop(TBShopModel tbShop);
	
	public int queryCount(Map<String,Object> params);
	
	public TBShopModel queryTbShopModel(TBShopModel tbShop);

	public List<TBShopModel> queryTbShopModelList(Map<String,Object> params);
	
}
