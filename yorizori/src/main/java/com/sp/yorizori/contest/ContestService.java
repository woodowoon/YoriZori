package com.sp.yorizori.contest;

import java.util.List;
import java.util.Map;

public interface ContestService {

	public List<Contest> listContest(Map<String, Object> map);
	public int dataCount(Map<String, Object> map);
	public Contest readContest(int contestNum);

	public List<Contest> listFile(int contestNum);
	public Contest readFile(int fileNum);
	
	public void insertContestLike(Map<String, Object> map) throws Exception;
	public void deleteContestLike(Map<String, Object> map) throws Exception;
	public int contestLikeCount(int partNum);
	public boolean userContestLiked(Map<String, Object> map);
}
