package com.sp.yorizori.festival;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sp.yorizori.common.FileManager;
import com.sp.yorizori.common.dao.CommonDAO;

@Service("festival.festivalService")
public class FestivalServiceImpl implements FestivalService {
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;

	@Override
	public void insertFest(Festival dto, String pathname) throws Exception {
		try {
			int seq = dao.selectOne("festival.seq");
			dto.setNum(seq);
			
			dao.insertData("festival.insertFest", dto);
			
			if (! dto.getSelectFile().isEmpty()) {
				for (MultipartFile mf : dto.getSelectFile()) {
					String fileName = fileManager.doFileUpload(mf, pathname);
					if (fileName == null) {
						continue;
					}
					
					dto.setFileName(fileName);
					
					insertFile(dto);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<Festival> listFest(Map<String, Object> map) {
		List<Festival> list = null;
		
		try {
			list = dao.selectList("festival.listFest", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("festival.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public Festival readFest(int num) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public Festival preReadFest(Map<String, Object> map) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public Festival nextReadFest(Map<String, Object> map) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public void updateFest(Festival dto, String pathname) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteFest(int num, String pathname) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertFile(Festival dto) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Festival> listFile(int num) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public Festival readFile(int fileNum) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public void deleteFile(Map<String, Object> map) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertFestLike(Map<String, Object> map) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteFestLike(Map<String, Object> map) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int festLikeCount(int num) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	@Override
	public boolean userFestLiked(Map<String, Object> map) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public void insertReply(Reply dto) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int replyCount(Map<String, Object> map) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	@Override
	public List<Reply> listReply(Map<String, Object> map) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public void deleteReply(Map<String, Object> map) throws Exception {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Reply> listReplyAnswer(int answer) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public int replyAnswerCount(int answer) {
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
}
