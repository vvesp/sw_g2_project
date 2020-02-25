package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BookVO;
import org.zerock.domain.Criteria;

public interface MainMapper {
		
	public List<BookVO> getList();
	
	public List<BookVO> getListWithPaging(Criteria cri);

	public BookVO read(Long bNum);
		
	public int getTotalCount(Criteria cri);
	
}
