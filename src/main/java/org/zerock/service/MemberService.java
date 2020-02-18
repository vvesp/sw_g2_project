package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {
	
	public void memberinsert(MemberVO member);
	
	public void memberdrop(MemberVO member);

	public void memberupdate(MemberVO member);
}
