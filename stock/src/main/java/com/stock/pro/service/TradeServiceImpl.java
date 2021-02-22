package com.stock.pro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.stock.pro.dto.TradeInfoDto;
import com.stock.pro.mapper.TradeMapper;

@Service
public class TradeServiceImpl {
	
	@Autowired
	TradeMapper tradeMapper;
	
	// 주식정보저장
	public void tradeInfoSave(TradeInfoDto tradeInfoDto) throws Exception {
		tradeMapper.tradeInfoSave(tradeInfoDto);
	}
}
