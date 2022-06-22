package com.sp.yorizori.mypage;

import java.util.List;
import java.util.Map;

public interface MypageService {
	public void insertMemberImage(Mypage dto, String pathname) throws Exception;
	public void updateMemberImage(Mypage dto, String pathname) throws Exception;
	public void deleteMemberImage(String userId, String pathname) throws Exception;
	
	public Mypage readMypage(String userId);
	public List<Mypage> listFollower(String userId);
	public List<Mypage> listFollowing(String userId);
	
	public int dataCountMyrecipe(String userId);
	public List<Mypage> listMyrecipe(Map<String, Object> map);
	
	public int dataCountLike(String userId);
	public List<Mypage> listLike(Map<String, Object> map);
	
	public int dataCountWish(String userId);
	public List<Mypage> listWish(Map<String, Object> map);
	
	public int dataCountFavorite(String userId);
	public List<Mypage> listFavorite(Map<String, Object> map);
	
	public int dataCountContest(String userId);
	public List<MyEvent> listContest(Map<String, Object> map);
	
	public int dataCountUsable(String userId);
	public List<MyEvent> listUsable(Map<String, Object> map);
	public int dataCountUseless(String userId);
	public List<MyEvent> listUseless(Map<String, Object> map);
	
	public int dataCountQna(String userId);
	public List<MyQna> listQna(Map<String, Object> map);
	public boolean answerState(int num);
}
