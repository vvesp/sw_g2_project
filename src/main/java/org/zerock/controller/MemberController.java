package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;
import org.zerock.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class MemberController {
	
	private MemberService mservice;
	
	//Mapper에서 가져온 register(MemberVO member);
	//페이지로 이동, register.jsp로 이동
	@GetMapping("/member")
	public void memberinsert(MemberVO member) {
		
	}
	
	//Service에서 가져온 register(MemberVO member);
	@PostMapping
	public String memberinsert(MemberVO member, RedirectAttributes rttr) {
		log.info(member); mservice.memberinsert(member);
		rttr.addFlashAttribute("result", member.getMid());
		return "redirect:/board/member";
		}
	
	/*
	 * @RequestMapping(value = "/register", method= {RequestMethod.PUT,
	 * RequestMethod.POST}) public void register(HttpServletRequest req) { MemberVO
	 * member = new MemberVO(); member.setMname(req.getParameter("mname"));
	 * 
	 * service.register(member); System.out.println("Complete"); }
	 */
	
	@RequestMapping("/unregister")
	public String memberdrop(@RequestParam String userid, @RequestParam String pass) {
//		boolean result = mservice.
		return "redirect:/board/member";
	}

}
