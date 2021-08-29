package com.stock.pro.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class TradeInfoDto {
	
	private String stockTitle;
	private String stockCode;
	private String tradeId;
	private String buyingDay;
	private int buyQuantity;
	private int buyUnitPrice;
	private int buyFees;
	private int buyPrice;
}
