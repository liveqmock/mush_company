package com.szmw.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.szmw.common.utils.Constants;
import com.szmw.dao.tbshop.TBShopModel;
import com.szmw.dao.tbshop.service.TBShopService;
import com.szmw.dao.tbuser.TBUserModel;
import com.szmw.dao.tbuser.service.TBUserService;

public class TBShopAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	

	private TBShopService tbShopService;
	private TBUserService tbUserService;
	
	private TBShopModel tbShop;
	private String status;
	
	public String insertTBShop(){
		
		if(tbShop!=null){
			TBUserModel userM = (TBUserModel) ActionContext.getContext().getSession().get("USERINFO");
			if(userM!=null){
				tbShop.setUserid(userM.getId());
			}
			if(this.tbShopService.insertTbShop(tbShop)>0){
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
	
	public String deleteTBShop(){
		if(tbShop!=null){
			if(this.tbShopService.deleteTbShop(tbShop)>0){
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
	
	public String updateTBShop(){
		if(tbShop!=null){
			if(this.tbShopService.updateTbShop(tbShop)>0){
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
	
	public String queryTBShop(){
		if(tbShop!=null){
			TBShopModel shop = this.tbShopService.queryTbShopModel(tbShop);
			if(shop != null){
				resultInfo.setResultCode("1");
				resultInfo.setResultInfo(shop);
			}else{
				setResultInfoQueryIsNull();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	

	public String queryTbShopModelList(){
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("status", status);
		List<TBShopModel> shopList = this.tbShopService.queryTbShopModelList(params);
		if(shopList != null && shopList.size() > 0){
			resultInfo.setResultCode("1");
			resultInfo.setResultInfo(shopList);
		}else{
			resultInfo.setResultCode("0");
			resultInfo.setResultInfo("没有数据!");
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}


	public TBShopModel getTbShop() {
		return tbShop;
	}

	public void setTbShop(TBShopModel tbShop) {
		this.tbShop = tbShop;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public TBShopService getTbShopService() {
		return tbShopService;
	}

	public void setTbShopService(TBShopService tbShopService) {
		this.tbShopService = tbShopService;
	}

	public TBUserService getTbUserService() {
		return tbUserService;
	}

	public void setTbUserService(TBUserService tbUserService) {
		this.tbUserService = tbUserService;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
}
