package com.szmw.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.szmw.common.utils.Constants;
import com.szmw.dao.tblocation.TBLocationModel;
import com.szmw.dao.tblocation.service.TBLocationService;
import com.szmw.dao.tbshopcategory.TBShopCategoryModel;

public class TBLocationAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	private TBLocationService tbLocationService;
	
	private TBShopCategoryModel tbShopCategory;
	
	private TBLocationModel tbLocation;
	
	private String id;
	
	public String queryTBLocationModeProvincelList(){
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("id", id);
		List<TBLocationModel> location = (List<TBLocationModel>) this.tbLocationService.queryTBLocationModeProvincelList(params);
		if(location != null && location.size() > 0){
			resultInfo.setResultCode("1");
			resultInfo.setResultInfo(location);
		}else{
			setResultInfoQueryIsNull();
		}
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	public String queryTBLocationModeCityList(){
		if(!"".equals(id) && id!=null){
			Map<String,Object> params = new HashMap<String,Object>();
			params.put("id", id.substring(0, 2));
			List<TBLocationModel> location = (List<TBLocationModel>) this.tbLocationService.queryTBLocationModelCityList(params);
			if(location != null && location.size() > 0){
				resultInfo.setResultCode("1");
				resultInfo.setResultInfo(location);
			}else{
				setResultInfoQueryIsNull();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	public String queryTBLocationModelCountyList(){
		if(!"".equals(id) && id!=null){
			Map<String,Object> params = new HashMap<String,Object>();
			params.put("id", id.substring(0, 2));
			List<TBLocationModel> location = (List<TBLocationModel>) this.tbLocationService.queryTBLocationModelCountyList(params);
			if(location != null && location.size() > 0){
				resultInfo.setResultCode("1");
				resultInfo.setResultInfo(location);
			}else{
				setResultInfoQueryIsNull();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public TBShopCategoryModel getTbShopCategory() {
		return tbShopCategory;
	}

	public void setTbShopCategory(TBShopCategoryModel tbShopCategory) {
		this.tbShopCategory = tbShopCategory;
	}

	public TBLocationService getTbLocationService() {
		return tbLocationService;
	}

	public void setTbLocationService(TBLocationService tbLocationService) {
		this.tbLocationService = tbLocationService;
	}

	public TBLocationModel getTbLocation() {
		return tbLocation;
	}

	public void setTbLocation(TBLocationModel tbLocation) {
		this.tbLocation = tbLocation;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	

	
}
