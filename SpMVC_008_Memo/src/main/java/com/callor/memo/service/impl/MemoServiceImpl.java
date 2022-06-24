package com.callor.memo.service.impl;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.callor.memo.model.MemoVO;
import com.callor.memo.persistance.MemoDao;
import com.callor.memo.service.MemoService;

@Service
public class MemoServiceImpl implements MemoService {
	private final ResourceLoader resLoader;

	   private final String upLoadFolder;

	   public MemoServiceImpl(ResourceLoader resLoader, String upLoadFolder) {
	      this.resLoader = resLoader;
	      this.upLoadFolder = upLoadFolder;
	   }

	@Autowired
	private MemoDao memoDao;

	@Autowired
	public void create_table() {

		try {
			memoDao.create_memo_table();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public String fileUp(MultipartFile file) throws Exception {

		if (file == null) {
			return null;
		}

		File dir = new File(upLoadFolder);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		String fileName = file.getOriginalFilename();

		/*
		 * 파일 업로드를 할때 원래 파일이름을 그대로 저장하면
		 * 해킹등의 위협에 노출될수 있다
		 * 그래서 파일이름 앞에 UUID 문자열을 첨부하여 파일을 저장하고
		 * 실제 사용자들에게 보여줄때는 원래 이름을 보여주는 식으로 
		 * 코드를 작성해야 한다.
		 */
		// UUID 문자열 생성
		String strUUID = UUID.randomUUID().toString();

		fileName = String.format("%s-%s", strUUID, fileName);

		File upLoadFile = new File(upLoadFolder, fileName);
		file.transferTo(upLoadFile);
		return fileName;

	}

	@Override
	public List<MemoVO> selectAll() {
		List<MemoVO> memo = memoDao.selectAll();
		return memo;
	}

	@Override
	public MemoVO findById(String id) {
		MemoVO memoVO = memoDao.findById(id);
		return memoVO;
	}

	@Override
	public int insert(MemoVO vo) {
		int count = memoDao.insert(vo);
		return count;
	}

	@Override
	public int update(MemoVO vo) {
		memoDao.update(vo);
		return 0;
	}

	@Override
	public int delete(String id) {
		memoDao.delete(id);
		return 0;
	}

	@Override
	public List<MemoVO> findByauthor(String m_date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemoVO> findBydate(String m_time) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemoVO> findBymemo(String m_memo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemoVO> findByimage(String m_image) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemoVO> findByMemoSeq(long m_seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String insertMemoAndFile(MemoVO memoVO, MultipartFile file) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create_memo_table() {
		// TODO Auto-generated method stub

	}

	

	@Override
	public String fileUp(MultipartFile file, String upLoadFolder) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String fileUp() {
		// TODO Auto-generated method stub
		return null;
	}

}
