package com.szmw.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.szmw.common.utils.Constants;
import com.szmw.dao.tbshopcategory.TBShopCategoryModel;
import com.szmw.dao.tbshopcategory.service.TBShopCategoryService;

public class TBShopCategoryAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	private TBShopCategoryService tbShopCategoryService;
	
	private TBShopCategoryModel tbShopCategory;
	
	private String shopCategoryId;
	
	private String parentid;
	
	public String insertTBShopCategory(){
		
		if(tbShopCategory!=null){
			if(this.tbShopCategoryService.insertTBShopCategory(tbShopCategory)>0){
				setResultInfoSuccess();
			}else{
				setResultInfoError();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	public String deleteTBShopCategory(){
		if(tbShopCategory!=null){
			if(this.tbShopCategoryService.deleteTBShopCategory(tbShopCategory)>0){
				setResultInfoSuccess();
			}else{
				setResultInfoError();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	public String updateTBShopCategory(){
		if(tbShopCategory!=null){
			if(this.tbShopCategoryService.updateTBShopCategory(tbShopCategory)>0){
				setResultInfoSuccess();
			}else{
				setResultInfoError();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	public String queryTBShopCategory(){
		if(tbShopCategory!=null){
			TBShopCategoryModel shopCategory = this.tbShopCategoryService.queryTBShopCategory(tbShopCategory);
			if(shopCategory != null){
				resultInfo.setResultCode("1");
				resultInfo.setResultInfo(shopCategory);
			}else{
				setResultInfoQueryIsNull();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	public String queryTBShopYCategory(){
		if(!"".equals(parentid) && parentid!=null){
			Map<String,Object> params = new HashMap<String,Object>();
			params.put("parentid", parentid);
			List<TBShopCategoryModel> shopCategory = (List<TBShopCategoryModel>) this.tbShopCategoryService.queryTBShopYCategory(params);
			if(shopCategory != null && shopCategory.size() > 0){
				resultInfo.setResultCode("1");
				resultInfo.setResultInfo(shopCategory);
			}else{
				setResultInfoQueryIsNull();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	
	public String queryTBShopECategory(){
		if(!"".equals(shopCategoryId) && shopCategoryId!=null){
			Map<String,Object> params = new HashMap<String,Object>();
			params.put("id", shopCategoryId);
			List<TBShopCategoryModel> shopCategory = (List<TBShopCategoryModel>) this.tbShopCategoryService.queryTBShopECategory(params);
			if(shopCategory != null && shopCategory.size() > 0){
				resultInfo.setResultCode("1");
				resultInfo.setResultInfo(shopCategory);
			}else{
				setResultInfoQueryIsNull();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	

	public String queryTBShopCategoryList(){
		Map<String,Object> params = new HashMap<String,Object>();
		List<TBShopCategoryModel> shopList = this.tbShopCategoryService.queryTBShopCategoryList(params);
		if(shopList != null){
			resultInfo.setResultCode("1");
			resultInfo.setResultInfo(shopList);
		}else{
			resultInfo.setResultCode("0");
			resultInfo.setResultInfo("没有数据!");
		}
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
//	public List<TBShopCategoryModel> queryTBShopYCategory(Map<String,Object> params);
	
//	public List<TBShopCategoryModel> queryTBShopECategory(Map<String,Object> params);
	
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

	public TBShopCategoryService getTbShopCategoryService() {
		return tbShopCategoryService;
	}

	public void setTbShopCategoryService(TBShopCategoryService tbShopCategoryService) {
		this.tbShopCategoryService = tbShopCategoryService;
	}

	public String getShopCategoryId() {
		return shopCategoryId;
	}

	public void setShopCategoryId(String shopCategoryId) {
		this.shopCategoryId = shopCategoryId;
	}

	public String getParentid() {
		return parentid;
	}

	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	

	
}
