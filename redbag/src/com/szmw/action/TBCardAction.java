package com.szmw.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.szmw.common.utils.Constants;
import com.szmw.dao.tbcard.TBCardModel;
import com.szmw.dao.tbcard.service.TBCardService;
import com.szmw.dao.tbuser.TBUserModel;

public class TBCardAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	

	private TBCardService tbCardService;
	
	private TBCardModel tbCard;
	
	public String insertTBCard(){
		
		if(tbCard!=null){
			TBUserModel userM = (TBUserModel) ActionContext.getContext().getSession().get("USERINFO");
			if(userM!=null){
				tbCard.setUserid(userM.getId());
			}
			if(this.tbCardService.insertTBCard(tbCard)>0){
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
	
	public String deleteTBCard(){
		if(tbCard!=null){
			if(this.tbCardService.deleteTBCard(tbCard)>0){
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
	
	public String updateTBCard(){
		if(tbCard!=null){
			if(this.tbCardService.updateTBCard(tbCard)>0){
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
	
	public String queryTBCard(){
		if(tbCard!=null){
			TBCardModel card = this.tbCardService.queryTbShopModel(tbCard);
			if(card != null){
				resultInfo.setResultCode("1");
				resultInfo.setResultInfo(card);
			}else{
				setResultInfoQueryIsNull();
			}
		}else{
			setResultInfoParamsNotIsNull();
		}
		
		result = setResult(resultInfo);
		return Constants.RESULT;
	}
	

	public String queryTbCardModelList(){
		Map<String,Object> params = new HashMap<String,Object>();
		List<TBCardModel> cardList = this.tbCardService.queryTbShopModelList(params);
		if(cardList != null){
			resultInfo.setResultCode("1");
			resultInfo.setResultInfo(cardList);
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


	public TBCardModel getTbCard() {
		return tbCard;
	}

	public void setTbCard(TBCardModel tbCard) {
		this.tbCard = tbCard;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public TBCardService getTbCardService() {
		return tbCardService;
	}

	public void setTbCardService(TBCardService tbCardService) {
		this.tbCardService = tbCardService;
	}
	
}
