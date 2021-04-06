package com.stock.pro.service;

import com.stock.pro.dto.TradeInfoDto;

public interface TradeService {
	
	// 주식정보저장(매수)
	public int tradeInfoBuySave(TradeInfoDto tradeInfoDto);
	
	// 종목코드 가져오기
	public String tradeGetCode(String stockName);

	
}
