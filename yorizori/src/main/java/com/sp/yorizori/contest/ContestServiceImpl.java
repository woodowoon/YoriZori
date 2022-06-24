package com.sp.yorizori.contest;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.yorizori.common.dao.CommonDAO;

@Service("contest.contestService")
public class ContestServiceImpl implements ContestService {
	@Autowired
	private CommonDAO dao;
		
	@Override
	public List<Contest> listContest(Map<String, Object> map) {
		List<Contest> list = null;
		
		try {
			list = dao.selectList("contest.listContest", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("contest.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public Contest readContest(int contestNum) {
		Contest dto = null;
		
		try {
			dto = dao.selectOne("contest.readContest", contestNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	@Override
	public List<Contest> listFile(int contestNum) {
		List<Contest> listFile = null;
		
		try {
			listFile = dao.selectList("contest.listFile", contestNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listFile;
	}
	
	@Override
	public Contest readFile(int fileNum) {
		Contest dto = null;
		
		try {
			dto = dao.selectOne("contest.readFile", fileNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public void insertContestLike(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("contest.insertContestLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void deleteContestLike(Map<String, Object> map) throws Exception {
		try {
			dao.deleteData("contest.deleteContestLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public int contestLikeCount(int partNum) {
		int result = 0;
		
		try {
			result = dao.selectOne("contest.contestLikeCount", partNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public boolean userContestLiked(Map<String, Object> map) {
		boolean result = false;
		
		try {
			int cnt = dao.selectOne("contest.userContestLiked", map);
			if(cnt != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}


}
