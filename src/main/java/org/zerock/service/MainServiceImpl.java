package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BookVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.MainMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MainServiceImpl implements MainService {
	
	private MainMapper mapper;
	

	@Override
	public BookVO get(Long bnum) {
		
		log.info("get............."+bnum);
		
		return mapper.read(bnum);
	}
	

	@Override
	public List<BookVO> getList(Criteria cri) {
		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	}	
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get totalcount");
		return mapper.getTotalCount(cri);
	}
}
