package com.stock.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TradingController {
	
	@GetMapping(value="trading_log")
	public String trading_log() {	
		
		return "trade/trading_log";
	}
	
	@GetMapping(value="test")
	public String test() {	
		
		return "trade/trading_question";
	}
}
