package com.stock.pro.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.stock.pro.dto.TradeInfoDto;
import com.stock.pro.service.TradeServiceImpl;

@Controller
public class TradingController {
	
	@Autowired
	private TradeServiceImpl tradeServiceImpl;
	
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
	
	// 주식정보값 등록
	@ResponseBody
	@PostMapping(value="tradeInfoSave")
	public String tradeInfoSave(TradeInfoDto tradeInfoDto, HttpSession session) {	
		
		String tradeId = (String) session.getAttribute("memberId");
		tradeInfoDto.setTradeId(tradeId);
		
		int a = tradeServiceImpl.tradeInfoSave(tradeInfoDto);
			
		if(a == 1) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	// 종목코드 가져오기
	@ResponseBody
	@PostMapping(value="tradeGetCode")
	public String tradeGetCode(String stockName) {

		System.out.println("stockName 값 => " + stockName);
		
		String stockCode = tradeServiceImpl.tradeGetCode(stockName);
		
		return stockCode;
	}
}	