package com.stock.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	// 메인페이지 호출
	@GetMapping(value="/index")
	public String index() {	
		
		return "index";
	}
}
