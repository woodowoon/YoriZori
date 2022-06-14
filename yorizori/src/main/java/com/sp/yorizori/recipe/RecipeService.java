package com.sp.yorizori.recipe;

import java.util.List;
import java.util.Map;

public interface RecipeService {
	public void insertRecipe(Recipe dto, String pathname) throws Exception;
	
	// 카테고리 리스트
	public List<Recipe> listcaseCategory(Map<String, Object> map);
	public List<Recipe> listcountryCategory(Map<String, Object> map);
	public List<Recipe> listingredient(Map<String, Object> map);
	public List<Recipe> listingredient(int ingredientCode);
}
