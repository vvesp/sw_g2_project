package org.zerock.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mmapper;
	@Setter(onMethod_ = @Autowired)
	private HttpSession session;
	

	@Override
	public void memberinsert(MemberVO member) {
		log.info("memberinsert............." + member);
		mmapper.memberinsert(member);
	}

	@Override
	public boolean memberdrop(String userid) {
		log.info("member delete............." + userid);
		mmapper.memberdrop(userid);
		return mmapper.memberdrop(userid) != null;
	}

	@Override
	public boolean memberupdate(MemberVO member) {
		log.info("modify" + member);
		return mmapper.memberupdate(member) == 1;
	}

	@Override
	public String login(String userid, String pass, RedirectAttributes rttr) {
//		System.out.println("userid service : "+userid);
//		System.out.println("pass service : "+pass);
		MemberVO vo = new MemberVO();
		vo.setUserid(userid);
		vo.setPass(pass);
		MemberVO member = mmapper.login(vo);
			if(member==null) {
				log.info("login fail");
				return "redirect:/login/customLogin";
			}else {
				session.setAttribute("vo", member);
				log.info("login successed");
			return "home";
		}
		
	}

}
