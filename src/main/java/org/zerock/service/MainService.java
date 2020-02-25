package org.zerock.service;

import java.util.List;

import org.zerock.domain.BookVO;
import org.zerock.domain.Criteria;

public interface MainService {

	public BookVO get(Long bnum);

	public List<BookVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
}
