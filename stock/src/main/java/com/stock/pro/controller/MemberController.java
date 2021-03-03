package com.stock.pro.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.stock.pro.dto.MemberDto;
import com.stock.pro.service.MemberServiceImpl;

@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl memberServiceImpl;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	// 로그인 페이지 호출
	@GetMapping(value="/")
	public String loginPage() {	
		
		return "member/login_page";
	}
	
	// 회원가입 페이지 호출
	@GetMapping(value="signUp")
	public String signUpPage() {	
		
		return "member/signUp_page";
	}
	
	// 아이디 찾기 페이지 호출
	@GetMapping(value="memberInfoFind")
	public String memberInfoFind() {	
		
		return "member/memberInfoFind";
	}
	
	// 비밀번호 찾기 페이지 호출
	@GetMapping(value="memberPwFind")
	public String memberPwFind() {	
		
		return "member/memberPwFind";
	}
	
	// 회원정보 저장
	@ResponseBody
	@PostMapping(value="memberAdd")
	public String memberAdd(MemberDto memberDto) {	
		
		if(memberDto != null) {
			// 비밀번호 단방향 암호화
			String encryptPw = passwordEncoder.encode(memberDto.getMemberPw());
			
			memberDto.setMemberId(memberDto.getMemberId());
			memberDto.setMemberPw(encryptPw);
			memberDto.setMemberEmail(memberDto.getMemberEmail());
			memberDto.setMemberName(memberDto.getMemberName());
			
			try {
				memberServiceImpl.memberAdd(memberDto);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return "success";
		} else {
			return "fail";
		}
	}
	
	// 로그인하기
	@ResponseBody
	@PostMapping(value="memberLogin")
	public String memberLogin(MemberDto memberDto, HttpSession session) {
		
		try {
			MemberDto memberInfo =  memberServiceImpl.memberLogin(memberDto);
			
			// 받은 비밀번호와 암호화 비밀번호 비교
			boolean pwdMatch = passwordEncoder.matches(memberDto.getMemberPw(), memberInfo.getMemberPw());
			
			if(pwdMatch) {
				session.setAttribute("memberId", memberInfo.getMemberId());
				session.setAttribute("memberLevel", memberInfo.getMemberlevel());
				
				return "success";
			}
		} catch(NullPointerException e) {
			logger.info("값이 존재하지 않음");
		} catch(Exception e) {
			logger.info(e.getMessage());
		}
		return "false";
	}
	
	
	@GetMapping(value="memberLogout")
	public String memberLogout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
}
