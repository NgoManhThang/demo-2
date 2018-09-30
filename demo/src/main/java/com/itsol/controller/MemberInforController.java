package com.itsol.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itsol.domain.MemberInfor;
import com.itsol.domain.SearchDto;

@Controller
public class MemberInforController {
	
	@GetMapping("/list-member")
	private String getListMemberInforGet(Model model) {
		MemberInfor memberInfor = new MemberInfor();
		SearchDto searchDto = new SearchDto();
		searchDto.setPage(1);
		searchDto.setTotalPage(5);
		model.addAttribute("memberInfor", memberInfor);
		model.addAttribute("searchDto", searchDto);
		
		return "employee";
	}
	
	@PostMapping("/list-member-1")
	private String getListMemberInforGet(Model model, @RequestParam Integer page) {
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + page);
		MemberInfor memberInfor = new MemberInfor();
		SearchDto searchDto = new SearchDto();
		searchDto.setPage(2);
		searchDto.setTotalPage(5);
		model.addAttribute("memberInfor", memberInfor);
		model.addAttribute("searchDto", searchDto);
		
		return "employee";
	}
}
