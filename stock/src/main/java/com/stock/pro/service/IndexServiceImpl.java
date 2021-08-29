package com.stock.pro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stock.pro.dto.TotalInfoDto;
import com.stock.pro.mapper.IndexMapper;

@Service
@Transactional
public class IndexServiceImpl implements IndexService{
	
	@Autowired
	private IndexMapper indexMapper;
	
	// 메인 상단 통계 데이터
	@Override
	public TotalInfoDto totalInfo() {
		
		TotalInfoDto totalList = indexMapper.totalInfo();
		
		return totalList;	
	}	
}
