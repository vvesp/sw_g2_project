package org.zerock.mapper;

import java.util.HashMap;

import org.zerock.domain.MemberVO;

public interface MemberMapper {
	
	//가입
	public void memberinsert(MemberVO member);
	
	//탈퇴
	public void memberdrop(MemberVO member);
	
	public int memberupdate(MemberVO member);
	
	public boolean checkpw(String pass);

}
