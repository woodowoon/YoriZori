package com.sp.yorizori.recipe;

import java.util.List;
import java.util.Map;

public interface RecipeService {
	// 레시피 등록
	public void insertRecipe(Recipe dto, String pathname) throws Exception;
	
	// 레시피 리스트
	public int dataCount(Map<String, Object> map);
	public List<Recipe> listRecipeFeed(Map<String, Object> map);
	public boolean isFollow(Map<String, Object> map);
	
	// 카테고리 리스트
	public List<Recipe> listcaseCategory(Map<String, Object> map);
	public List<Recipe> listcountryCategory(Map<String, Object> map);
	public List<Recipe> listingredient(Map<String, Object> map);
	public List<Recipe> listingredient(int ingredientCode);
}
