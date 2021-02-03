/*
 * File name : AdminDto.java
 * Author : swm
 * Date of issue : 2020.10.08
 * Update of revision : 
 */

package com.stock.pro.dto;

import lombok.Data;

@Data
public class AdminDto {
	
	private String notice_title;
	private String notice_contents;
	private int select_count;
	private char use_yn;
	private String regist_date;
}