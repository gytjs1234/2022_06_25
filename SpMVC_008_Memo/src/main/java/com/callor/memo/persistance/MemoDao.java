package com.callor.memo.persistance;

import java.util.List;

import com.callor.memo.model.MemoVO;

public interface MemoDao {
	
	public List<MemoVO> selectAll();
	public List<MemoVO>findByMemoSeq(long m_seq);

	public MemoVO findById(String id);

	public int insert(MemoVO vo);

	public int update(MemoVO vo);

	public int delete(String id);
	public void create_memo_table();

	public List<MemoVO> findByauthor(String m_author);

	public List<MemoVO> findBydate(String m_date);

	public List<MemoVO> findBymemo(String m_memo);

	public List<MemoVO> findByimage(String m_image);

}
