package org.zerock.mapper;

import org.zerock.domain.MemberVO;

public interface MemberMapper {
	
	//가입
	public void memberinsert(MemberVO member);
	
	//탈퇴
	public void memberdrop(MemberVO member);
	
	public void memberupdate(MemberVO member);

}
