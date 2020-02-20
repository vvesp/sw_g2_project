package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {
	
	public void memberinsert(MemberVO member);
	
	public void memberdrop(MemberVO member);

	public boolean memberupdate(MemberVO member);
	
	public boolean checkpw(String pass);
}
