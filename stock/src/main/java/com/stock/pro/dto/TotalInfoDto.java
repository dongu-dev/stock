package com.stock.pro.dto;

import lombok.Data;

// 메인 상단 통계 DTO
@Data
public class TotalInfoDto {

	private int count;
	private String buyingDay;
	private int totalPrice;
	private int investAmount;
}
