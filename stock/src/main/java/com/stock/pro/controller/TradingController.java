package com.stock.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TradingController {
	
	// 매매일지 작성
	@GetMapping(value="trading_log")
	public String trading_log() {	
		
		return "trade/trading_log";
	}
	
	// 매매일지 문의
	@GetMapping(value="trading_question")
	public String trading_question() {	
		
		return "trade/trading_question";
	}
	
	// 매매일지 공지사항
	@GetMapping(value="trading_notice")
	public String trading_notice() {	
			
		return "trade/trading_notice";
	}
}