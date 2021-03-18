/*
 * File name : AdminServiceImpl.java
 * Author : swm
 * Date of issue : 2020.10.08
 * Update of revision : 
 */

package com.stock.pro.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stock.pro.dto.AdminDto;
import com.stock.pro.mapper.AdminMapper;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;
	
	// 공지 리스트
	@Override
	public Map<String, Object> notice_list() throws Exception {
		
		Map<String, Object> noticeListMap = new HashMap<String, Object> ();
		List<AdminDto> noticeList = adminMapper.notice_list();
		
		noticeListMap.put("noticeList", noticeList);
		
		return noticeListMap;
	}
	
	// 공지사항 등록 기능
	@Override
	public void notice_regist(AdminDto adminDto) throws Exception {
		adminMapper.notice_regist(adminDto);
	}
}
