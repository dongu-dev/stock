package com.stock.pro.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.stock.pro.dto.TradeInfoDto;
import com.stock.pro.dto.TradeInfoSellDto;

@Repository
@Mapper
public interface TradeMapper {
	
	int tradeInfoBuySave(TradeInfoDto tradeInfoDto);
	
	int tradeInfoSellSave(TradeInfoSellDto tradeInfoSellDto);
	
	String tradeGetCode(String stockName);
}
