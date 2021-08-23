/*
 * File name : AdminServiceImpl.java
 * Author : swm
 * Date of issue : 2020.10.08
 * Update of revision : 
 */

package com.stock.pro.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stock.pro.entity.NoticeInfo;
import com.stock.pro.repository.NoticeRepository;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private NoticeRepository noticeRepository;
	
	// 공지 리스트
	@Override
	public List<NoticeInfo> notice_list() {
		
		List<NoticeInfo> noticeInfo = noticeRepository.findAll();
		
		return noticeInfo;	
	}
	
	// 공지사항 등록 기능
	@Test
	@Override
	public void notice_regist(NoticeInfo noticeInfo) throws Exception {
		noticeRepository.save(noticeInfo);
	}
	
}
