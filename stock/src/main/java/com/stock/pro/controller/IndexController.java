package com.stock.pro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stock.pro.dto.TotalInfoDto;
import com.stock.pro.service.IndexServiceImpl;

@Controller
public class IndexController {
	
	@Autowired
	private IndexServiceImpl indexServiceImpl;
	
	// 메인페이지 호출
	@GetMapping(value="/index")
	public ModelAndView index() {	
		
		ModelAndView mv = new ModelAndView();
		
		TotalInfoDto totalList = indexServiceImpl.totalInfo();
		
		mv.setViewName("index");
		mv.addObject("totalList", totalList);
		
		return mv;
	}
}
