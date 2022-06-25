package com.callor.memo.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.callor.memo.model.MemoVO;

public interface MemoService {

	public List<MemoVO> selectAll();

	public List<MemoVO> findByMemoSeq(long m_seq);

	public MemoVO findById(String id);

	public int insert(MemoVO vo);
	
	public String fileUp();

	public int update(MemoVO vo);

	public int delete(String id);

	public void create_memo_table();

	String insertMemoAndFile(MemoVO memoVO, MultipartFile file);

	String fileUp(MultipartFile file) throws Exception;

	String fileUp(MultipartFile file, String upLoadFolder) throws Exception;
}
