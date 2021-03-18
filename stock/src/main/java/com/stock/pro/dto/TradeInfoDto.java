package com.stock.pro.dto;

import lombok.Data;

@Data
public class TradeInfoDto {
	
	private String stockTitle;
	private String stockCode;
	private String tradeId;
	private String buyingDay;
	private String sellDay;
	private String holdDay;
	private int holdQuantity;
	private int buyPrice;
	private int sellPrice;
	private int proLossPrice;
}
