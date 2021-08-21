/*
 * File name : AdminMapper.java
 * Author : swm
 * Date of issue : 2020.10.08
 * Update of revision : 
 */

package com.stock.pro.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.stock.pro.dto.AdminDto;

@Repository
@Mapper
public interface AdminMapper {
	
	// 공지사항 등록 기능
	void notice_regist(AdminDto adminDto);
}
