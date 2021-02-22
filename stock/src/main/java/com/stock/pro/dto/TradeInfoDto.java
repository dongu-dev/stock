package com.stock.pro.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class TradeInfoDto {

	private String itemCode;
	private Date buyingDay;
	private Date sellDay;
	private String holdDay;
	private int holdQuantity;
	private int buyPrice;
	private int sellPrice;
	private int proLossPrice;
}
