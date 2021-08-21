/*
 * File name : AdminService.java
 * Author : swm
 * Date of issue : 2020.10.08
 * Update of revision : 
 */

package com.stock.pro.service;

import java.util.List;
import java.util.Map;
import com.stock.pro.dto.AdminDto;
import com.stock.pro.entity.NoticeInfo;

public interface AdminService {
	
	// 공지사항 리스트 호출
	public List<NoticeInfo> notice_list() throws Exception;
	
	// 공지사항 등록 기능
	public void notice_regist(AdminDto adminDto) throws Exception;
}
