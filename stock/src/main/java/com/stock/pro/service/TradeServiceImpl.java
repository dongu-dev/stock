package com.stock.pro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.stock.pro.dto.TradeInfoDto;
import com.stock.pro.dto.TradeInfoSellDto;
import com.stock.pro.mapper.TradeMapper;

@Service
public class TradeServiceImpl implements TradeService {
	
	@Autowired
	TradeMapper tradeMapper;
	
	// 주식정보저장
	@Override
	public int tradeInfoBuySave(TradeInfoDto tradeInfoDto) {
		
		int result = tradeMapper.tradeInfoBuySave(tradeInfoDto);
		
		return result;
	}
	
	@Override
	public int tradeInfoSellSave(TradeInfoSellDto tradeInfoSellDto) {
		
		int result = tradeMapper.tradeInfoSellSave(tradeInfoSellDto);
		
		return result;
	}
	
	// 종목코드 가져오기
	@Override
	public String tradeGetCode(String stockName) {
		
		String tradeCode = tradeMapper.tradeGetCode(stockName);
		
		return tradeCode;
	}
}
