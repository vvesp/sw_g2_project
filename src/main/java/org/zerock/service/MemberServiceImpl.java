package org.zerock.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mmapper;
	

	@Override
	public void memberinsert(MemberVO member) {
		log.info("memberinsert............." + member);
		
		mmapper.memberinsert(member);
		
	}


	@Override
	public void memberdrop(MemberVO member) {
		log.info("member delete............." + member);
		
		mmapper.memberdrop(member);
		
	}


	@Override
	public boolean memberupdate(MemberVO member) {
		log.info("modify" + member);
		
		return mmapper.memberupdate(member) == 1;
		
	}


	@Override
	public boolean checkpw(String pass) {
		
		log.info("password check"+ pass);
		return false;
			
	}
	

}
