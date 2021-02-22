package com.stock.pro.service;

import com.stock.pro.dto.TradeInfoDto;

public interface TradeService {
	
	// 주식정보저장
	public void tradingInfoSave(TradeInfoDto tradeInfoDto);
	
	
}
