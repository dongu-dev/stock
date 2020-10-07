package com.stock.pro.dto;

import lombok.Data;

@Data
public class AdminDto {
	
	public String notice_title;
	public String notice_contents;
	public int select_count;
	public char use_yn;
}
