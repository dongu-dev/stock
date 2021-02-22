package com.stock.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stock.pro.dto.TradeInfoDto;

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
	
	// 주식정보값 등록
	
	@ResponseBody
	@PostMapping(value="rest/tradeInfoSave")
	public String tradingInfoSave(TradeInfoDto tradeInfoDto) {	
		
		tradeInfoDto.setItemCode(tradeInfoDto.getItemCode());
		tradeInfoDto.setBuyingDay(tradeInfoDto.getBuyingDay());
		tradeInfoDto.setSellDay(tradeInfoDto.getSellDay());
		tradeInfoDto.setHoldDay(tradeInfoDto.getHoldDay());
		tradeInfoDto.setHoldQuantity(tradeInfoDto.getHoldQuantity());
		tradeInfoDto.setBuyPrice(tradeInfoDto.getBuyPrice());
		tradeInfoDto.setSellPrice(tradeInfoDto.getSellPrice());
		tradeInfoDto.setProLossPrice(tradeInfoDto.getProLossPrice());
		
		return "success";
	}
}