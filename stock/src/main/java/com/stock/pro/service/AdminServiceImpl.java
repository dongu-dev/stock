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
import com.stock.pro.entity.NoticeInfo;
import com.stock.pro.mapper.AdminMapper;
import com.stock.pro.repository.NoticeRepository;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private NoticeRepository noticeRepository;
	
	// 공지 리스트
	@Override
	public List<NoticeInfo> notice_list() {
		
		List<NoticeInfo> noticeInfo = noticeRepository.findAll();
		
		return noticeInfo;	
	}
	
	// 공지사항 등록 기능
	@Override
	public void notice_regist(AdminDto adminDto) throws Exception {
		adminMapper.notice_regist(adminDto);
	}
}
