package com.sp.yorizori.foodclass;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sp.yorizori.common.FileManager;
import com.sp.yorizori.common.dao.CommonDAO;

@Service("foodClass.foodClassService")
public class FoodClassServiceImpl implements FoodClassService {
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	@Override
	public void insertClass(FoodClass dto, String pathname) throws Exception {
		try {
			int seq = dao.selectOne("foodClass.classSeq");
			dto.setClassCode(seq);
			
			dao.insertData("foodClass.insertFile", dto);
			
			if(! dto.getSelectFile().isEmpty()) {
				for(MultipartFile mf : dto.getSelectFile()) {
					String fileName = fileManager.doFileUpload(mf, pathname);
					if(fileName == null) {
						continue;
					}
				}
			}
			
			dao.insertData("foodClass.insertClass", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public List<FoodClass> listClass(Map<String, Object> map) {
		List<FoodClass> list = null;
		
		try {
			list = dao.selectList("foodClass.listClass", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("foodClass.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public void insertFile(FoodClass dto) throws Exception {
		try {
			dao.insertData("foodClass.insertFile", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public List<FoodClass> listFile(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FoodClass searchFile(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FoodClass readFile(int fileNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteFile(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertClassLike(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteClassLike(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int classLikeCount(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean userClassLiked(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<FoodClass> classCategory(Map<String, Object> map) {
		List<FoodClass> list = null;
		
		try {
			list = dao.selectList("foodClass.classCategory", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
