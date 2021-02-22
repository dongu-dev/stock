package com.stock.pro.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stock.pro.dto.MemberDto;
import com.stock.pro.mapper.MemberMapper;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	public void memberAdd(MemberDto memberDto) throws Exception {
		memberMapper.memberAdd(memberDto);
	}
	
	public MemberDto memberLogin(MemberDto memberDto) throws Exception {
		
		MemberDto memberList = memberMapper.memberLogin(memberDto);
		
		return memberList;
	}
}
