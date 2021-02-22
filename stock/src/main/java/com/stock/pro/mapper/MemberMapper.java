package com.stock.pro.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.stock.pro.dto.MemberDto;

@Repository
@Mapper
public interface MemberMapper {
	
	public void memberAdd(MemberDto memberDto) throws Exception;
	
	public MemberDto memberLogin(MemberDto memberDto) throws Exception;
}
