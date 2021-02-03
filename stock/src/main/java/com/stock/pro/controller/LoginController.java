package com.stock.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	// 로그인 페이지 호출
	@GetMapping(value="/")
	public String loginPage() throws Exception {	
		
		return "login/login_page";
	}
	
	// 회원가입 페이지 호출
	@GetMapping(value="signUp")
	public String signUpPage() throws Exception {	
		
		return "login/signUp_page";
	}
}
