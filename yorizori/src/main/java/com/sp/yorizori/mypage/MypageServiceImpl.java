package com.sp.yorizori.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.yorizori.common.FileManager;
import com.sp.yorizori.common.dao.CommonDAO;

@Service("mypage.mypageService")
public class MypageServiceImpl implements MypageService {
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	@Override
	public void insertMemberImage(Mypage dto, String pathname) throws Exception {
		try {
			String memberImageName = fileManager.doFileUpload(dto.getSelectFile(), pathname);
			if (memberImageName != null) {
				dto.setMemberImageName(memberImageName);
				dao.insertData("mypage.insertMemberImage", dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void updateMemberImage(Mypage dto, String pathname) throws Exception {
		try {
			String memberImageName = fileManager.doFileUpload(dto.getSelectFile(), pathname);
			
			if (memberImageName != null) {
				if (dto.getMemberImageName().length() != 0) {
					fileManager.doFileDelete(dto.getMemberImageName(), pathname);
				}
				
				dto.setMemberImageName(memberImageName);
			}
			dao.updateData("mypage.updateMemberImage", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	} 

	@Override
	public void deleteMemberImage(String userId, String pathname) throws Exception {
		try {
			if (pathname != null) {
				fileManager.doFileDelete(pathname);
			}
			
			dao.deleteData("mypage.deleteMemberImage", userId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public Mypage readMypage(String userId) {
		Mypage dto = null;
		
		try {
			dto = dao.selectOne("mypage.readMypage", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public List<Mypage> listFollower(String userId) {
		List<Mypage> list = null;
		
		try {
			list = dao.selectList("mypage.listFollower", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Mypage> listFollowing(String userId) {
		List<Mypage> list = null;
		
		try {
			list = dao.selectList("mypage.listFollowing", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<Mypage> listMyrecipe(String userId) {
		List<Mypage> list = null;
		
		try {
			list = dao.selectList("mypage.listMyrecipe", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Mypage> listLike(String userId) {
		List<Mypage> list = null;
		
		try {
			list = dao.selectList("mypage.listLike", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Mypage> listWish(String userId) {
		List<Mypage> list = null;
		
		try {
			list = dao.selectList("mypage.listWish", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Mypage> listFavorite(String userId) {
		List<Mypage> list = null;
		
		try {
			list = dao.selectList("mypage.listFavorite", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int dataCountMyrecipe(String userId) {
		int result = 0;
		
		try {
			result = dao.selectOne("mypage.dataCountMyrecipe", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int dataCountLike(String userId) {
		int result = 0;
		
		try {
			result = dao.selectOne("mypage.dataCountLike", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int dataCountWish(String userId) {
		int result = 0;
		
		try {
			result = dao.selectOne("mypage.dataCountWish", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int dataCountFavorite(String userId) {
		int result = 0;
		
		try {
			result = dao.selectOne("mypage.dataCountFavorite", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
