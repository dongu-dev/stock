package com.stock.pro.service;

import com.stock.pro.dto.MemberDto;

public interface MemberService {
	
	// 회원정보 저장
	public void memberAdd(MemberDto memberDto) throws Exception;
	
	// 로그인하기
	public MemberDto memberLogin(MemberDto memberDto) throws Exception;
}
