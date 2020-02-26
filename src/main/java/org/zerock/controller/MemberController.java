package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	
	private MemberService mservice;
	
	
	  //Mapper에서 가져온 register(MemberVO member); //페이지로 이동, register.jsp로 이동
	  
	@GetMapping("/member")
	public void memberinsert(MemberVO member) {
	  
	}
	 
	
	//Service에서 가져온 register(MemberVO member);
	@PostMapping("/member")
	public String memberinsert(MemberVO member, RedirectAttributes rttr) {
		log.info(member);
		mservice.memberinsert(member);
		rttr.addFlashAttribute("result", member.getMid());
		return "redirect:/member/member";
	}
	
	@GetMapping("/mypage")
	public void mypage(String pass) {

	}
	
	
}
