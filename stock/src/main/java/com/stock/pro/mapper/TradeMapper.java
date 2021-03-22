package com.stock.pro.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.stock.pro.dto.TradeInfoDto;

@Repository
@Mapper
public interface TradeMapper {
	
	int tradeInfoSave(TradeInfoDto tradeInfoDto);
	
	String tradeGetCode(String stockName);
}
