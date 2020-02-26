package org.zerock.service;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;

public interface MemberService {
	
	public void memberinsert(MemberVO member);
	
	public boolean memberdrop(String userid);

	public boolean memberupdate(MemberVO member);
	
	public boolean checkpw(String pass);

	public String login(String userid, String pass, RedirectAttributes rttr);
	
}
