package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
//import org.zerock.domain.Criteria;

public interface BoardMapper {

	public List<BoardVO> getList();	
	
	public void insert(BoardVO board);
	
	public void insertSelectKey(BoardVO board);
	
	public BoardVO read(Long bno);
	
	public int delete(long bno);
	
	public int update(BoardVO board);
	
//	public int getTotalCount(Criteria cri);

//	public List<BoardVO> getListWithPaging(Criteria cri);

}
