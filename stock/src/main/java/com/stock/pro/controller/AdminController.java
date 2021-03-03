/*
 * File name : AdminController.java
 * Author : swm
 * Date of issue : 2020.10.08
 * Update of revision : 
 */

package com.stock.pro.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stock.pro.dto.AdminDto;
import com.stock.pro.service.AdminServiceImpl;

@Controller
public class AdminController {
	
	@Autowired
	private AdminServiceImpl adminServiceImpl;
	
	// 공지사항 관리 페이지 호출
	@GetMapping(value="notice_management")
	public ModelAndView notice_management() {	
		
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> noticeListMap = null;
		
		try {
			noticeListMap = adminServiceImpl.notice_list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.setViewName("admin/notice_management");		
		mv.addObject("noticeList", noticeListMap.get("noticeList"));
		
		return mv;
	}

	// 공지사항 등록 페이지 호출
	@GetMapping(value="notice_registration")
	public String notice_registration(Model model) {	
		
		return "admin/notice_registration";
	}
	
	// 공지사항 등록 기능
	@PostMapping(value="notice_regist")
	public String notice_regist(AdminDto adminDto) {
		
		adminDto.setNotice_title(adminDto.getNotice_title());
		adminDto.setNotice_contents(adminDto.getNotice_contents());
		adminDto.setUse_yn(adminDto.getUse_yn());
		
		try {
			adminServiceImpl.notice_regist(adminDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:notice_management";
	}
}
