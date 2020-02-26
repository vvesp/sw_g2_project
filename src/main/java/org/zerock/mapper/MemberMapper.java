package org.zerock.mapper;

import java.util.HashMap;
import java.util.List;

import org.zerock.domain.MemberVO;

public interface MemberMapper {
	
	//가입
	public void memberinsert(MemberVO member);
	
	public String memberdrop(String userid);
	
	public int memberupdate(MemberVO member);
	
	public boolean checkpw(String pass);
	
	public MemberVO memberinfo(String userid);
	
	public MemberVO login(MemberVO member);

}
