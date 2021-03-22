package com.stock.pro.dto;

import lombok.Data;

@Data
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
