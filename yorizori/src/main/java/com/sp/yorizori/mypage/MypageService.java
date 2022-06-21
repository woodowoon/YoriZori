package com.sp.yorizori.mypage;

import java.util.List;

public interface MypageService {
	public void insertMemberImage(Mypage dto, String pathname) throws Exception;
	public void updateMemberImage(Mypage dto, String pathname) throws Exception;
	public void deleteMemberImage(String userId, String pathname) throws Exception;
	public Mypage readMypage(String userId);
	public List<Mypage> listFollower(String userId);
	public List<Mypage> listFollowing(String userId);
	public int dataCountMyrecipe(String userId);
	public List<Mypage> listMyrecipe(String userId);
	public int dataCountLike(String userId);
	public List<Mypage> listLike(String userId);
	public int dataCountWish(String userId);
	public List<Mypage> listWish(String userId);
	public int dataCountFavorite(String userId);
	public List<Mypage> listFavorite(String userId);
}
