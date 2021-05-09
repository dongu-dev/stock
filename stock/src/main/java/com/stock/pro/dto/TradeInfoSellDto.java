package com.stock.pro.dto;

import lombok.Data;

@Data
public class TradeInfoSellDto {
	
	private String stockTitle;
	private String stockCode;
	private String tradeId;
	private String sellDay;
	private int sellQuantity;
	private int sellUnitPrice;
	private int sellFees;
	private int sellPrice;
}
