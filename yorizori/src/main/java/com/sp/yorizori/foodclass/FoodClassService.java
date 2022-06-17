package com.sp.yorizori.foodclass;

import java.util.List;
import java.util.Map;

public interface FoodClassService {
	public void insertClass(FoodClass dto, String pathname) throws Exception;
	public List<FoodClass> listClass(Map<String, Object> map);
	public int dataCount(Map<String, Object> map);
	public List<FoodClass> classCategory(Map<String, Object> map);
	
	public void insertFile(FoodClass dto) throws Exception;
	public List<FoodClass> listFile(int num);
	public FoodClass searchFile(int num);
	public FoodClass readFile(int fileNum);
	public void deleteFile(Map<String, Object> map) throws Exception;
	
	public void insertClassLike(Map<String, Object> map) throws Exception;
	public void deleteClassLike(Map<String, Object> map) throws Exception;
	public int classLikeCount(int num);
	public boolean userClassLiked(Map<String, Object> map);
}
