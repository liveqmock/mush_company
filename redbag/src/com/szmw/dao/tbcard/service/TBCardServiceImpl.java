package com.szmw.dao.tbcard.service;

import java.util.List;
import java.util.Map;

import com.szmw.dao.tbcard.TBCardDAO;
import com.szmw.dao.tbcard.TBCardModel;

public class TBCardServiceImpl implements TBCardService {

	private TBCardDAO dao;
	
	public int deleteTBCard(TBCardModel tbCard) {
		return this.dao.deleteTBCard(tbCard);
	}

	public int insertTBCard(TBCardModel tbCard) {
		return this.dao.insertTBCard(tbCard);
	}

	public int queryCount(Map<String, Object> params) {
		return this.dao.queryCount(params);
	}

	public TBCardModel queryTbShopModel(TBCardModel tbCard) {
		return this.dao.queryTBCardModel(tbCard);
	}

	public List<TBCardModel> queryTbShopModelList(Map<String, Object> params) {
		return this.dao.queryTBCardModelList(params);
	}

	public int updateTBCard(TBCardModel tbCard) {
		return this.dao.updateTBCard(tbCard);
	}

	public TBCardDAO getDao() {
		return dao;
	}

	public void setDao(TBCardDAO dao) {
		this.dao = dao;
	}
}
