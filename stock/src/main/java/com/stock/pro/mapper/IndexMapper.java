package com.stock.pro.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.stock.pro.dto.TotalInfoDto;

@Repository
@Mapper
public interface IndexMapper {
	
	public TotalInfoDto totalInfo();
}
