/*
 * File name : AdminController.java
 * Author : swm
 * Date of issue : 2020.10.08
 * Update of revision : 
 */

package com.stock.pro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stock.pro.entity.NoticeInfo;
import com.stock.pro.service.AdminServiceImpl;

@Controller
public class AdminController {
	
	@Autowired
	private AdminServiceImpl adminServiceImpl;
	
	// 공지사항 관리 페이지 호출(JPA)
	@GetMapping(value="notice_management")
	public ModelAndView notice_management() {	
		
		ModelAndView mv = new ModelAndView();
		
		List<NoticeInfo> noticeInfo = adminServiceImpl.notice_list();
		
		mv.setViewName("admin/notice_management");
		mv.addObject("noticeInfo", noticeInfo);
		
		return mv;
	}

	// 공지사항 등록 페이지 호출
	@GetMapping(value="notice_registration")
	public String notice_registration(Model model) {	
		
		return "admin/notice_registration";
	}
	
	// 공지사항 등록 기능
	@PostMapping(value="notice_regist")
	public String notice_regist(NoticeInfo noticeInfo) {
		
		try {
			
			noticeInfo.setNotice_title(noticeInfo.getNotice_title());
			noticeInfo.setNotice_contents(noticeInfo.getNotice_contents());
			noticeInfo.setUse_yn(noticeInfo.getUse_yn());
			
			adminServiceImpl.notice_regist(noticeInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:notice_management";
	}
}
