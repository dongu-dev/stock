package com.stock.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {
	
	// 공지사항 관리
	@GetMapping(value="notice_management")
	public String notice_management() {	
		
		return "admin/notice_management";
	}

	// 공지사항 등록
	@GetMapping(value="notice_registration")
	public String notice_registration() {	
		
		return "admin/notice_registration";
	}
	
	// 공지 삽입
	@PostMapping(value="notice_insert")
	public void notice_insert() {
		
	}
}
